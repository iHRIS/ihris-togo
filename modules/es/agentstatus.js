const utils = require("../utils")

const agentstatus = {
  populate: (fields) => {
    return new Promise((resolve, reject) => {
      let status = ""
      let startdate = ""
      

      let params = {
        practitioner: fields.practitionerid,
        _profile: "http://ihris.org/fhir/StructureDefinition/agent-status-profile"
      }
      utils.getLatestResourceById({
        resource: "Basic",
        params,
        total: 1
      }).then(async(response) => {
        if(response && response.entry && response.entry.length) {
          status = response.entry[0].resource.extension.find((ext) => {
            return ext.url === 'http://ihris.org/fhir/StructureDefinition/agent-status'
          })?.valueCoding?.display
          startdate = response.entry[0].resource.extension.find((ext) => {
            return ext.url === 'http://ihris.org/fhir/StructureDefinition/start-date'
          })?.valueDate
          if(!startdate) {
            startdate = ""
          }
          if(!status) {
            status = ""
          }
          let value = status +"-^-"+ startdate  
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
  status: (fields) => {
    return new Promise((resolve) => {
      if(!fields.agentstatusdata) {
        resolve()
      }
      let agentstatus = fields.agentstatusdata.split("-^-")
      resolve(agentstatus[0])
    })
  },
  startdate: (fields) => {
    return new Promise((resolve) => {
      if(!fields.agentstatusdata) {
        resolve()
      }
      let agentstatus = fields.agentstatusdata.split("-^-")
      resolve(agentstatus[1])
    })
  }
}

module.exports = agentstatus
