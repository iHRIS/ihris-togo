const utils = require("../utils")
const fhirAxios = require("../../../modules/fhir/fhirAxios")

const classification = {
  populate: (fields) => {
    return new Promise((resolve, reject) => {
      let salaryindex = ""
      let bonus = ""
      let deduction = ""
      let basic = ""
      let gross = ""
      let net = ""
      let grade = ""
      let budgettype = ""
      let agenttype = ""
      let classificationclass = ""
      let civilservcategory = ""
      let echelon = ""
      let lastadminsituation = ""
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
            salaryindex = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/salary-index-reference'
            })?.valueReference?.reference
            bonus = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/bonus'
            })?.valueInteger
            deduction = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/deduction'
            })?.valueInteger
            basic = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/basic-salary'
            })?.valueInteger
            gross = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/gross-salary'
            })?.valueInteger
            net = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/net-salary'
            })?.valueInteger
            if(salaryindex) {
              await fhirAxios.read("Basic", salaryindex.split("/")[1]).then((resp) => {
                salaryindex = resp.extension.find((ext) => {
                  return ext.url === 'http://ihris.org/fhir/StructureDefinition/ihris-basic-name'
                }).valueString
              })
            } else {
              civilservcategory = ""
            }
            grade = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/grade'
            })?.valueCoding?.display
            budgettype = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/budget-type'
            })?.valueCoding?.display
            agenttype = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/agent-type'
            })?.valueCoding?.display
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
            classificationclass = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/class-reference'
            })?.valueReference?.reference
            if(classificationclass) {
              await fhirAxios.read("Basic", classificationclass.split("/")[1]).then((resp) => {
                classificationclass = resp.extension.find((ext) => {
                  return ext.url === 'http://ihris.org/fhir/StructureDefinition/ihris-basic-name'
                }).valueString
              })
            } else {
              classificationclass = ""
            }
            echelon = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/echelon-reference'
            })?.valueReference?.reference
            if(echelon) {
              await fhirAxios.read("Basic", echelon.split("/")[1]).then((resp) => {
                echelon = resp.extension.find((ext) => {
                  return ext.url === 'http://ihris.org/fhir/StructureDefinition/ihris-basic-name'
                }).valueString
              })
            } else {
              echelon = ""
            }
            lastadminsituation = response.entry[0].resource.extension.find((ext) => {
              return ext.url === 'http://ihris.org/fhir/StructureDefinition/date-last-admin-situation'
            })?.valueDate
            if(!grade) {
              grade = ""
            }
            if(!budgettype) {
              budgettype = ""
            }
            if(!agenttype) {
              agenttype = ""
            }
            if(!classificationclass) {
              classificationclass = ""
            }
            if(!civilservcategory) {
              civilservcategory = ""
            }
            if(!classificationclass) {
              classificationclass = ""
            }
            if(!echelon) {
              echelon = ""
            }
            if(!lastadminsituation) {
              lastadminsituation = ""
            }
            if(!bonus) {
              bonus = "0"
            } else {
              bonus = bonus.toLocaleString()
            }
            if(!deduction) {
              deduction = "0"
            } else {
              deduction = deduction.toLocaleString()
            }
            if(!basic) {
              basic = "0"
            } else {
              basic = basic.toLocaleString()
            }
            if(!gross) {
              gross = "0"
            } else {
              gross = gross.toLocaleString()
            }
            if(!net) {
              net = "0"
            } else {
              net = net.toLocaleString()
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

      Promise.all([job, classification]).then(() => {
        let value = grade +"-^-"+ classificationclass +"-^-"+ civilservcategory +"-^-" + echelon +"-^-" + lastadminsituation +"-^-" + salaryindex +"-^-" + bonus +"-^-" + deduction +"-^-" + basic +"-^-" + gross +"-^-" + net +"-^-" + budgettype +"-^-" + agenttype +"-^-" + facility +"-^-" + district +"-^-" + region + "-^-" + commune
        resolve(value)
      }).catch((err) => {
        console.log(err);
        reject()
      })
    })
  },
  grade: (fields) => {
    return new Promise((resolve) => {
      if(!fields.classificationdata) {
        resolve()
      }
      let classification = fields.classificationdata.split("-^-")
      resolve(classification[0])
    })
  },
  classificationclass: (fields) => {
    return new Promise((resolve) => {
      if(!fields.classificationdata) {
        resolve()
      }
      let classification = fields.classificationdata.split("-^-")
      resolve(classification[1])
    })
  },
  civilservcategory: (fields) => {
    return new Promise((resolve) => {
      if(!fields.classificationdata) {
        resolve()
      }
      let classification = fields.classificationdata.split("-^-")
      resolve(classification[2])
    })
  },
  echelon: (fields) => {
    return new Promise((resolve) => {
      if(!fields.classificationdata) {
        resolve()
      }
      let classification = fields.classificationdata.split("-^-")
      resolve(classification[3])
    })
  },
  lastadminsituation: (fields) => {
    return new Promise((resolve) => {
      if(!fields.classificationdata) {
        resolve()
      }
      let classification = fields.classificationdata.split("-^-")
      resolve(classification[4])
    })
  },
  salaryindex: (fields) => {
    return new Promise((resolve) => {
      if(!fields.classificationdata) {
        resolve()
      }
      let classification = fields.classificationdata.split("-^-")
      resolve(classification[5])
    })
  },
  bonus: (fields) => {
    return new Promise((resolve) => {
      if(!fields.classificationdata) {
        resolve()
      }
      let classification = fields.classificationdata.split("-^-")
      resolve(classification[6])
    })
  },
  deduction: (fields) => {
    return new Promise((resolve) => {
      if(!fields.classificationdata) {
        resolve()
      }
      let classification = fields.classificationdata.split("-^-")
      resolve(classification[7])
    })
  },
  basic: (fields) => {
    return new Promise((resolve) => {
      if(!fields.classificationdata) {
        resolve()
      }
      let classification = fields.classificationdata.split("-^-")
      resolve(classification[8])
    })
  },
  gross: (fields) => {
    return new Promise((resolve) => {
      if(!fields.classificationdata) {
        resolve()
      }
      let classification = fields.classificationdata.split("-^-")
      resolve(classification[9])
    })
  },
  net: (fields) => {
    return new Promise((resolve) => {
      if(!fields.classificationdata) {
        resolve()
      }
      let classification = fields.classificationdata.split("-^-")
      resolve(classification[10])
    })
  },
  budgettype: (fields) => {
    return new Promise((resolve) => {
      if(!fields.classificationdata) {
        resolve()
      }
      let classification = fields.classificationdata.split("-^-")
      resolve(classification[11])
    })
  },
  agenttype: (fields) => {
    return new Promise((resolve) => {
      if(!fields.classificationdata) {
        resolve()
      }
      let classification = fields.classificationdata.split("-^-")
      resolve(classification[12])
    })
  },
  facility: (fields) => {
    return new Promise((resolve) => {
      if(!fields.classificationdata) {
        resolve()
      }
      let values = fields.classificationdata.split("-^-")
      resolve(values[13])
    })
  },
  district: (fields) => {
    return new Promise((resolve) => {
      if(!fields.classificationdata) {
        resolve()
      }
      let values = fields.classificationdata.split("-^-")
      resolve(values[14])
    })
  },
  region: (fields) => {
    return new Promise((resolve) => {
      if(!fields.classificationdata) {
        resolve()
      }
      let values = fields.classificationdata.split("-^-")
      resolve(values[15])
    })
  },
  commune: (fields) => {
    return new Promise((resolve) => {
      if(!fields.classificationdata) {
        resolve()
      }
      let values = fields.classificationdata.split("-^-")
      resolve(values[3])
    })
  }
}

module.exports = classification
