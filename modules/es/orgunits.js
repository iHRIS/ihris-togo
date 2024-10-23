const fhirAxios = require("../../../modules/fhir/fhirAxios")
const utils = require("../utils")

const orgunits = {
  populate: (fields) => {
    return new Promise((resolve, reject) => {
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
              await fhirAxios.read("Location", location.split("/")[1]).then(async(loc) => {
                if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-facility")) {
                  facility = loc.name
                } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-commune")) {
                  commune = loc.name
                } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-district")) {
                  district = loc.name
                } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-region")) {
                  region = loc.name
                }
                if(loc.partOf && loc.partOf.reference) {
                  await fhirAxios.read("Location", loc.partOf.reference.split("/")[1]).then(async(loc) => {
                    if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-facility")) {
                      facility = loc.name
                    } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-commune")) {
                      commune = loc.name
                    } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-district")) {
                      district = loc.name
                    } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-region")) {
                      region = loc.name
                    }
                    if(loc.partOf && loc.partOf.reference) {
                      await fhirAxios.read("Location", loc.partOf.reference.split("/")[1]).then(async(loc) => {
                        if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-facility")) {
                          facility = loc.name
                        } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-commune")) {
                          commune = loc.name
                        } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-district")) {
                          district = loc.name
                        } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-region")) {
                          region = loc.name
                        }
                        if(loc.partOf && loc.partOf.reference) {
                          await fhirAxios.read("Location", loc.partOf.reference.split("/")[1]).then((loc) => {
                            if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-facility")) {
                              facility = loc.name
                            } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-commune")) {
                              commune = loc.name
                            } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-district")) {
                              district = loc.name
                            } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/tgo-region")) {
                              region = loc.name
                            }
                            resolve()
                          })
                        } else {
                          resolve()
                        }
                      })
                    } else {
                      resolve()
                    }
                  })
                } else {
                  resolve()
                }
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

      Promise.all([job]).then(() => {
        let value =  facility + "-^-" + commune + "-^-" + district + "-^-" + region
        resolve(value)
      })
    })
  },
  facility: (fields) => {
    return new Promise((resolve) => {
      if(!fields.orgunitsdata) {
        resolve()
      }
      let values = fields.orgunitsdata.split("-^-")
      resolve(values[0])
    })
  },
  commune: (fields) => {
    return new Promise((resolve) => {
      if(!fields.orgunitsdata) {
        resolve()
      }
      let values = fields.orgunitsdata.split("-^-")
      resolve(values[1])
    })
  },
  district: (fields) => {
    return new Promise((resolve) => {
      if(!fields.orgunitsdata) {
        resolve()
      }
      let values = fields.orgunitsdata.split("-^-")
      resolve(values[2])
    })
  },
  region: (fields) => {
    return new Promise((resolve) => {
      if(!fields.orgunitsdata) {
        resolve()
      }
      let values = fields.orgunitsdata.split("-^-")
      resolve(values[3])
    })
  }
}

module.exports = orgunits