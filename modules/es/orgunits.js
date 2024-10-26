const fhirAxios = require("../../../modules/fhir/fhirAxios")
const utils = require("../utils")

const orgunits = {
  populate: (fields) => {
    return new Promise((resolve, reject) => {
      let facilitytype = ""
      let program = ""
      let unit = ""
      let department = ""
      let facility = ""
      let commune = ""
      let district = ""
      let region = ""
      const job = new Promise((resolve, reject) => {
        let params = {
          practitioner: fields.practitionerid,
          _profile: "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role"
        }
        utils.getLatestResourceById({
          resource: "PractitionerRole",
          params,
          total: 1
        }).then(async(response) => {
          if(response && response.entry && response.entry.length) {
            if(response.entry[0].resource?.location) {
              let location = response.entry[0].resource?.location[0]?.reference
              loadlocation(location).then(() => {
                resolve()
              })
            } else {
              resolve()
            }
          } else {
            resolve()
          }
        }).catch((err) => {
          console.log(err);
          reject()
        })
      })

      function loadlocation(ref) {
        return new Promise((resolve, reject) => {
          fhirAxios.read("Location", ref.split("/")[1]).then((loc) => {
            if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-program")) {
              program = loc.name
            } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-unit")) {
              unit = loc.name
            } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-department")) {
              department = loc.name
            } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-facility")) {
              facility = loc.name
              if(loc.type && loc.type[0].coding) {
                facilitytype = loc.type[0].coding[0].display
              }
              if(!facilitytype) {
                facilitytype = ""
              }
            } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-commune")) {
              commune = loc.name
            } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-district")) {
              district = loc.name
            } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-region")) {
              region = loc.name
            }
            if(loc.partOf && loc.partOf.reference) {
              loadlocation(loc.partOf.reference).then(() => {
                resolve()
              }).catch(() => {
                reject()
              })
            } else {
              resolve()
            }
          })
        })
      }
      Promise.all([job]).then(() => {
        let value =  program + "-^-" + unit + "-^-" + department + "-^-" + facility + "-^-" + commune + "-^-" + district + "-^-" + region + "-^-" + facilitytype
        resolve(value)
      })
    })
  },
  program: (fields) => {
    return new Promise((resolve) => {
      if(!fields.orgunitsdata) {
        resolve()
      }
      let values = fields.orgunitsdata.split("-^-")
      resolve(values[0])
    })
  },
  unit: (fields) => {
    return new Promise((resolve) => {
      if(!fields.orgunitsdata) {
        resolve()
      }
      let values = fields.orgunitsdata.split("-^-")
      resolve(values[1])
    })
  },
  department: (fields) => {
    return new Promise((resolve) => {
      if(!fields.orgunitsdata) {
        resolve()
      }
      let values = fields.orgunitsdata.split("-^-")
      resolve(values[2])
    })
  },
  facility: (fields) => {
    return new Promise((resolve) => {
      if(!fields.orgunitsdata) {
        resolve()
      }
      let values = fields.orgunitsdata.split("-^-")
      resolve(values[3])
    })
  },
  commune: (fields) => {
    return new Promise((resolve) => {
      if(!fields.orgunitsdata) {
        resolve()
      }
      let values = fields.orgunitsdata.split("-^-")
      resolve(values[4])
    })
  },
  district: (fields) => {
    return new Promise((resolve) => {
      if(!fields.orgunitsdata) {
        resolve()
      }
      let values = fields.orgunitsdata.split("-^-")
      resolve(values[5])
    })
  },
  region: (fields) => {
    return new Promise((resolve) => {
      if(!fields.orgunitsdata) {
        resolve()
      }
      let values = fields.orgunitsdata.split("-^-")
      resolve(values[6])
    })
  },
  facilitytype: (fields) => {
    return new Promise((resolve) => {
      if(!fields.orgunitsdata) {
        resolve()
      }
      let values = fields.orgunitsdata.split("-^-")
      resolve(values[7])
    })
  }
}

module.exports = orgunits