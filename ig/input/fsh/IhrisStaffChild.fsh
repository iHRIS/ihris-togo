Profile:        StaffChildProfile
Parent:         IhrisPractitionerBasic
Id:             staff-child-profile
Title:          "Staff Child Information"
Description:    "iHRIS Profile of the Basic resource for Staff Child."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Worker"
* extension contains
    IhrisBasicName named name 1..1 MS
* extension[name].valueString 1..1 MS
* extension[name] ^label = "Child Name"

Instance:       StaffChild
InstanceOf:     IhrisQuestionnaire
Usage:          #definition
* title = "iHRIS Staff Child Workflow"
* description = "iHRIS workflow to record a Staff Child"
* id = "staff-child"
* url = "http://ihris.org/fhir/Questionnaire/staff-child"
* name = "staff-child"
* status = #active
* date = 2020-08-27
* purpose = "Workflow page for recording a Staff Child information."

* item[0].linkId = "Basic"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/staff-child-profile"
* item[0].text = "Staff Child"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/staff-child-profile#Basic.extension:name.value[x]:valueString"
* item[0].item[0].text = "Child Name"
* item[0].item[0].type = #string
* item[0].item[0].required = true
* item[0].item[0].repeats = false

Instance:       ihris-page-staff-child
InstanceOf:     IhrisPage
Title:          "iHRIS Basic Staff Child Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/staff-child-profile)
* extension[display].extension[link][0].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][0].extension[text].valueString = "View Health Worker"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/practitioner/FIELD"
* extension[display].extension[link][1].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][1].extension[text].valueString = "Add Another"
* extension[display].extension[link][1].extension[button].valueBoolean = true
* extension[display].extension[link][1].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][1].extension[url].valueUrl = "/questionnaire/staff-child/staff-child?practitioner=FIELD"
* extension[display].extension[link][1].extension[task].valueId = "ihris-task-add-children"
* extension[display].extension[search][0].valueString = "name|extension.where(url='http://ihris.org/fhir/StructureDefinition/name').valueString"
* extension[display].extension[field][0].extension[path].valueString = "Basic.extension:practitioner.value[x]:valueReference"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Staff Child"
* extension[section][0].extension[description].valueString = "Staff Child details"
* extension[section][0].extension[name].valueString = "Basic"
* extension[section][0].extension[field][0].valueString = "Basic.extension:practitioner"
* extension[section][0].extension[field][1].valueString = "Basic.extension:name"