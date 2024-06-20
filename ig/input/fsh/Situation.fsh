Profile:        SituationProfile
Parent:         IhrisPractitionerBasic
Id:             situation-profile
Title:          "Situation Information"
Description:    "Situation Information Profile."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Practitioner"
* extension contains
    AgentType named agent-type 1..1 MS and
    Qualification named qualification 1..1 MS and
    Function named function 1..1 MS and
    Service named service 1..1 MS and
    StudyLevel named study-level 1..1 MS and
    Organization named organization 1..1 MS and
    Specialty named specialty 1..1 MS
* extension[agent-type]  1..1 MS
* extension[agent-type]  ^label = "Agent Type"
* extension[agent-type].valueCoding MS
* extension[qualification]  1..1 MS
* extension[qualification]  ^label = "Profile/Qualification"
* extension[qualification].valueCoding MS
* extension[function]  1..1 MS
* extension[function]  ^label = "Function"
* extension[function].valueCoding MS
* extension[service]  1..1 MS
* extension[service]  ^label = "Service"
* extension[service].valueCoding MS
* extension[study-level]  1..1 MS
* extension[study-level]  ^label = "Level of Study"
* extension[study-level].valueCoding MS
* extension[organization]  1..1 MS
* extension[organization]  ^label = "Organization"
* extension[organization].valueCoding MS
* extension[specialty]  1..1 MS
* extension[specialty]  ^label = "Specialty"
* extension[specialty].valueCoding MS

Extension:      BonusDate
Id:             bonus-date
Title:          "Bonus Date"
Description:    "Bonus Date."
* ^context.type = #element
* value[x] only date
* valueDate 1..1 MS
* valueDate ^label = "Bonus Date"

Extension:      BonusReference
Id:             bonus-reference
Title:          "Bonus Reference"
Description:    "Bonus Reference."
* ^context.type = #element
* value[x] only string
* valueString 1..1 MS
* valueString ^label = "Bonus Reference"

Extension:      AgentType
Id:             agent-type
Title:          "Agent Type"
Description:    "Agent Type."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Agent Type"
* valueCoding from http://ihris.org/fhir/ValueSet/agent-type-valueset (required)

Extension:      Specialty
Id:             specialty
Title:          "Specialty"
Description:    "Specialty."
* ^context.type = #element
* ^context.expression = "Basic"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Specialty"
* valueCoding from http://ihris.org/fhir/ValueSet/specialty-valueset (required)

Extension:      Organization
Id:             organization
Title:          "Organization"
Description:    "Organization."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Organization"
* valueCoding from http://ihris.org/fhir/ValueSet/organization-valueset (required)

Extension:      Qualification
Id:             qualification
Title:          "Profile/Qualification"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Profile/Qualification"
* valueCoding from http://ihris.org/fhir/ValueSet/qualification-valueset (required)

Extension:      Function
Id:             function
Title:          "Function"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Function"
* valueCoding from http://ihris.org/fhir/ValueSet/function-valueset (required)

Extension:      Service
Id:             service
Title:          "Service"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Service"
* valueCoding from http://ihris.org/fhir/ValueSet/service-valueset (required)

Extension:      StudyLevel
Id:             study-level
Title:          "Level of Study"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Level of Study"
* valueCoding from http://ihris.org/fhir/ValueSet/study-level-valueset (required)

Instance:       Situation
InstanceOf:     IhrisQuestionnaire
Usage:          #definition
* title = "iHRIS Situation Information Workflow"
* description = "iHRIS workflow to record a Situation Information"
* id = "situation"
* url = "http://ihris.org/fhir/Questionnaire/situation"
* name = "situation"
* status = #active
* date = 2020-09-02
* purpose = "Situation information."

* item[0].linkId = "Basic"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/situation-profile"
* item[0].text = "Situation"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/situation-profile#Basic.extension:agent-type.value[x]:valueCoding"
* item[0].item[0].text = "Agent Type"
* item[0].item[0].type = #choice
* item[0].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/agent-type-valueset"
* item[0].item[0].required = true
* item[0].item[0].repeats = false

* item[0].item[1].linkId = "Basic.extension[1]"
* item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/situation-profile#Basic.extension:organization.value[x]:valueCoding"
* item[0].item[1].text = "Organization"
* item[0].item[1].type = #choice
* item[0].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/organization-valueset"
* item[0].item[1].required = true
* item[0].item[1].repeats = false
* item[0].item[1].enableWhen[0].question = "Basic.extension[0]"
* item[0].item[1].enableWhen[0].operator = #=
* item[0].item[1].enableWhen[0].answerCoding = agent-type-codesystem#contractualpartners

* item[0].item[2].linkId = "Basic.extension[2]"
* item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/situation-profile#Basic.extension:qualification.value[x]:valueCoding"
* item[0].item[2].text = "Profile/Qualification"
* item[0].item[2].type = #choice
* item[0].item[2].answerValueSet = "http://ihris.org/fhir/ValueSet/qualification-valueset"
* item[0].item[2].required = true
* item[0].item[2].repeats = false

* item[0].item[3].linkId = "Basic.extension[3]"
* item[0].item[3].definition = "http://ihris.org/fhir/StructureDefinition/situation-profile#Basic.extension:function.value[x]:valueCoding"
* item[0].item[3].text = "Function"
* item[0].item[3].type = #choice
* item[0].item[3].answerValueSet = "http://ihris.org/fhir/ValueSet/function-valueset"
* item[0].item[3].required = true
* item[0].item[3].repeats = false

* item[0].item[4].linkId = "Basic.extension[4]"
* item[0].item[4].definition = "http://ihris.org/fhir/StructureDefinition/situation-profile#Basic.extension:service.value[x]:valueCoding"
* item[0].item[4].text = "Service"
* item[0].item[4].type = #choice
* item[0].item[4].answerValueSet = "http://ihris.org/fhir/ValueSet/service-valueset"
* item[0].item[4].required = true
* item[0].item[4].repeats = false

* item[0].item[5].linkId = "Basic.extension[5]"
* item[0].item[5].definition = "http://ihris.org/fhir/StructureDefinition/situation-profile#Basic.extension:study-level.value[x]:valueCoding"
* item[0].item[5].text = "Level of Study"
* item[0].item[5].type = #choice
* item[0].item[5].answerValueSet = "http://ihris.org/fhir/ValueSet/study-level-valueset"
* item[0].item[5].required = true
* item[0].item[5].repeats = false

* item[0].item[6].linkId = "Basic.extension[6]"
* item[0].item[6].definition = "http://ihris.org/fhir/StructureDefinition/situation-profile#Basic.extension:specialty.value[x]:valueCoding"
* item[0].item[6].text = "Specialty"
* item[0].item[6].type = #choice
* item[0].item[6].answerValueSet = "http://ihris.org/fhir/ValueSet/specialty-valueset"
* item[0].item[6].required = false
* item[0].item[6].repeats = false

Instance:       ihris-page-situation
InstanceOf:     IhrisPage
Title:          "Situation Information Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/situation-profile)
* extension[display].extension[link][0].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][0].extension[text].valueString = "View Health Worker"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/practitioner/FIELD"
* extension[display].extension[search][0].valueString = "Agent Type|extension.where(url='http://ihris.org/fhir/StructureDefinition/agent-type').valueCoding"
* extension[display].extension[field][0].extension[path].valueString = "Basic.extension:practitioner.value[x]:valueReference"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Situation Information"
* extension[section][0].extension[description].valueString = "Situation Information"
* extension[section][0].extension[name].valueString = "situationinformation"
* extension[section][0].extension[field][0].valueString = "Basic.extension:practitioner"
* extension[section][0].extension[field][1].valueString = "Basic.extension:agent-type"
* extension[section][0].extension[field][2].valueString = "Basic.extension:qualification"
* extension[section][0].extension[field][3].valueString = "Basic.extension:function"
* extension[section][0].extension[field][4].valueString = "Basic.extension:study-level"
* extension[section][0].extension[field][5].valueString = "Basic.extension:specialty"