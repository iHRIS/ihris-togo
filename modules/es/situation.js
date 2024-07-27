const utils = require("../utils")
const fhirAxios = require("../../../modules/fhir/fhirAxios")

const situation = {
  populate: (fields) => {
    return new Promise((resolve, reject) => {
      let appointmentdate = ""
      let bonusdate = ""
      let servicestartdate = ""
      let serviceenddate = ""
      let serviceeffectivedate = ""
      let service = ""
      let tenuredate = ""
      let integrationdate = ""
      let qualification = ""
      let fn = ""
      let level = ""
      let specialty = ""
      let facility = ""
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
                if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/td-facility")) {
                  facility = loc.name
                } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/td-district")) {
                  district = loc.name
                } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/td-region")) {
                  region = loc.name
                }
                if(loc.partOf && loc.partOf.reference) {
                  await fhirAxios.read("Location", loc.partOf.reference.split("/")[1]).then(async(loc) => {
                    if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/td-facility")) {
                      facility = loc.name
                    } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/td-district")) {
                      district = loc.name
                    } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/td-region")) {
                      region = loc.name
                    }
                    if(loc.partOf && loc.partOf.reference) {
                      await fhirAxios.read("Location", loc.partOf.reference.split("/")[1]).then((loc) => {
                        if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/td-facility")) {
                          facility = loc.name
                        } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/td-district")) {
                          district = loc.name
                        } else if(loc.meta.profile.includes("http://ihris.org/fhir/StructureDefinition/td-region")) {
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
          } else {
            resolve()
          }
        }).catch((err) => {
          console.log(err);
          reject()
        })
      })

      const situation = new Promise((resolve, reject) => {
        let params = {
          practitioner: fields.practitionerid,
          _profile: "http://ihris.org/fhir/StructureDefinition/situation-profile"
        }
        utils.getLatestResourceById({
          resource: "Basic",
          params,
          total: 1
        }).then(async(response) => {
          if(response && response.entry && response.entry.length) {
            appointmentdate = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/appointment-date'
            })?.valueDate
            bonusdate = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/bonus-date'
            })?.valueDate
            servicestartdate = response.entry[0].resource?.period?.start
            serviceenddate = response.entry[0].resource?.period?.end
            serviceeffectivedate = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/effective-presence-date'
            })?.valueDate
            tenuredate = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/tenure-date'
            })?.valueDate
            integrationdate = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/integration-date'
            })?.valueDate
            service = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/service'
            })?.valueCoding?.display
            qualification = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/qualification-reference'
            })?.valueReference?.reference
            if(qualification) {
              await fhirAxios.read("Basic", qualification.split("/")[1]).then((resp) => {
                qualification = resp.extension.find((ext) => {
                  return ext.url === 'http://ihris.org/fhir/StructureDefinition/ihris-basic-name'
                }).valueString
              })
            } else {
              qualification = ""
            }
            if(response.entry[0].resource.code && response.entry[0].resource.code.length) {
              fn = response.entry[0].resource.code[0].coding[0].display
            }
            level = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/study-level'
            })?.valueCoding?.display
            specialty = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/specialty'
            })?.valueCoding?.display
            if(!qualification) {
              qualification = ""
            }
            if(!fn) {
              fn = ""
            }
            if(!level) {
              level = ""
            }
            if(!specialty) {
              specialty = ""
            }
            if(!appointmentdate) {
              appointmentdate = ""
            }
            if(!bonusdate) {
              bonusdate = ""
            }
            if(!servicestartdate) {
              servicestartdate = ""
            }
            if(!serviceenddate) {
              serviceenddate = ""
            }
            if(!serviceeffectivedate) {
              serviceeffectivedate = ""
            }
            if(!service) {
              service = ""
            }
            if(!tenuredate) {
              tenuredate = ""
            }
            if(!integrationdate) {
              integrationdate = ""
            }
            resolve()
          } else {
            return resolve()
          }
        }).catch((err) => {
          console.log(err);
          reject()
        })
      })

      Promise.all([job, situation]).then(() => {
        let value = qualification+"-^-" + fn +"-^-" + level +"-^-" + specialty +"-^-" + facility +"-^-" + district +"-^-" + region +"-^-" + appointmentdate +"-^-" + bonusdate +"-^-" + servicestartdate +"-^-" + serviceenddate +"-^-" + serviceeffectivedate +"-^-" + service +"-^-" + tenuredate +"-^-" + integrationdate
        resolve(value)
      }).catch((err) => {
        console.log(err);
        reject()
      })
    })
  },
  qualification: (fields) => {
    return new Promise((resolve) => {
      if(!fields.situationdata) {
        resolve()
      }
      let situation = fields.situationdata.split("-^-")
      resolve(situation[0])
    })
  },
  fn: (fields) => {
    return new Promise((resolve) => {
      if(!fields.situationdata) {
        resolve()
      }
      let situation = fields.situationdata.split("-^-")
      resolve(situation[1])
    })
  },
  level: (fields) => {
    return new Promise((resolve) => {
      if(!fields.situationdata) {
        resolve()
      }
      let situation = fields.situationdata.split("-^-")
      resolve(situation[2])
    })
  },
  specialty: (fields) => {
    return new Promise((resolve) => {
      if(!fields.situationdata) {
        resolve()
      }
      let situation = fields.situationdata.split("-^-")
      resolve(situation[3])
    })
  },
  facility: (fields) => {
    return new Promise((resolve) => {
      if(!fields.situationdata) {
        resolve()
      }
      let values = fields.situationdata.split("-^-")
      resolve(values[4])
    })
  },
  district: (fields) => {
    return new Promise((resolve) => {
      if(!fields.situationdata) {
        resolve()
      }
      let values = fields.situationdata.split("-^-")
      resolve(values[5])
    })
  },
  region: (fields) => {
    return new Promise((resolve) => {
      if(!fields.situationdata) {
        resolve()
      }
      let values = fields.situationdata.split("-^-")
      resolve(values[6])
    })
  },
  appointmentdate: (fields) => {
    return new Promise((resolve) => {
      if(!fields.situationdata) {
        resolve()
      }
      let values = fields.situationdata.split("-^-")
      resolve(values[7])
    })
  },
  bonusdate: (fields) => {
    return new Promise((resolve) => {
      if(!fields.situationdata) {
        resolve()
      }
      let values = fields.situationdata.split("-^-")
      resolve(values[8])
    })
  },
  servicestartdate: (fields) => {
    return new Promise((resolve) => {
      if(!fields.situationdata) {
        resolve()
      }
      let values = fields.situationdata.split("-^-")
      resolve(values[9])
    })
  },
  serviceenddate: (fields) => {
    return new Promise((resolve) => {
      if(!fields.situationdata) {
        resolve()
      }
      let values = fields.situationdata.split("-^-")
      resolve(values[10])
    })
  },
  serviceeffectivedate: (fields) => {
    return new Promise((resolve) => {
      if(!fields.situationdata) {
        resolve()
      }
      let values = fields.situationdata.split("-^-")
      resolve(values[11])
    })
  },
  service: (fields) => {
    return new Promise((resolve) => {
      if(!fields.situationdata) {
        resolve()
      }
      let values = fields.situationdata.split("-^-")
      resolve(values[12])
    })
  },
  tenuredate: (fields) => {
    return new Promise((resolve) => {
      if(!fields.situationdata) {
        resolve()
      }
      let values = fields.situationdata.split("-^-")
      resolve(values[13])
    })
  },
  integrationdate: (fields) => {
    return new Promise((resolve) => {
      if(!fields.situationdata) {
        resolve()
      }
      let values = fields.situationdata.split("-^-")
      resolve(values[14])
    })
  }
}

module.exports = situation
