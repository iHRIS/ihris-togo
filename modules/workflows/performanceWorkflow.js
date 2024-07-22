const winston = require('winston')
const ihrissmartrequire = require("ihrissmartrequire")
const fhirQuestionnaire = ihrissmartrequire('modules/fhir/fhirQuestionnaire')
const moment = require("moment")
const utils = require("../utils")

const performanceWorkflow = {
  process: ( req ) => {
    return new Promise( (resolve, reject) => {
      if(!req.query.practitioner) {
        return reject({message: "Demande invalide, aucun Agent trouvé"})
      }
      fhirQuestionnaire.processQuestionnaire( req.body ).then( async(bundle) => {
        bundle.entry[0].resource.extension.push({
          url: 'http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference',
          valueReference: {
            reference: 'Practitioner/' + req.query.practitioner
          }
        })
        let performance = bundle.entry[0].resource.extension.find((ext) => {
          return ext.url === "http://ihris.org/fhir/StructureDefinition/ihris-performance"
        })
        let startDate = performance.extension.find((ext) => {
          return ext.url === "start-date"
        })
        let endDate = performance.extension.find((ext) => {
          return ext.url === "end-date"
        })
        if(startDate && endDate && moment(startDate.valueDate).isAfter(endDate.valueDate)) {
          return reject({message: "La date de fin doit être après la date de début"})
        }
        let generalKnowledge  = performance.extension.find((ext) => {
          return ext.url === "general-knowledge"
        })
        let professionalCulture  = performance.extension.find((ext) => {
          return ext.url === "professional-culture"
        })
        let discipline  = performance.extension.find((ext) => {
          return ext.url === "discipline"
        })
        let aptitude  = performance.extension.find((ext) => {
          return ext.url === "aptitude"
        })
        let score = 0
        if(generalKnowledge && generalKnowledge.valueDecimal) {
          if(generalKnowledge.valueDecimal > 5) {
            return reject({message: "Connaissance Professionnelle et Culture Générale doit etre inferieur ou egale a 5"})
          }
          score += parseFloat(generalKnowledge.valueDecimal)
        }
        if(professionalCulture && professionalCulture.valueDecimal) {
          if(professionalCulture.valueDecimal > 5) {
            return reject({message: "Aptitude au Commandement, Sens de la Hierarchie doit etre inferieur ou egale a 5"})
          }
          score += parseFloat(professionalCulture.valueDecimal)
        }
        if(discipline && discipline.valueDecimal) {
          if(discipline.valueDecimal > 5) {
            return reject({message: "Conduite et Discipline doit etre inferieur ou egale a 5"})
          }
          score += parseFloat(discipline.valueDecimal)
        }
        if(aptitude && aptitude.valueDecimal) {
          if(aptitude.valueDecimal > 5) {
            return reject({message: "Sens du Bien Public doit etre inferieur ou egale a 5"})
          }
          score += parseFloat(aptitude.valueDecimal)
        }
        let scoreindex = performance.extension.findIndex((ext) => {
          return ext.url === "score"
        })
        if(scoreindex === -1) {
          scoreindex = performance.extension.length
        }
        performance.extension[scoreindex] = {
          url: "score",
          valueDecimal: score
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
 
module.exports = performanceWorkflow
