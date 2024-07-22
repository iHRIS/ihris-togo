Profile:        ClassificationProfile
Parent:         IhrisPractitionerBasic
Id:             classification-profile
Title:          "Classification Information"
Description:    "Classification Information Profile."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Practitioner"
* extension contains
    Grade named grade 1..1 MS and
    BasicSalary named basic-salary 1..1 MS and
    GrossSalary named gross-salary 1..1 MS and
    NetSalary named net-salary 1..1 MS and
    Bonus named bonus 1..1 MS and
    Deductions named deduction 1..1 MS and
    AgentType named agent-type 1..1 MS and
    BudgetType named budget-type 1..1 MS and
    Organization named organization 1..1 MS and
    CivilServantCategoryReference named civil-servant-category-reference 1..1 MS and
    SalaryIndexReference named salary-index-reference 1..1 MS and
    EchelonReference named echelon-reference 1..1 MS and
    ClassReference named class-reference 1..1 MS and
    DateLastAdminSituation named date-last-admin-situation 0..1 MS
* extension[grade]  1..1 MS
* extension[grade]  ^label = "Grade"
* extension[grade].valueCoding MS
* extension[agent-type]  1..1 MS
* extension[agent-type]  ^label = "Agent Type"
* extension[agent-type].valueCoding MS
* extension[budget-type]  1..1 MS
* extension[budget-type]  ^label = "Budget Type"
* extension[budget-type].valueCoding MS
* extension[organization]  1..1 MS
* extension[organization]  ^label = "Organization"
* extension[organization].valueCoding MS
* extension[civil-servant-category-reference]  1..1 MS
* extension[civil-servant-category-reference]  ^label = "Civil servant category"
* extension[civil-servant-category-reference].valueReference MS
* extension[salary-index-reference]  1..1 MS
* extension[salary-index-reference]  ^label = "Salary index"
* extension[salary-index-reference].valueReference MS
* extension[echelon-reference]  1..1 MS
* extension[echelon-reference]  ^label = "Echelon"
* extension[echelon-reference].valueReference MS
* extension[class-reference]  1..1 MS
* extension[class-reference]  ^label = "Class"
* extension[class-reference].valueReference MS
* extension[date-last-admin-situation]  1..1 MS
* extension[date-last-admin-situation]  ^label = "Date of last Administrative situation"
* extension[date-last-admin-situation].valueDate MS
* extension[basic-salary]  1..1 MS
* extension[basic-salary]  ^label = "Basic Salary"
* extension[basic-salary].valueInteger MS
* extension[gross-salary]  1..1 MS
* extension[gross-salary]  ^label = "Gross Salary"
* extension[gross-salary].valueInteger MS
* extension[net-salary]  1..1 MS
* extension[net-salary]  ^label = "Net Salary"
* extension[net-salary].valueInteger MS
* extension[bonus]  1..1 MS
* extension[bonus]  ^label = "Bonus"
* extension[bonus].valueInteger MS
* extension[deduction]  1..1 MS
* extension[deduction]  ^label = "Deductions"
* extension[deduction].valueInteger MS

Profile:        CivilServantCategoryProfile
Parent:         Basic
Id:             civil-servant-category-profile
Title:          "Civil Servant Category"
Description:    "Civil Servant Category."
* code = TGOResourceCodeSystem#standard-lists
* extension contains
    IhrisBasicName named name 1..1 MS
* extension[name].valueString 1..1 MS
* extension[name].valueString ^label = "Civil Servant Category"

Profile:        SalaryIndexProfile
Parent:         Basic
Id:             salary-index-profile
Title:          "Salary Index"
Description:    "Salary Index."
* code = TGOResourceCodeSystem#standard-lists
* extension contains
    IhrisBasicName named name 1..1 MS and
    CategoryParent named category-parent 1..1 MS
* extension[name].valueString 1..1 MS
* extension[name].valueString ^label = "Index"
* extension[category-parent].valueReference 1..1 MS
* extension[category-parent].valueReference ^label = "Civil Servant Category"

Profile:        EchelonProfile
Parent:         Basic
Id:             echelon-profile
Title:          "Echelon"
Description:    "Echelon."
* code = TGOResourceCodeSystem#standard-lists
* extension contains
    IhrisBasicName named name 1..1 MS and
    CategoryParent named category-parent 1..* MS
* extension[name].valueString 1..1 MS
* extension[name].valueString ^label = "Echelon"
* extension[category-parent].valueReference 1..1 MS
* extension[category-parent].valueReference ^label = "Salary Index"

Profile:        ClassProfile
Parent:         Basic
Id:             class-profile
Title:          "Class"
Description:    "Class."
* code = TGOResourceCodeSystem#standard-lists
* extension contains
    IhrisBasicName named name 1..1 MS and
    CategoryParent named category-parent 1..* MS
* extension[name].valueString 1..1 MS
* extension[name].valueString ^label = "Class"
* extension[category-parent].valueReference 1..1 MS
* extension[category-parent].valueReference ^label = "Salary Index"

Extension:      CategoryParent
Id:             category-parent
Title:          "Category Parent"
Description:    "Category Parent."
* ^context[0].type = #element
* ^context[0].expression = "Basic"
* value[x] only Reference(CivilServantCategoryProfile or SalaryIndexProfile)
* valueReference 1..1 MS
* valueReference ^label = "Category Parent"

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

Extension:      BudgetType
Id:             budget-type
Title:          "Budget Type"
Description:    "Budget Type."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Budget Type"
* valueCoding from BudgetTypeValueSet (required)

Extension:      CivilServantCategoryReference
Id:             civil-servant-category-reference
Title:          "Civil Servant Category"
Description:    "Civil Servant Category."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only Reference(CivilServantCategoryProfile)
* valueReference 1..1 MS
* valueReference ^label = "Civil Servant Category"

Extension:      SalaryIndexReference
Id:             salary-index-reference
Title:          "Salary Index Reference"
Description:    "Salary Index Reference."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only Reference(SalaryIndexProfile)
* valueReference 1..1 MS
* valueReference ^label = "Salary Index"

Extension:      EchelonReference
Id:             echelon-reference
Title:          "Echelon Reference"
Description:    "Echelon Reference."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only Reference(EchelonProfile)
* valueReference 1..1 MS
* valueReference ^label = "Echelon"

Extension:      ClassReference
Id:             class-reference
Title:          "Class Reference"
Description:    "Class Reference."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only Reference(ClassProfile)
* valueReference 1..1 MS
* valueReference ^label = "Class"

Extension:      DateLastAdminSituation
Id:             date-last-admin-situation
Title:          "Date of last Administrative situation"
Description:    "Date of last Administrative situation."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only date
* valueDate 1..1 MS
* valueDate ^label = "Date of last Administrative situation"

Extension:      BasicSalary
Id:             basic-salary
Title:          "Basic Salary"
Description:    "Basic Salary."
* ^context.type = #element
* ^context.expression = "Basic"
* value[x] only integer
* valueInteger 1..1 MS
* valueInteger ^label = "Basic Salary"

Extension:      GrossSalary
Id:             gross-salary
Title:          "Gross Salary"
Description:    "Gross Salary."
* ^context.type = #element
* ^context.expression = "Basic"
* value[x] only integer
* valueInteger 1..1 MS
* valueInteger ^label = "Gross Salary"

Extension:      NetSalary
Id:             net-salary
Title:          "Net Salary"
Description:    "Net Salary."
* ^context.type = #element
* ^context.expression = "Basic"
* value[x] only integer
* valueInteger 1..1 MS
* valueInteger ^label = "Net Salary"

Extension:      Bonus
Id:             bonus
Title:          "Bonus"
Description:    "Bonus."
* ^context.type = #element
* ^context.expression = "Basic"
* value[x] only integer
* valueInteger 1..1 MS
* valueInteger ^label = "Bonus"

Extension:      Deductions
Id:             deduction
Title:          "Deductions"
Description:    "Deductions."
* ^context.type = #element
* ^context.expression = "Basic"
* value[x] only integer
* valueInteger 1..1 MS
* valueInteger ^label = "Deductions"

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

* item[0].item[0].linkId = "Basic.extension[0]#tree"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/classification-profile#Basic.extension:salary-index-reference.value[x]:valueReference"
* item[0].item[0].text = "Salary Index"
* item[0].item[0].type = #reference
* item[0].item[0].required = true
* item[0].item[0].repeats = false

* item[0].item[1].linkId = "Basic.extension[1]"
* item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/classification-profile#Basic.extension:bonus.value[x]:valueInteger"
* item[0].item[1].text = "Bonus"
* item[0].item[1].type = #integer
* item[0].item[1].required = false
* item[0].item[1].repeats = false

* item[0].item[2].linkId = "Basic.extension[2]"
* item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/classification-profile#Basic.extension:deduction.value[x]:valueInteger"
* item[0].item[2].text = "Deductions"
* item[0].item[2].type = #integer
* item[0].item[2].required = false
* item[0].item[2].repeats = false

* item[0].item[3].linkId = "Basic.extension[3]"
* item[0].item[3].definition = "http://ihris.org/fhir/StructureDefinition/classification-profile#Basic.extension:agent-type.value[x]:valueCoding"
* item[0].item[3].text = "Agent Type"
* item[0].item[3].type = #choice
* item[0].item[3].answerValueSet = "http://ihris.org/fhir/ValueSet/agent-type-valueset"
* item[0].item[3].required = true
* item[0].item[3].repeats = false

* item[0].item[4].linkId = "Basic.extension[4]"
* item[0].item[4].definition = "http://ihris.org/fhir/StructureDefinition/classification-profile#Basic.extension:budget-type.value[x]:valueCoding"
* item[0].item[4].text = "Budget Type"
* item[0].item[4].type = #choice
* item[0].item[4].answerValueSet = "http://ihris.org/fhir/ValueSet/budget-type-valueset"
* item[0].item[4].required = true
* item[0].item[4].repeats = false

* item[0].item[5].linkId = "Basic.extension[5]"
* item[0].item[5].definition = "http://ihris.org/fhir/StructureDefinition/classification-profile#Basic.extension:organization.value[x]:valueCoding"
* item[0].item[5].text = "Organization"
* item[0].item[5].type = #choice
* item[0].item[5].answerValueSet = "http://ihris.org/fhir/ValueSet/organization-valueset"
* item[0].item[5].required = true
* item[0].item[5].repeats = false
* item[0].item[5].enableWhen[0].question = "Basic.extension[3]"
* item[0].item[5].enableWhen[0].operator = #=
* item[0].item[5].enableWhen[0].answerCoding = agent-type-codesystem#contractualpartners

* item[0].item[6].linkId = "Basic.extension[6]"
* item[0].item[6].definition = "http://ihris.org/fhir/StructureDefinition/classification-profile#Basic.extension:grade.value[x]:valueCoding"
* item[0].item[6].text = "Grade"
* item[0].item[6].type = #choice
* item[0].item[6].answerValueSet = "http://ihris.org/fhir/ValueSet/grade-valueset"
* item[0].item[6].required = true
* item[0].item[6].repeats = false

* item[0].item[7].linkId = "Basic.extension[7]"
* item[0].item[7].definition = "http://ihris.org/fhir/StructureDefinition/classification-profile#Basic.extension:date-last-admin-situation.value[x]:valueDate"
* item[0].item[7].text = "Date of last Administrative situation"
* item[0].item[7].type = #date
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
* extension[section][0].extension[field][1].valueString = "Basic.extension:salary-index-reference"
* extension[section][0].extension[field][2].valueString = "Basic.extension:basic-salary"
* extension[section][0].extension[field][3].valueString = "Basic.extension:bonus"
* extension[section][0].extension[field][4].valueString = "Basic.extension:deduction"
* extension[section][0].extension[field][5].valueString = "Basic.extension:gross-salary"
* extension[section][0].extension[field][6].valueString = "Basic.extension:net-salary"
* extension[section][0].extension[field][7].valueString = "Basic.extension:grade"
* extension[section][0].extension[field][8].valueString = "Basic.extension:agent-type"
* extension[section][0].extension[field][9].valueString = "Basic.extension:budget-type"
* extension[section][0].extension[field][10].valueString = "Basic.extension:organization"
* extension[section][0].extension[field][11].valueString = "Basic.extension:civil-servant-category-reference"
* extension[section][0].extension[field][12].valueString = "Basic.extension:class-reference"
* extension[section][0].extension[field][13].valueString = "Basic.extension:echelon-reference"
* extension[section][0].extension[field][14].valueString = "Basic.extension:date-last-admin-situation"
* extension[section][0].extension[field][15].valueString = "Basic.extension:reference-echelon"

Instance:       ihris-search-category-parent
InstanceOf:     SearchParameter
Title:          "search parameter for category-parent"
Usage:          #definition
* url = "http://ihris.org/fhir/SearchParameter/ihris-search-profession-parent"
* description = "search parameter for category-parent"
* name = "search parameter for category-parent"
* status = #active
* experimental = false
* code = #categoryparent
* base[0] = #Basic
* type = #reference
* expression = "Basic.extension('http://ihris.org/fhir/StructureDefinition/category-parent')"
* target[0] = #Basic