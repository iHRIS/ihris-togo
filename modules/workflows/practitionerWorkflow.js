const winston = require('winston')
const ihrissmartrequire = require("ihrissmartrequire")
const fhirQuestionnaire = ihrissmartrequire('modules/fhir/fhirQuestionnaire')
const moment = require("moment")
const fhirAxios = require("../../../modules/fhir/fhirAxios")

const practitionerWorkflow = {
  process: ( req ) => {
    return new Promise( (resolve, reject) => {
      fhirQuestionnaire.processQuestionnaire( req.body ).then(async(bundle) => {
        let practitioner = bundle.entry.find((entry) => {
          return entry.resource.resourceType === "Practitioner"
        })
        let completeness = bundle.entry.find((entry) => {
          return entry.resource.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/data-completeness-profile")
        })
        let agentstatus = bundle.entry.find((entry) => {
          return entry.resource.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/agent-status-profile")
        })
        let refIndex = completeness.resource.extension.findIndex((ext) => {
          return ext.url === "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference"
        })
        if(refIndex === -1) {
          let index = completeness.resource.extension.length
          completeness.resource.extension[index] = {
            url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference",
            valueReference: {
              reference: ""
            }
          }
          if(practitioner.resource.id) {
            completeness.resource.extension[index].valueReference.reference = "Practioner/" + practitioner.resource.id
          } else {
            completeness.resource.extension[index].valueReference.reference = practitioner.fullUrl
          }
        }
        refIndex = agentstatus.resource.extension.findIndex((ext) => {
          return ext.url === "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference"
        })
        if(refIndex === -1) {
          let index = agentstatus.resource.extension.length
          agentstatus.resource.extension[index] = {
            url: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference",
            valueReference: {
              reference: ""
            }
          }
          if(practitioner.resource.id) {
            agentstatus.resource.extension[index].valueReference.reference = "Practioner/" + practitioner.resource.id
          } else {
            agentstatus.resource.extension[index].valueReference.reference = practitioner.fullUrl
          }
        }
        let uniquenum = practitioner.resource.extension.find((ext) => {
          return ext.url === "http://ihris.org/fhir/StructureDefinition/unique-number"
        })?.valueString
        if(uniquenum) {
          let params = {
            uniquenum
          }
          if(req.query.editing) {
            let editingResources = JSON.parse(req.query.editingResources)
            params["_id:not"] = editingResources[0].id
          }
          await fhirAxios.search("Practitioner", params).then((response) => {
            if(response && response.entry && response.entry.length) {
              return reject({message: "Ce Numéro d’Identification Unique (NIU) existe déjà dans la base de données"})
            }
          })
        }
        for(let telecom of practitioner.resource.telecom) {
          if(telecom.system === 'phone') {
            if(telecom.value.length != 8) {
              return reject({message: "Le Numero de Telephone doit avoir 8 Chiffres"})
            }
            if(isNaN(telecom.value)) {
              return reject({message: "Numero de telephone invalide"})
            }
          }
          if(telecom.system === 'email') {
            let parts = telecom.value.split("@")
            if(parts.length !== 2) {
              return reject({message: "Adresse e-mail invalide"})
            }
            if(parts[1].split('.').length < 2 || (parts[1].split('.').length > 1 && !parts[1].split('.')[1])) {
              return reject({message: "Adresse e-mail invalide"})
            }
          }
        }
        for(let identifier of practitioner.resource.identifier) {
          let issueDate = identifier.extension.find((ext) => {
            return ext.url === "http://ihris.org/fhir/StructureDefinition/id-issue-date"
          })
          let expireDate = identifier.extension.find((ext) => {
            return ext.url === "http://ihris.org/fhir/StructureDefinition/id-expire-date"
          })
          if(issueDate && issueDate.valueDate && expireDate && expireDate.valueDate && moment(issueDate.valueDate).isAfter(expireDate.valueDate)) {
            return reject({message: "La date d'émission doit être avant la date d'expiration"})
          }
          if(identifier.type) {
            if(identifier.type.coding[0].code === 'cni') {
              if(!issueDate || !issueDate.valueDate) {
                return reject({message: "La date d'édition est obligatoire pour la CNI"})
              }
              if(!expireDate || !expireDate.valueDate) {
                return reject({message: "La date d'expiration est obligatoire pour la CNI"})
              }
              let expireFromIssueDate = moment(issueDate.valueDate).add(5, 'years').format("YYYY-MM-DD")
              expireFromIssueDate = moment(expireFromIssueDate).subtract(1, 'days').format("YYYY-MM-DD")
              let today = moment().format("YYYY-MM-DD")
              if(moment(expireFromIssueDate).isBefore(today)) {
                return reject({message: "La CNI a Expirée"})
              }
              if(expireDate.valueDate !== expireFromIssueDate) {
                return reject({message: "Étant donné que la date d’édition est " + issueDate.valueDate + " elle doit expirer le " + expireFromIssueDate})
              }
            }
          }
          let params = {
            identifier: identifier.value
          }
          if(req.query.editing) {
            let editingResources = JSON.parse(req.query.editingResources)
            params["_id:not"] = editingResources[0].id
          }
          await fhirAxios.search("Practitioner", params).then((response) => {
            if(response && response.entry && response.entry.length) {
              return reject({message: `Ce ${identifier.type.coding[0].display} existe déjà dans la base de données`})
            }
          })
        }
        return resolve(bundle)
      })
    } )
  },
  postProcess: ( req, results ) => {
    return new Promise((resolve, reject) => {
      if ( !req.body.meta ) req.body.meta = {}
      if ( !req.body.meta.tag ) req.body.meta.tag = []
      req.body.meta.tag.push({ system: "http://ihris.org/fhir/tags/resource", code: results.entry[0].response.location })
      resolve( req )
    })
  },
  outcome: (message) => {
    return new Promise ((resolve, reject ) => {
      let outcomeBundle = {
        resourceType: "Bundle",
        type: "transaction",
        entry: [{
          resource:{
            resourceType: "OperationOutcome",
            issue: [
            {
              severity: "error",
              code: "exception",
              diagnostics: message
            }]
          },
          request: {
            method: "POST",
            url: "OperationOutcome"
          }
        }]
      }
      winston.info(JSON.stringify(outcomeBundle,null,2))
      resolve(outcomeBundle)
    })
  }
}
 
module.exports = practitionerWorkflow