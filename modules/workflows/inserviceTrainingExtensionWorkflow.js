const winston = require('winston')
const ihrissmartrequire = require("ihrissmartrequire")
const fhirQuestionnaire = ihrissmartrequire('modules/fhir/fhirQuestionnaire')
const fhirAxios = ihrissmartrequire('modules/fhir/fhirAxios')
const moment = require("moment")

const inserviceTrainingExtensionWorkflow = {
  process: ( req ) => {
    return new Promise( (resolve, reject) => {
      if(!req.query.request) {
        return reject({message: "Demande invalide, aucun Agent trouvé"})
      }
      fhirQuestionnaire.processQuestionnaire( req.body ).then( async(bundle) => {
        let practitioner
        let trainingStart
        await fhirAxios.read("Basic", req.query.request).then((response) => {
          trainingStart = response.extension.find((ext) => {
            return ext.url === 'http://ihris.org/fhir/StructureDefinition/training-start-date'
          }).valueDate
          if(moment(trainingStart).isAfter())
          practitioner = response.extension.find((ext) => {
            return ext.url === "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference"
          })?.valueReference?.reference
        })
        bundle.entry[0].resource.extension.push({
          url: 'http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference',
          valueReference: {
            reference: practitioner
          }
        })
        bundle.entry[0].resource.extension.push({
          url: 'http://ihris.org/fhir/StructureDefinition/inservice-training-request-reference',
          valueReference: {
            reference: 'Basic/' + req.query.request
          }
        })
        let extStartDate = bundle.entry[0].resource.extension.find((ext) => {
          return ext.url === 'http://ihris.org/fhir/StructureDefinition/extension-start-date'
        })?.valueDate
        let extEndYear = bundle.entry[0].resource.extension.find((ext) => {
          return ext.url === 'http://ihris.org/fhir/StructureDefinition/extension-end-year'
        })?.valueDate
        if(extStartDate && moment(extStartDate).isBefore(trainingStart)) {
          return reject({message: "La date de début de la prorogation doit être supérieure à la date de début de formation " + moment(trainingStart).format("DD-MM-YYYY")})
        }
        if(extStartDate && extEndYear && moment(extStartDate).isAfter(extEndYear)) {
          return reject({message: "La date de début de formation doit être inférieure à la date de début de la prorogation"})
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
 
module.exports = inserviceTrainingExtensionWorkflow
