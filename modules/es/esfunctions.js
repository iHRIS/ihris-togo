const moment = require("moment")
const utils = require("../utils")

const index = {
  classificationcategory: (fields) => {
    return new Promise((resolve, reject) => {
      let params = {
        practitioner: fields.practitionerid,
        _profile: "http://ihris.org/fhir/StructureDefinition/classification-profile"
      }
      utils.getLatestResourceById({
        resource: "Basic",
        params,
        total: 1
      }).then((response) => {
        if(response && response.entry && response.entry.length) {
          let classificationcategory = response.entry[0].resource.extension.find((ext) => {
            return ext.url === 'http://ihris.org/fhir/StructureDefinition/classification-category'
          })?.valueCoding?.code
          let civilservcategory = response.entry[0].resource.extension.find((ext) => {
            return ext.url === 'http://ihris.org/fhir/StructureDefinition/civil-servant-category'
          })?.valueCoding?.code
          let contractualcategory = response.entry[0].resource.extension.find((ext) => {
            return ext.url === 'http://ihris.org/fhir/StructureDefinition/contractual-category'
          })?.valueCoding?.code
          let value = classificationcategory
          if(civilservcategory) {
            value += ":" + civilservcategory
          } else if(contractualcategory) {
            value += ":" + contractualcategory
          }
          return resolve(value)
        }
        return resolve()
      }).catch(() => {
        return reject()
      })
    })
  },
  age: (fields) => {
    return new Promise((resolve, reject) => {
      let age = moment().diff(fields.dob, 'years');
      resolve(age)
    })
  },
  probableRetirementDate: (fields) => {
    return new Promise((resolve) => {
      if(!fields.dob) {
        return resolve()
      }
      let age = 60
      let date = moment(fields.dob).add(age, "years").format("DD-MM-YYYY")
      resolve(date)
    })
  },
  probableRetirementYear: (fields) => {
    return new Promise((resolve) => {
      if(fields.retirementDate) {
        return resolve(fields.retirementdate.split("-")[2])
      }
      resolve()
    })
  }
}

module.exports = index
