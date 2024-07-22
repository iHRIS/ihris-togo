Profile:        TGOEducationTypeProfile
Parent:         Basic
Id:             tgo-education-type-profile
Title:          "Education Type"
Description:    "Education Type."
* code = NAResourceCodeSystem#standard-lists
* extension contains
    IhrisBasicName named name 1..1 MS
* extension[name].valueString 1..1 MS
* extension[name].valueString ^label = "Education Type"

Instance:       ihris-page-facility-type
InstanceOf:     IhrisPage
Title:          "Facility Type Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/facility-type-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Action|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Facility Type"
* extension[section][0].extension[description].valueString = "Facility Type"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-education-type
InstanceOf:     IhrisPage
Title:          "Education Type Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/tgo-education-type-profile)
* extension[display].extension[search][0].valueString = "Name|Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-basic-name').valueString"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/education-type/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "Basic.id"
* extension[display].extension[link][0].extension[text].valueString = "Edit"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "primary"
* extension[section][0].extension[title].valueString = "Education Type"
* extension[section][0].extension[description].valueString = "Education Type"
* extension[section][0].extension[name].valueString = "Education Type"
* extension[section][0].extension[field][0].valueString = "Basic.extension:name"

Instance:       ihris-page-profession-group
InstanceOf:     IhrisPage
Title:          "Profession Group"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/profession-group-profile)
* extension[display].extension[search][0].valueString = "Name|Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-basic-name').valueString"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/profession-group/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "Basic.id"
* extension[display].extension[link][0].extension[text].valueString = "Edit"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "primary"
* extension[section][0].extension[title].valueString = "Profession Group"
* extension[section][0].extension[description].valueString = "Profession Group"
* extension[section][0].extension[name].valueString = "Profession Group"
* extension[section][0].extension[field][0].valueString = "Basic.extension:name"

Instance:       ihris-page-profession-subgroup
InstanceOf:     IhrisPage
Title:          "Profession SubGroup"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/profession-subgroup-profile)
* extension[display].extension[search][0].valueString = "Name|Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-basic-name').valueString"
* extension[display].extension[search][1].valueString = "Profession Group|Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/profession-parent').valueReference"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/profession-subgroup/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "Basic.id"
* extension[display].extension[link][0].extension[text].valueString = "Edit"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "primary"
* extension[section][0].extension[title].valueString = "Profession Sub-Group"
* extension[section][0].extension[description].valueString = "Profession Sub-Group"
* extension[section][0].extension[name].valueString = "Profession Sub-Group"
* extension[section][0].extension[field][0].valueString = "Basic.extension:name"
* extension[section][0].extension[field][1].valueString = "Basic.extension:profession-parent"

Instance:       ihris-page-qualification
InstanceOf:     IhrisPage
Title:          "Qualification"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/qualification-profile)
* extension[display].extension[search][0].valueString = "Name|Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-basic-name').valueString"
* extension[display].extension[search][1].valueString = "Profession Sub-Group|Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/profession-parent').valueReference"
* extension[display].extension[filter][0].valueString = "Name|name:contains"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/qualification/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "Basic.id"
* extension[display].extension[link][0].extension[text].valueString = "Edit"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "primary"
* extension[section][0].extension[title].valueString = "Qualification"
* extension[section][0].extension[description].valueString = "Qualification"
* extension[section][0].extension[name].valueString = "Qualification"
* extension[section][0].extension[field][0].valueString = "Basic.extension:name"
* extension[section][0].extension[field][1].valueString = "Basic.extension:profession-parent"

Instance:       ihris-page-civil-servant-category
InstanceOf:     IhrisPage
Title:          "Civil Servant Category"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/civil-servant-category-profile)
* extension[display].extension[search][0].valueString = "Name|Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-basic-name').valueString"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/civil-servant-category/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "Basic.id"
* extension[display].extension[link][0].extension[text].valueString = "Edit"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "primary"
* extension[section][0].extension[title].valueString = "Civil Servant Category"
* extension[section][0].extension[description].valueString = "Civil Servant Category"
* extension[section][0].extension[name].valueString = "Civil Servant Category"
* extension[section][0].extension[field][0].valueString = "Basic.extension:name"

Instance:       ihris-page-salary-index
InstanceOf:     IhrisPage
Title:          "Salary Index"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/salary-index-profile)
* extension[display].extension[search][0].valueString = "Name|Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-basic-name').valueString"
* extension[display].extension[search][1].valueString = "Civil Servant Category|Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/category-parent').valueReference"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/salary-index/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "Basic.id"
* extension[display].extension[link][0].extension[text].valueString = "Edit"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "primary"
* extension[section][0].extension[title].valueString = "Salary Index"
* extension[section][0].extension[description].valueString = "Salary Index"
* extension[section][0].extension[name].valueString = "Salary Index"
* extension[section][0].extension[field][0].valueString = "Basic.extension:name"
* extension[section][0].extension[field][1].valueString = "Basic.extension:category-parent"

Instance:       ihris-page-echelon
InstanceOf:     IhrisPage
Title:          "Salary Index"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/echelon-profile)
* extension[display].extension[search][0].valueString = "Name|Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-basic-name').valueString"
* extension[display].extension[search][1].valueString = "Salary Index|Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/category-parent').valueReference"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/echelon/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "Basic.id"
* extension[display].extension[link][0].extension[text].valueString = "Edit"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "primary"
* extension[section][0].extension[title].valueString = "Echelon"
* extension[section][0].extension[description].valueString = "Salary Index"
* extension[section][0].extension[name].valueString = "Echelon"
* extension[section][0].extension[field][0].valueString = "Basic.extension:name"
* extension[section][0].extension[field][1].valueString = "Basic.extension:category-parent"

Instance:       ihris-page-class
InstanceOf:     IhrisPage
Title:          "Class"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/class-profile)
* extension[display].extension[search][0].valueString = "Name|Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-basic-name').valueString"
* extension[display].extension[search][1].valueString = "Salary Index|Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/category-parent').valueReference"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/class/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "Basic.id"
* extension[display].extension[link][0].extension[text].valueString = "Edit"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "primary"
* extension[section][0].extension[title].valueString = "Class"
* extension[section][0].extension[description].valueString = "Class"
* extension[section][0].extension[name].valueString = "Class"
* extension[section][0].extension[field][0].valueString = "Basic.extension:name"
* extension[section][0].extension[field][1].valueString = "Basic.extension:category-parent"

Instance:       ihris-page-nationality
InstanceOf:     IhrisPage
Title:          "Nationality Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/nationality-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Action|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Nationality"
* extension[section][0].extension[description].valueString = "Nationality"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-organization
InstanceOf:     IhrisPage
Title:          "Organization Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/organization-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Action|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Organization"
* extension[section][0].extension[description].valueString = "Organization"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-budget-type
InstanceOf:     IhrisPage
Title:          "Budget Type Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/budget-type-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Action|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Budget Type"
* extension[section][0].extension[description].valueString = "Budget Type"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-ihris-relation
InstanceOf:     IhrisPage
Title:          "Relationship Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-relation-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Action|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Relationship"
* extension[section][0].extension[description].valueString = "Relationship"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-bank
InstanceOf:     IhrisPage
Title:          "Bank Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/bank-name-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Action|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Bank"
* extension[section][0].extension[description].valueString = "Bank"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-salary-scale
InstanceOf:     IhrisPage
Title:          "iHRIS Salary Scale CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-salary-scale-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[section][0].extension[title].valueString = "Salary Scale"
* extension[section][0].extension[description].valueString = "Salary Scale"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-agent-status-list
InstanceOf:     IhrisPage
Title:          "iHRIS Agent Status CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/agent-status-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[section][0].extension[title].valueString = "Agent Status"
* extension[section][0].extension[description].valueString = "Agent Status"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-disciplinary-action-taken
InstanceOf:     IhrisPage
Title:          "Disciplinary Action Taken Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/disciplinary-action-taken-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Action|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Disciplinary Action Taken"
* extension[section][0].extension[description].valueString = "Disciplinary Action Taken"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-identifier-type
InstanceOf:     IhrisPage
Title:          "Identifier Type Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/tgo-id-type-codesystem)
* extension[display].extension[search][0].valueString = "Display|display"
* extension[display].extension[search][1].valueString = "Code|code"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Identifier Type"
* extension[section][0].extension[description].valueString = "Identifier Type"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"

Instance:       ihris-page-civility
InstanceOf:     IhrisPage
Title:          "Civility Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/civility-codesystem)
* extension[display].extension[search][0].valueString = "Display|display"
* extension[display].extension[search][1].valueString = "Code|code"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Civility"
* extension[section][0].extension[description].valueString = "Civility"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"

Instance:       ihris-page-agent-type
InstanceOf:     IhrisPage
Title:          "Agent Type Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/agent-type-codesystem)
* extension[display].extension[search][0].valueString = "Display|display"
* extension[display].extension[search][1].valueString = "Code|code"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Agent Type"
* extension[section][0].extension[description].valueString = "Agent Type"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"

Instance:       ihris-page-service
InstanceOf:     IhrisPage
Title:          "Service Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/service-codesystem)
* extension[display].extension[search][0].valueString = "Display|display"
* extension[display].extension[search][1].valueString = "Code|code"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Service"
* extension[section][0].extension[description].valueString = "Service"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"

Instance:       ihris-page-study-level
InstanceOf:     IhrisPage
Title:          "Study Level Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/study-level-codesystem)
* extension[display].extension[search][0].valueString = "Display|display"
* extension[display].extension[search][1].valueString = "Code|code"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Study Level"
* extension[section][0].extension[description].valueString = "Study Level"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"

Instance:       ihris-page-grade
InstanceOf:     IhrisPage
Title:          "Grade Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/grade-codesystem)
* extension[display].extension[search][0].valueString = "Display|display"
* extension[display].extension[search][1].valueString = "Code|code"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Grade"
* extension[section][0].extension[description].valueString = "Grade"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"

Instance:       ihris-page-contractual-category
InstanceOf:     IhrisPage
Title:          "Contractual Category Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/contractual-category-codesystem)
* extension[display].extension[search][0].valueString = "Display|display"
* extension[display].extension[search][1].valueString = "Code|code"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Contractual Category"
* extension[section][0].extension[description].valueString = "Contractual Category"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"

Instance:       ihris-page-sector
InstanceOf:     IhrisPage
Title:          "Sector Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/facility-sector-codesystem)
* extension[display].extension[search][0].valueString = "Display|display"
* extension[display].extension[search][1].valueString = "Code|code"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Sector"
* extension[section][0].extension[description].valueString = "Sector"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"

Instance:       ihris-page-specialty
InstanceOf:     IhrisPage
Title:          "Specialty Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/specialty-codesystem)
* extension[display].extension[search][0].valueString = "Display|display"
* extension[display].extension[search][1].valueString = "Code|code"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Specialty"
* extension[section][0].extension[description].valueString = "Specialty"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"

Instance:       ihris-page-training-fund
InstanceOf:     IhrisPage
Title:          "Training Fund Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/training-fund-codesystem)
* extension[display].extension[search][0].valueString = "Display|display"
* extension[display].extension[search][1].valueString = "Code|code"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Training Fund"
* extension[section][0].extension[description].valueString = "Training Fund"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"

Instance:       ihris-page-institution-type
InstanceOf:     IhrisPage
Title:          "Institution Type Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/institution-type-codesystem)
* extension[display].extension[search][0].valueString = "Display|display"
* extension[display].extension[search][1].valueString = "Code|code"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Institution Type"
* extension[section][0].extension[description].valueString = "Institution Type"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"

Extension:      EducationType
Id:             education-type
Title:          "Education Type"
Description:    "Education Type"
* ^context[0].type = #element
* ^context[0].expression = "Basic"
* value[x] only Reference(TGOEducationTypeProfile)
* valueReference 1..1 MS
* valueReference ^label = "Education Type"