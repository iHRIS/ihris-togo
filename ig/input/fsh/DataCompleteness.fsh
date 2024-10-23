Profile:        DataCompletenessProfile
Parent:         IhrisPractitionerBasic
Id:             data-completeness-profile
Title:          "Data Completeness Information"
Description:    "Data Completeness Information Profile."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Practitioner"
* extension contains
    NoteDate named note-date 1..1 MS and
    Completeness named completeness 1..1 MS
* extension[note-date]  1..1 MS
* extension[note-date]  ^label = "Date Added"
* extension[note-date].valueDate MS
* extension[completeness]  1..1 MS
* extension[completeness]  ^label = "Completeness"
* extension[completeness].valueCoding MS

Extension:      Completeness
Id:             completeness
Title:          "Completeness"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Completeness"
* valueCoding from http://ihris.org/fhir/ValueSet/data-completeness-valueset (required)

Instance:       DataCompleteness
InstanceOf:     IhrisQuestionnaire
Usage:          #definition
* title = "iHRIS Data Completeness Information Workflow"
* description = "iHRIS workflow to record a Data Completeness Information"
* id = "data-completeness"
* url = "http://ihris.org/fhir/Questionnaire/data-completeness"
* name = "data-completeness"
* status = #active
* date = 2024-02-29
* purpose = "Data Completeness information."

* item[0].linkId = "Basic"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/data-completeness-profile"
* item[0].text = "Data Completeness"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/data-completeness-profile#Basic.extension:note-date.value[x]:valueDate"
* item[0].item[0].text = "Date Added"
* item[0].item[0].type = #date
* item[0].item[0].required = true
* item[0].item[0].repeats = false
* item[0].item[0].code[0].system = "default-eval"
* item[0].item[0].code[0].code = #date.now

* item[0].item[1].linkId = "Basic.extension[1]"
* item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/data-completeness-profile#Basic.extension:completeness.value[x]:valueCoding"
* item[0].item[1].text = "Completeness"
* item[0].item[1].type = #choice
* item[0].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/data-completeness-valueset"
* item[0].item[1].required = true
* item[0].item[1].repeats = false

Instance:       ihris-page-data-completeness
InstanceOf:     IhrisPage
Title:          "Data Completeness Information Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/data-completeness-profile)
* extension[display].extension[link][0].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][0].extension[text].valueString = "View Health Worker"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/practitioner/FIELD"
* extension[display].extension[search][0].valueString = "Note Date|extension.where(url='http://ihris.org/fhir/StructureDefinition/note-date').valueDate"
* extension[display].extension[field][0].extension[path].valueString = "Basic.extension:practitioner.value[x]:valueReference"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Data Completeness Information"
* extension[section][0].extension[description].valueString = "Data Completeness Information"
* extension[section][0].extension[name].valueString = "datacompletenessinformation"
* extension[section][0].extension[field][0].valueString = "Basic.extension:practitioner"
* extension[section][0].extension[field][1].valueString = "Basic.extension:note-date"
* extension[section][0].extension[field][2].valueString = "Basic.extension:completeness"