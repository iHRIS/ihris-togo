Profile:        ClassificationProfile
Parent:         IhrisPractitionerBasic
Id:             classification-profile
Title:          "Classification Information"
Description:    "Classification Information Profile."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Practitioner"
* extension contains
    Grade named grade 1..1 MS and
    CivilServantCategory named civil-servant-category 1..1 MS and
    ContractualCategory named contractual-category 1..1 MS and
    ClassificationClass named classification-class 1..1 MS and
    Echelon named echelon 1..1 MS and
    DateLastAdminSituation named date-last-admin-situation 0..1 MS and
    ReferenceEchelon named reference-echelon 1..1 MS and
    ClassificationCategory named classification-category 1..1 MS
* extension[grade]  1..1 MS
* extension[grade]  ^label = "Grade"
* extension[grade].valueCoding MS
* extension[classification-category]  1..1 MS
* extension[classification-category]  ^label = "Classification Category"
* extension[classification-category].valueCoding MS
* extension[civil-servant-category]  1..1 MS
* extension[civil-servant-category]  ^label = "Civil servant category"
* extension[civil-servant-category].valueCoding MS
* extension[contractual-category]  1..1 MS
* extension[contractual-category]  ^label = "Contractual Category"
* extension[contractual-category].valueCoding MS
* extension[classification-class]  1..1 MS
* extension[classification-class]  ^label = "Class"
* extension[classification-class].valueCoding MS
* extension[echelon]  1..1 MS
* extension[echelon]  ^label = "Echelon"
* extension[echelon].valueCoding MS
* extension[date-last-admin-situation]  1..1 MS
* extension[date-last-admin-situation]  ^label = "Date of last Administrative situation"
* extension[date-last-admin-situation].valueDate MS
* extension[reference-echelon]  1..1 MS
* extension[reference-echelon]  ^label = "Reference Echelon"
* extension[reference-echelon].valueString MS

Extension:      Grade
Id:             grade
Title:          "Grade"
Description:    "Grade."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Grade"
* valueCoding from http://ihris.org/fhir/ValueSet/grade-valueset (required)

Extension:      ClassificationCategory
Id:             classification-category
Title:          "Classification Category"
Description:    "Classification Category."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Classification Category"
* valueCoding from ClassificationCategoryValueSet (required)

Extension:      CivilServantCategory
Id:             civil-servant-category
Title:          "Civil Servant Category"
Description:    "Civil Servant Category."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Civil Servant Category"
* valueCoding from http://ihris.org/fhir/ValueSet/civil-servant-category-valueset (required)

Extension:      ContractualCategory
Id:             contractual-category
Title:          "Contractual Category"
Description:    "Contractual Category."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Contractual Category"
* valueCoding from http://ihris.org/fhir/ValueSet/contractual-category-valueset (required)

Extension:      ClassificationClass
Id:             classification-class
Title:          "Classification Class"
Description:    "Classification Class."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Classification Class"
* valueCoding from http://ihris.org/fhir/ValueSet/classification-class-valueset (required)

Extension:      Echelon
Id:             echelon
Title:          "Echelon"
Description:    "Echelon."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Echelon"
* valueCoding from http://ihris.org/fhir/ValueSet/echelon-valueset (required)

Extension:      DateLastAdminSituation
Id:             date-last-admin-situation
Title:          "Date of last Administrative situation"
Description:    "Date of last Administrative situation."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only date
* valueDate 1..1 MS
* valueDate ^label = "Date of last Administrative situation"

Extension:      ReferenceEchelon
Id:             reference-echelon
Title:          "Reference Echelon"
Description:    "Reference Echelon."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only string
* valueString 1..1 MS
* valueString ^label = "Reference Echelon"

Instance:       Classification
InstanceOf:     IhrisQuestionnaire
Usage:          #definition
* title = "iHRIS Classification Information Workflow"
* description = "iHRIS workflow to record a Classification Information"
* id = "classification"
* url = "http://ihris.org/fhir/Questionnaire/classification"
* name = "classification"
* status = #active
* date = 2020-09-02
* purpose = "Classification information."

* item[0].linkId = "Basic"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/classification-profile"
* item[0].text = "Classification"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/classification-profile#Basic.extension:grade.value[x]:valueCoding"
* item[0].item[0].text = "Grade"
* item[0].item[0].type = #choice
* item[0].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/grade-valueset"
* item[0].item[0].required = true
* item[0].item[0].repeats = false

* item[0].item[1].linkId = "Basic.extension[1]"
* item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/classification-profile#Basic.extension:classification-category.value[x]:valueCoding"
* item[0].item[1].text = "Classification Category"
* item[0].item[1].type = #choice
* item[0].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/classification-category-valueset"
* item[0].item[1].required = true
* item[0].item[1].repeats = false

* item[0].item[2].linkId = "Basic.extension[2]"
* item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/classification-profile#Basic.extension:civil-servant-category.value[x]:valueCoding"
* item[0].item[2].text = "Civil Servant Category"
* item[0].item[2].type = #choice
* item[0].item[2].answerValueSet = "http://ihris.org/fhir/ValueSet/civil-servant-category-valueset"
* item[0].item[2].required = true
* item[0].item[2].repeats = false
* item[0].item[2].enableWhen[0].question = "Basic.extension[1]"
* item[0].item[2].enableWhen[0].operator = #=
* item[0].item[2].enableWhen[0].answerCoding = classification-category-codesystem#civilservant

* item[0].item[3].linkId = "Basic.extension[3]"
* item[0].item[3].definition = "http://ihris.org/fhir/StructureDefinition/classification-profile#Basic.extension:contractual-category.value[x]:valueCoding"
* item[0].item[3].text = "Cantractual Category"
* item[0].item[3].type = #choice
* item[0].item[3].answerValueSet = "http://ihris.org/fhir/ValueSet/contractual-category-valueset"
* item[0].item[3].required = true
* item[0].item[3].repeats = false
* item[0].item[3].enableWhen[0].question = "Basic.extension[1]"
* item[0].item[3].enableWhen[0].operator = #=
* item[0].item[3].enableWhen[0].answerCoding = classification-category-codesystem#contract

* item[0].item[4].linkId = "Basic.extension[4]"
* item[0].item[4].definition = "http://ihris.org/fhir/StructureDefinition/classification-profile#Basic.extension:classification-class.value[x]:valueCoding"
* item[0].item[4].text = "Class"
* item[0].item[4].type = #choice
* item[0].item[4].answerValueSet = "http://ihris.org/fhir/ValueSet/classification-class-valueset"
* item[0].item[4].required = true
* item[0].item[4].repeats = false

* item[0].item[5].linkId = "Basic.extension[5]"
* item[0].item[5].definition = "http://ihris.org/fhir/StructureDefinition/classification-profile#Basic.extension:echelon.value[x]:valueCoding"
* item[0].item[5].text = "Echelon"
* item[0].item[5].type = #choice
* item[0].item[5].answerValueSet = "http://ihris.org/fhir/ValueSet/echelon-valueset"
* item[0].item[5].required = true
* item[0].item[5].repeats = false

* item[0].item[6].linkId = "Basic.extension[6]"
* item[0].item[6].definition = "http://ihris.org/fhir/StructureDefinition/classification-profile#Basic.extension:date-last-admin-situation.value[x]:valueDate"
* item[0].item[6].text = "Date of last Administrative situation"
* item[0].item[6].type = #date
* item[0].item[6].required = false
* item[0].item[6].repeats = false

* item[0].item[7].linkId = "Basic.extension[7]"
* item[0].item[7].definition = "http://ihris.org/fhir/StructureDefinition/classification-profile#Basic.extension:reference-echelon.value[x]:valueString"
* item[0].item[7].text = "Reference Echelon"
* item[0].item[7].type = #string
* item[0].item[7].required = false
* item[0].item[7].repeats = false

Instance:       ihris-page-classification
InstanceOf:     IhrisPage
Title:          "Classification Information Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/classification-profile)
* extension[display].extension[link][0].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][0].extension[text].valueString = "View Health Worker"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/practitioner/FIELD"
* extension[display].extension[search][0].valueString = "Grade|extension.where(url='http://ihris.org/fhir/StructureDefinition/grade').valueCoding"
* extension[display].extension[field][0].extension[path].valueString = "Basic.extension:practitioner.value[x]:valueReference"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Classification Information"
* extension[section][0].extension[description].valueString = "Classification Information"
* extension[section][0].extension[name].valueString = "classificationinformation"
* extension[section][0].extension[field][0].valueString = "Basic.extension:practitioner"
* extension[section][0].extension[field][1].valueString = "Basic.extension:grade"
* extension[section][0].extension[field][2].valueString = "Basic.extension:classification-category"
* extension[section][0].extension[field][3].valueString = "Basic.extension:civil-servant-category"
* extension[section][0].extension[field][4].valueString = "Basic.extension:contractual-category"
* extension[section][0].extension[field][5].valueString = "Basic.extension:classification-class"
* extension[section][0].extension[field][6].valueString = "Basic.extension:echelon"
* extension[section][0].extension[field][7].valueString = "Basic.extension:date-last-admin-situation"
* extension[section][0].extension[field][8].valueString = "Basic.extension:reference-echelon"