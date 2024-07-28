const fhirAxios = require("../../../modules/fhir/fhirAxios")
const utils = require("../utils")

const inservicetraining = {
  populate: (fields) => {
    return new Promise((resolve, reject) => {
      let completed = ""
      let sector = ""
      let institution = ""
      let country = ""
      let startYear = ""
      let endYear = ""
      let degree = ""
      let specialization = ""
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

      const trainingrequest = new Promise((resolve, reject) => {
        let params = {
          practitioner: fields.practitionerid,
          _profile: "http://ihris.org/fhir/StructureDefinition/inservice-training-request-profile"
        }
        utils.getLatestResourceById({
          resource: "Basic",
          params,
          total: 1
        }).then(async(response) => {
          if(response && response.entry && response.entry.length) {
            let request = response.entry[0].resource
            sector = request.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/sector'
            })?.valueCoding?.display
            if(!sector) {
              sector = ""
            }
            institution = request.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/institution-name'
            })?.valueString
            if(!institution) {
              institution = ""
            }
            country = request.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/training-country'
            })?.valueCoding?.display
            if(!country) {
              country = ""
            }
            startYear = request.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/training-start-date'
            })?.valueDate
            if(!startYear) {
              startYear = ""
            }
            endYear = request.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/training-end-year'
            })?.valueDate
            if(!startYear) {
              startYear = ""
            }
            let params = {
              inservicetrainingrequest: "Basic/" + response.entry[0].resource.id,
              _profile: "http://ihris.org/fhir/StructureDefinition/inservice-training-profile"
            }
            utils.getLatestResourceById({
              resource: "Basic",
              params,
              total: 1
            }).then(async(response) => {
              if(response && response.entry && response.entry.length) {
                let training = response.entry[0].resource.extension.find((ext) => {
                  return ext.url === 'http://ihris.org/fhir/StructureDefinition/inservice-training'
                })
                completed = training.extension.find((ext) => {
                  return ext.url === 'completed'
                })?.valueCoding?.display
                degree = training.extension.find((ext) => {
                  return ext.url === 'degree-name'
                })?.valueString
                specialization = training.extension.find((ext) => {
                  return ext.url === 'specialization'
                })?.valueCoding?.display
                if(!degree) {
                  degree = ""
                }
                if(!specialization) {
                  specialization = ""
                }
                if(!completed) {
                  completed = ""
                }
                resolve()
              } else {
                return resolve()
              }
            }).catch((err) => {
              console.log(err);
              reject()
            })
          } else {
            resolve()
          }
        })
      })

      Promise.all([job, trainingrequest]).then(() => {
        let value = sector +"-^-"+ institution +"-^-"+ country +"-^-" + startYear +"-^-" + endYear +"-^-" + degree +"-^-" + specialization +"-^-" + facility +"-^-" + district +"-^-" + region +"-^-" + completed + "-^-" + commune
        resolve(value)
      }).catch((err) => {
        console.log(err);
        reject()
      })
    })
  },
  sector: (fields) => {
    return new Promise((resolve) => {
      if(!fields.inservicetrainingdata) {
        resolve()
      }
      let inservicetraining = fields.inservicetrainingdata.split("-^-")
      resolve(inservicetraining[0])
    })
  },
  institution: (fields) => {
    return new Promise((resolve) => {
      if(!fields.inservicetrainingdata) {
        resolve()
      }
      let inservicetraining = fields.inservicetrainingdata.split("-^-")
      resolve(inservicetraining[1])
    })
  },
  country: (fields) => {
    return new Promise((resolve) => {
      if(!fields.inservicetrainingdata) {
        resolve()
      }
      let inservicetraining = fields.inservicetrainingdata.split("-^-")
      resolve(inservicetraining[2])
    })
  },
  startYear: (fields) => {
    return new Promise((resolve) => {
      if(!fields.inservicetrainingdata) {
        resolve()
      }
      let inservicetraining = fields.inservicetrainingdata.split("-^-")
      resolve(inservicetraining[3])
    })
  },
  endYear: (fields) => {
    return new Promise((resolve) => {
      if(!fields.inservicetrainingdata) {
        resolve()
      }
      let inservicetraining = fields.inservicetrainingdata.split("-^-")
      resolve(inservicetraining[4])
    })
  },
  degree: (fields) => {
    return new Promise((resolve) => {
      if(!fields.inservicetrainingdata) {
        resolve()
      }
      let inservicetraining = fields.inservicetrainingdata.split("-^-")
      resolve(inservicetraining[5])
    })
  },
  specialization: (fields) => {
    return new Promise((resolve) => {
      if(!fields.inservicetrainingdata) {
        resolve()
      }
      let inservicetraining = fields.inservicetrainingdata.split("-^-")
      resolve(inservicetraining[6])
    })
  },
  facility: (fields) => {
    return new Promise((resolve) => {
      if(!fields.inservicetrainingdata) {
        resolve()
      }
      let values = fields.inservicetrainingdata.split("-^-")
      resolve(values[7])
    })
  },
  district: (fields) => {
    return new Promise((resolve) => {
      if(!fields.inservicetrainingdata) {
        resolve()
      }
      let values = fields.inservicetrainingdata.split("-^-")
      resolve(values[8])
    })
  },
  region: (fields) => {
    return new Promise((resolve) => {
      if(!fields.inservicetrainingdata) {
        resolve()
      }
      let values = fields.inservicetrainingdata.split("-^-")
      resolve(values[9])
    })
  },
  completed: (fields) => {
    return new Promise((resolve) => {
      if(!fields.inservicetrainingdata) {
        resolve()
      }
      let inservicetraining = fields.inservicetrainingdata.split("-^-")
      resolve(inservicetraining[10])
    })
  },
  commune: (fields) => {
    return new Promise((resolve) => {
      if(!fields.inservicetrainingdata) {
        resolve()
      }
      let values = fields.inservicetrainingdata.split("-^-")
      resolve(values[3])
    })
  }
}

module.exports = inservicetraining
