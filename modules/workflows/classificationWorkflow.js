const winston = require('winston')
const ihrissmartrequire = require("ihrissmartrequire")
const fhirQuestionnaire = ihrissmartrequire('modules/fhir/fhirQuestionnaire')
const fhirAxios = ihrissmartrequire('modules/fhir/fhirAxios')

const classificationWorkflow = {
  process: ( req ) => {
    return new Promise( (resolve, reject) => {
      if(!req.query.practitioner) {
        return reject({message: "Demande invalide, aucun Agent trouvé"})
      }
      fhirQuestionnaire.processQuestionnaire(req.body).then((bundle) => {
        let salaryIndex = bundle.entry[0].resource.extension.find((ext) => {
          return ext.url === 'http://ihris.org/fhir/StructureDefinition/salary-index-reference'
        }).valueReference.reference
        let params = {
          _id: salaryIndex.split("/")[1],
          _revinclude: "Basic:categoryparent"
        }
        fhirAxios.search("Basic", params).then((response) => {
          if(response.entry && response.entry.length) {
            let indexRes = response.entry.find((entry) => {
              return entry.resource.id === salaryIndex.split("/")[1]
            })
            let category = indexRes.resource.extension.find((ext) => {
              return ext.url === "http://ihris.org/fhir/StructureDefinition/category-parent"
            }).valueReference.reference
            bundle.entry[0].resource.extension.push({
              url: "http://ihris.org/fhir/StructureDefinition/civil-servant-category-reference",
              valueReference: {
                reference: category
              }
            })
            let echelonRes = response.entry.find((entry) => {
              return entry.resource.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/echelon-profile")
            })
            let classRes = response.entry.find((entry) => {
              return entry.resource.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/class-profile")
            })
            let salaryindex = indexRes.resource.extension.find((ext) => {
              return ext.url === "http://ihris.org/fhir/StructureDefinition/ihris-basic-name"
            }).valueString
            let bonus = bundle.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/bonus'
            })?.valueInteger
            if(!bonus) {
              bonus = 0
            }
            let deduction = bundle.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/deduction'
            })?.valueInteger
            if(!deduction) {
              deduction = 0
            }
            let basicSalary = Math.floor(salaryindex*1272.7/12*1.2)
            let gross = basicSalary + bonus
            let net = gross - deduction

            let index = bundle.entry[0].resource.extension.findIndex((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/echelon-reference'
            })
            if(index == -1) {
              index = bundle.entry[0].resource.extension.length
            }
            bundle.entry[0].resource.extension.push({
              url: 'http://ihris.org/fhir/StructureDefinition/echelon-reference',
              valueReference: { reference: 'Basic/' + echelonRes.resource.id }
            })

            index = bundle.entry[0].resource.extension.findIndex((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/class-reference'
            })
            if(index == -1) {
              index = bundle.entry[0].resource.extension.length
            }
            bundle.entry[0].resource.extension.push({
              url: 'http://ihris.org/fhir/StructureDefinition/class-reference',
              valueReference: { reference: 'Basic/' + classRes.resource.id }
            })

            index = bundle.entry[0].resource.extension.findIndex((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/basic-salary'
            })
            if(index == -1) {
              index = bundle.entry[0].resource.extension.length
            }
            bundle.entry[0].resource.extension.push({
              url: 'http://ihris.org/fhir/StructureDefinition/basic-salary',
              valueInteger: basicSalary
            })

            index = bundle.entry[0].resource.extension.findIndex((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/gross-salary'
            })
            if(index == -1) {
              index = bundle.entry[0].resource.extension.length
            }
            bundle.entry[0].resource.extension.push({
              url: 'http://ihris.org/fhir/StructureDefinition/gross-salary',
              valueInteger: gross
            })

            index = bundle.entry[0].resource.extension.findIndex((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/net-salary'
            })
            if(index == -1) {
              index = bundle.entry[0].resource.extension.length
            }
            bundle.entry[0].resource.extension.push({
              url: 'http://ihris.org/fhir/StructureDefinition/net-salary',
              valueInteger: net
            })
          }
          bundle.entry[0].resource.extension.push({
            url: 'http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference',
            valueReference: {
              reference: 'Practitioner/' + req.query.practitioner
            }
          })
          return resolve(bundle)
        })
      })
    })
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
 
module.exports = classificationWorkflow
