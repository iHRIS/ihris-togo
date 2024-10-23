const utils = require("../utils")

const recordcompleteness = {
  populate: (fields) => {
    return new Promise((resolve, reject) => {
      let completeness = ""
      let dateadded = ""
      

      let params = {
        practitioner: fields.practitionerid,
        _profile: "http://ihris.org/fhir/StructureDefinition/data-completeness-profile"
      }
      utils.getLatestResourceById({
        resource: "Basic",
        params,
        total: 1
      }).then(async(response) => {
        if(response && response.entry && response.entry.length) {
          completeness = response.entry[0].resource.extension.find((ext) => {
            return ext.url === 'http://ihris.org/fhir/StructureDefinition/completeness'
          })?.valueCoding?.display
          dateadded = response.entry[0].resource.extension.find((ext) => {
            return ext.url === 'http://ihris.org/fhir/StructureDefinition/note-date'
          })?.valueDate
          if(!dateadded) {
            dateadded = ""
          }
          if(!completeness) {
            completeness = ""
          }
          let value = completeness +"-^-"+ dateadded  
          resolve(value)
        } else {
          return resolve("")
        }
      }).catch((err) => {
        console.log(err);
        reject()
      })
    })
  },
  completeness: (fields) => {
    return new Promise((resolve) => {
      if(!fields.recordcompletenessdata) {
        resolve()
      }
      let recordcompleteness = fields.recordcompletenessdata.split("-^-")
      resolve(recordcompleteness[0])
    })
  },
  dateadded: (fields) => {
    return new Promise((resolve) => {
      if(!fields.recordcompletenessdata) {
        resolve()
      }
      let recordcompleteness = fields.recordcompletenessdata.split("-^-")
      resolve(recordcompleteness[1])
    })
  }
}

module.exports = recordcompleteness
