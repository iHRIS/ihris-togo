Profile:        BankingProfile
Parent:         IhrisPractitionerBasic
Id:             banking-profile
Title:          "Banking Information"
Description:    "iHRIS Profile of the Basic resource for Banking."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Worker"
* extension contains
    Banking named banking 1..1 MS
* extension[banking].extension[name] MS
* extension[banking].extension[name] ^label = "Bank Name"
* extension[banking].extension[name].valueCoding 1..1 MS
* extension[banking].extension[branch] MS
* extension[banking].extension[branch] ^label = "Branch Name"
* extension[banking].extension[branch].valueString 1..1 MS
* extension[banking].extension[account-number] MS
* extension[banking].extension[account-number] ^label = "Account Number"
* extension[banking].extension[account-number].valueString 1..1 MS
* extension[banking].extension[account-name] MS
* extension[banking].extension[account-name] ^label = "Account Name"
* extension[banking].extension[account-name].valueString 1..1 MS
* extension[banking].extension[account-type] MS
* extension[banking].extension[account-type] ^label = "Account Type"
* extension[banking].extension[account-type].valueString 1..1 MS


Extension:      Banking
Id:             banking
Title:          "iHRIS Practitioner Bank"
Description:    "iHRIS extension for Practitioner Bank."
* ^context.type = #element
* ^context.expression = "Basic"
* extension contains
    name 1..1 MS and
    branch 1..1 MS and
    account-number 1..1 MS and
    account-name 1..1 MS and
    account-type 1..1 MS and
    pay-point 1..1 MS
* extension[name].value[x] only Coding
* extension[name].valueCoding ^label = "Bank Name"
* extension[name].valueCoding from BankNameValueSet (required)
* extension[branch].value[x] only string
* extension[branch].valueString ^label = "Branch Name"
* extension[account-number].value[x] only string
* extension[account-number].valueString ^label = "Account Number"
* extension[account-name].value[x] only string
* extension[account-name].valueString ^label = "Account Name"
* extension[account-type].value[x] only string
* extension[account-type].valueString ^label = "Account Type"

Instance:       Banking
InstanceOf:      Questionnaire
Usage:          #definition
* title = "iHRIS Banking Workflow"
* description = "iHRIS workflow to record Banking"
* id = "banking"
* url = "http://ihris.org/fhir/Questionnaire/banking"
* name = "banking"
* status = #active
* date = 2023-11-19
* purpose = "Workflow page for recording Banking Information."

* item[0].linkId = "Basic"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/banking-profile"
* item[0].text = "Banking Information"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/banking-profile#Basic.extension:banking"
* item[0].item[0].text = "Details"
* item[0].item[0].type = #group

* item[0].item[0].item[0].linkId = "Basic.extension[0].extension[0]"
* item[0].item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/banking-profile#Basic.extension:banking.extension:name.value[x]:valueCoding"
* item[0].item[0].item[0].text = "Bank Name"
* item[0].item[0].item[0].type = #choice
* item[0].item[0].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/bank-name-valueset"
* item[0].item[0].item[0].required = true
* item[0].item[0].item[0].repeats = false

* item[0].item[0].item[1].linkId = "Basic.extension[0].extension[1]"
* item[0].item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/banking-profile#Basic.extension:banking.extension:branch.value[x]:valueString"
* item[0].item[0].item[1].text = "Branch Name"
* item[0].item[0].item[1].type = #string
* item[0].item[0].item[1].required = false
* item[0].item[0].item[1].repeats = false

* item[0].item[0].item[2].linkId = "Basic.extension[0].extension[2]"
* item[0].item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/banking-profile#Basic.extension:banking.extension:account-number.value[x]:valueString"
* item[0].item[0].item[2].text = "Account Number"
* item[0].item[0].item[2].type = #string
* item[0].item[0].item[2].required = false
* item[0].item[0].item[2].repeats = false

* item[0].item[0].item[3].linkId = "Basic.extension[0].extension[3]"
* item[0].item[0].item[3].definition = "http://ihris.org/fhir/StructureDefinition/banking-profile#Basic.extension:banking.extension:account-name.value[x]:valueString"
* item[0].item[0].item[3].text = "Account Name"
* item[0].item[0].item[3].type = #string
* item[0].item[0].item[3].required = false
* item[0].item[0].item[3].repeats = false

* item[0].item[0].item[4].linkId = "Basic.extension[0].extension[4]"
* item[0].item[0].item[4].definition = "http://ihris.org/fhir/StructureDefinition/banking-profile#Basic.extension:banking.extension:account-type.value[x]:valueString"
* item[0].item[0].item[4].text = "Account Type"
* item[0].item[0].item[4].type = #string
* item[0].item[0].item[4].required = false
* item[0].item[0].item[4].repeats = false

Instance:       ihris-page-banking
InstanceOf:     IhrisPage
Title:          "Banking Information"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/banking-profile)
* extension[display].extension[link][0].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][0].extension[text].valueString = "View Health Worker"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/practitioner/FIELD"
* extension[display].extension[link][1].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][1].extension[text].valueString = "Add Another"
* extension[display].extension[link][1].extension[button].valueBoolean = true
* extension[display].extension[link][1].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][1].extension[url].valueUrl = "/questionnaire/banking/banking?practitioner=FIELD"
* extension[display].extension[link][1].extension[task].valueId = "ihris-task-add-banking"
* extension[display].extension[link][2].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][2].extension[text].valueString = "Edit"
* extension[display].extension[link][2].extension[button].valueBoolean = true
* extension[display].extension[link][2].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][2].extension[url].valueUrl = "/questionnaire/banking/banking/FHIRID?practitioner=FIELD"
* extension[display].extension[link][2].extension[task].valueId = "ihris-task-edit-banking"
* extension[display].extension[search][0].valueString = "Practitioner|Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[field][0].extension[path].valueString = "Basic.extension:practitioner.value[x]:valueReference"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Banking Information"
* extension[section][0].extension[description].valueString = "Banking Information"
* extension[section][0].extension[name].valueString = "Basic"
* extension[section][0].extension[field][0].valueString = "Basic.extension:practitioner"
* extension[section][0].extension[field][1].valueString = "Basic.extension:banking.extension:name"
* extension[section][0].extension[field][2].valueString = "Basic.extension:banking.extension:branch"
* extension[section][0].extension[field][3].valueString = "Basic.extension:banking.extension:account-number"
* extension[section][0].extension[field][4].valueString = "Basic.extension:banking.extension:account-name"
* extension[section][0].extension[field][5].valueString = "Basic.extension:banking.extension:account-type"