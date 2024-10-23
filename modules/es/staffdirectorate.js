const moment = require("moment")
const fhirAxios = require("../../../modules/fhir/fhirAxios")
const utils = require("../utils")

const staffdirectorate = {
  populate: (fields) => {
    return new Promise((resolve, reject) => {
      let jobtitle = ""
      let qualification = ""
      let specialization = ""
      let civilservcategory = ""
      let organization = ""
      let appointmentdate = ""
      let servicestartdate = ""
      let integrationdate = ""
      let effectivepresdate = ""
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
            if(response.entry[0].resource && response.entry[0].resource.code && response.entry[0].resource?.code[0]?.coding) {
              jobtitle = response.entry[0].resource?.code[0]?.coding[0]?.display
            }
            if(!jobtitle) {
              jobtitle = ""
            }
            appointmentdate = response.entry[0].resource.extension.find((ext) => {
              return ext.url === "http://ihris.org/fhir/StructureDefinition/appointment-date"
            })?.valueDate
            if(appointmentdate) {
              appointmentdate = moment(appointmentdate).format("YYYY-MM-DD")
            } else {
              appointmentdate = ""
            }

            servicestartdate = response.entry[0].resource?.period?.start
            if(servicestartdate) {
              servicestartdate = moment(servicestartdate).format("YYYY-MM-DD")
            } else {
              servicestartdate = ""
            }

            effectivepresdate = response.entry[0].resource.extension.find((ext) => {
              return ext.url === "http://ihris.org/fhir/StructureDefinition/effective-presence-date"
            })?.valueDate
            if(effectivepresdate) {
              effectivepresdate = moment(effectivepresdate).format("YYYY-MM-DD")
            } else {
              effectivepresdate = ""
            }

            integrationdate = response.entry[0].resource.extension.find((ext) => {
              return ext.url === "http://ihris.org/fhir/StructureDefinition/integration-date"
            })?.valueDate
            if(integrationdate) {
              integrationdate = moment(integrationdate).format("YYYY-MM-DD")
            } else {
              integrationdate = ""
            }

            qualification = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/qualification-reference'
            })?.valueReference?.reference
            if(qualification) {
              await fhirAxios.read("Basic", qualification.split("/")[1]).then((resp) => {
                qualification = resp.extension.find((ext) => {
                  return ext.url === "http://ihris.org/fhir/StructureDefinition/ihris-basic-name"
                })?.valueString
              })
            } else {
              qualification = ""
            }
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

      const specialty = new Promise((resolve, reject) => {
        let params = {
          practitioner: fields.practitionerid,
          _profile: "http://ihris.org/fhir/StructureDefinition/preservice-training-profile,http://ihris.org/fhir/StructureDefinition/inservice-training-profile"
        }
        fhirAxios.search("Basic", params).then((response) => {
          if(!response || !response.entry || !response.entry.length) {
            return resolve()
          }
          let latest = {
            resource: ""
          }
          for(let entry of response.entry) {
            if(!latest.resource) {
              latest.resource = entry.resource
              continue
            }
            let training = entry.resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/preservice-training'
            })
            if(!training) {
              training = entry.resource.extension.find((ext) => {
                return ext.url === 'http://ihris.org/fhir/StructureDefinition/inservice-training'
              })
            }
            let endYear = training.extension.find((ext) => {
              return ext.url === "end-year"
            })?.valueDate
            let currTraining = latest.resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/preservice-training'
            })
            if(!currTraining) {
              currTraining = latest.resource.extension.find((ext) => {
                return ext.url === 'http://ihris.org/fhir/StructureDefinition/inservice-training'
              })
            }
            let currEndYear = currTraining.extension.find((ext) => {
              return ext.url === "end-year"
            })?.valueDate
            if(endYear) {
              endYear = moment(endYear).format("YYYY")
            }
            if(currEndYear) {
              currEndYear = moment(currEndYear).format("YYYY")
            }
            if(moment(currEndYear).isBefore(endYear)) {
              latest.resource = entry.resource
            }
          }
          if(latest.resource) {
            let training = latest.resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/preservice-training'
            })
            if(!training) {
              training = latest.resource.extension.find((ext) => {
                return ext.url === 'http://ihris.org/fhir/StructureDefinition/inservice-training'
              })
            }
            specialization = training.extension.find((ext) => {
              return ext.url === 'specialization'
            })?.valueCoding?.display
            if(!specialization) {
              specialization = ""
            }
          }
          resolve()
        }).catch((err) => {
          console.log(err);
          reject()
        })
      })

      const classification = new Promise((resolve, reject) => {
        let params = {
          practitioner: fields.practitionerid,
          _profile: "http://ihris.org/fhir/StructureDefinition/classification-profile"
        }
        utils.getLatestResourceById({
          resource: "Basic",
          params,
          total: 1
        }).then(async(response) => {
          if(response && response.entry && response.entry.length) {
            civilservcategory = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/civil-servant-category-reference'
            })?.valueReference?.reference
            if(civilservcategory) {
              await fhirAxios.read("Basic", civilservcategory.split("/")[1]).then((resp) => {
                civilservcategory = resp.extension.find((ext) => {
                  return ext.url === 'http://ihris.org/fhir/StructureDefinition/ihris-basic-name'
                }).valueString
              })
            } else {
              civilservcategory = ""
            }
            organization = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/organization'
            })?.valueCoding?.display
            if(!organization) {
              organization = ""
            }
          }
          resolve()
        }).catch((err) => {
          console.log(err);
          reject()
        })
      })
      Promise.all([job, specialty, classification]).then(() => {
        let value = jobtitle+"-^-"+qualification+"-^-" + specialization +"-^-" + civilservcategory + "-^-" + appointmentdate + "-^-" + integrationdate + "-^-" + servicestartdate + "-^-" + effectivepresdate + "-^-" + facility + "-^-" + district + "-^-" + region + "-^-" + commune + "-^-" + organization
        resolve(value)
      })
    })
  },
  jobtitle: (fields) => {
    return new Promise((resolve) => {
      if(!fields.staffdirectoratedata) {
        resolve()
      }
      let values = fields.staffdirectoratedata.split("-^-")
      resolve(values[0])
    })
  },
  qualification: (fields) => {
    return new Promise((resolve) => {
      if(!fields.staffdirectoratedata) {
        resolve()
      }
      let values = fields.staffdirectoratedata.split("-^-")
      resolve(values[1])
    })
  },
  specialty: (fields) => {
    return new Promise((resolve) => {
      if(!fields.staffdirectoratedata) {
        resolve()
      }
      let values = fields.staffdirectoratedata.split("-^-")
      resolve(values[2])
    })
  },
  civilservcategory: (fields) => {
    return new Promise((resolve) => {
      if(!fields.staffdirectoratedata) {
        resolve()
      }
      let values = fields.staffdirectoratedata.split("-^-")
      resolve(values[3])
    })
  },
  appointmentdate: (fields) => {
    return new Promise((resolve) => {
      if(!fields.staffdirectoratedata) {
        resolve()
      }
      let values = fields.staffdirectoratedata.split("-^-")
      resolve(values[4])
    })
  },
  integrationdate: (fields) => {
    return new Promise((resolve) => {
      if(!fields.staffdirectoratedata) {
        resolve()
      }
      let values = fields.staffdirectoratedata.split("-^-")
      resolve(values[5])
    })
  },
  servicestartdate: (fields) => {
    return new Promise((resolve) => {
      if(!fields.staffdirectoratedata) {
        resolve()
      }
      let values = fields.staffdirectoratedata.split("-^-")
      resolve(values[6])
    })
  },
  effectivepresdate: (fields) => {
    return new Promise((resolve) => {
      if(!fields.staffdirectoratedata) {
        resolve()
      }
      let values = fields.staffdirectoratedata.split("-^-")
      resolve(values[7])
    })
  },
  facility: (fields) => {
    return new Promise((resolve) => {
      if(!fields.staffdirectoratedata) {
        resolve()
      }
      let values = fields.staffdirectoratedata.split("-^-")
      resolve(values[8])
    })
  },
  district: (fields) => {
    return new Promise((resolve) => {
      if(!fields.staffdirectoratedata) {
        resolve()
      }
      let values = fields.staffdirectoratedata.split("-^-")
      resolve(values[9])
    })
  },
  region: (fields) => {
    return new Promise((resolve) => {
      if(!fields.staffdirectoratedata) {
        resolve()
      }
      let values = fields.staffdirectoratedata.split("-^-")
      resolve(values[10])
    })
  },
  commune: (fields) => {
    return new Promise((resolve) => {
      if(!fields.staffdirectoratedata) {
        resolve()
      }
      let values = fields.staffdirectoratedata.split("-^-")
      resolve(values[11])
    })
  },
  organization: (fields) => {
    return new Promise((resolve) => {
      if(!fields.staffdirectoratedata) {
        resolve()
      }
      let values = fields.staffdirectoratedata.split("-^-")
      resolve(values[12])
    })
  },
}

module.exports = staffdirectorate