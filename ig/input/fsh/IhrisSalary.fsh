Profile:        IhrisBasicSalary
Parent:         IhrisPractitionerBasic
Id:             ihris-basic-salary
Title:          "Salary Information"
Description:    "iHRIS Profile of the Basic resource for Salary."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Worker"
* extension contains
    IhrisSalary named salary 1..1 MS
* extension[salary] ^label = "Salary Information"
* extension[salary].extension[salaryScale] ^label = "Pay Grade"
* extension[salary].extension[salaryScale].valueCoding MS
* extension[salary].extension[bsalary] ^label = "Basic Salary"
* extension[salary].extension[bsalary].valueDecimal MS
* extension[salary].extension[allowance] ^label = "Allowance"
* extension[salary].extension[allowance].valueDecimal MS
* extension[salary].extension[benefits] ^label = "Benefits"
* extension[salary].extension[benefits].valueDecimal MS
* extension[salary].extension[net] ^label = "Net Salary"
* extension[salary].extension[net].valueDecimal MS
* extension[salary].extension[gross] ^label = "Gross Salary"
* extension[salary].extension[gross].valueDecimal MS
* extension[salary].extension[start-date] ^label = "Effective Start Date"
* extension[salary].extension[start-date].valueDate MS
* extension[salary].extension[end-date] ^label = "End Date"
* extension[salary].extension[end-date].valueDate MS
* extension[salary].extension[remark] ^label = "Remark"
* extension[salary].extension[remark].valueString MS
* extension[salary].extension[salarySource] ^label = "Salary Source"
* extension[salary].extension[salarySource].valueCoding MS
* extension[salary].extension[frequency] ^label = "Pay Frequency"
* extension[salary].extension[frequency].valueCoding MS
* extension[salary].extension[current] ^label = "Is Current"
* extension[salary].extension[current].valueBoolean MS
    
Extension:      IhrisSalary
Id:             ihris-salary
Title:          "Salary details"
* extension contains salaryladder 0..1 MS and
    salaryScale 0..1 MS and
    bsalary 0..1 MS and
    allowance 0..1 MS and
    benefits 0..1 MS and
    gross 0..1 MS and
    net 0..1 MS and
    start-date 1..1 MS and
    end-date 0..1 MS and
    remark 0..1 MS and
    salarySource 0..1 MS and
    frequency 0..1 MS and
    current 0..1 MS
* extension[salaryScale].value[x] only Coding
* extension[salaryScale].valueCoding MS
* extension[salaryScale].valueCoding ^label = "Pay Grade"
* extension[salaryScale].valueCoding from http://ihris.org/fhir/ValueSet/ihris-salary-grade (required)
* extension[bsalary].value[x] only decimal
* extension[bsalary].valueDecimal MS
* extension[bsalary].valueDecimal ^label = "Basic Salary"
* extension[allowance].value[x] only decimal
* extension[allowance].valueDecimal MS
* extension[allowance].valueDecimal ^label = "Allowance"
* extension[benefits].value[x] only decimal
* extension[benefits].valueDecimal MS
* extension[benefits].valueDecimal ^label = "Benefits"
* extension[gross].value[x] only decimal
* extension[gross].valueDecimal MS
* extension[gross].valueDecimal ^label = "Gross Salary"
* extension[net].value[x] only decimal
* extension[net].valueDecimal MS
* extension[net].valueDecimal ^label = "Net Salary"
* extension[start-date].value[x] only date
* extension[start-date].valueDate MS
* extension[start-date].valueDate ^label = "Effective Start Date"
* extension[end-date].value[x] only date
* extension[end-date].valueDate MS
* extension[end-date].valueDate ^label = "End Date"
* extension[remark].value[x] only string
* extension[remark].valueString MS
* extension[remark].valueString ^label = "Remark"
* extension[salarySource].value[x] only Coding
* extension[salarySource].valueCoding MS
* extension[salarySource].valueCoding ^label = "Salary Source"
* extension[salarySource].valueCoding from IhrisSalarySourceValueSet (required)
* extension[frequency].value[x] only Coding
* extension[frequency].valueCoding MS
* extension[frequency].valueCoding ^label = "Pay Frequency"
* extension[frequency].valueCoding from IhrisFrequencyValueSet (required)
* extension[current].value[x] only boolean
* extension[current].valueBoolean MS
* extension[current].valueBoolean ^label = "Is Current"

Instance:       IhrisPractitionerWorkflowSalary
InstanceOf:     IhrisQuestionnaire
Usage:          #definition
* title = "iHRIS Salary Workflow"
* description = "iHRIS workflow to record a Salary"
* id = "ihris-salary"
* url = "http://ihris.org/fhir/Questionnaire/ihris-salary"
* name = "ihris-salary"
* status = #active
* date = 2020-09-02
* purpose = "Workflow page for recording a Salary information."

* item[0].linkId = "Basic"
* item[0].text = "Salary Information"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-salary"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-salary#Basic.extension:salary"
* item[0].item[0].text = "Details"
* item[0].item[0].type = #group

* item[0].item[0].item[0].linkId = "Basic.extension[0].extension[0]"
* item[0].item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-salary#Basic.extension:salary.extension:salaryScale.value[x]:valueCoding"
* item[0].item[0].item[0].text = "Salary Scale"
* item[0].item[0].item[0].type = #choice
* item[0].item[0].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-salary-scale-valueset"
* item[0].item[0].item[0].required = false
* item[0].item[0].item[0].repeats = false

* item[0].item[0].item[1].linkId = "Basic.extension[0].extension[1]"
* item[0].item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-salary#Basic.extension:salary.extension:bsalary.value[x]:valueDecimal"
* item[0].item[0].item[1].text = "Basic Salary"
* item[0].item[0].item[1].type = #decimal
* item[0].item[0].item[1].required = false
* item[0].item[0].item[1].repeats = false

* item[0].item[0].item[2].linkId = "Basic.extension[0].extension[2]"
* item[0].item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-salary#Basic.extension:salary.extension:allowance.value[x]:valueDecimal"
* item[0].item[0].item[2].text = "Allowance"
* item[0].item[0].item[2].type = #decimal
* item[0].item[0].item[2].required = false
* item[0].item[0].item[2].repeats = false

* item[0].item[0].item[3].linkId = "Basic.extension[0].extension[3]"
* item[0].item[0].item[3].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-salary#Basic.extension:salary.extension:benefits.value[x]:valueDecimal"
* item[0].item[0].item[3].text = "Benefits"
* item[0].item[0].item[3].type = #decimal
* item[0].item[0].item[3].required = false
* item[0].item[0].item[3].repeats = false

* item[0].item[0].item[4].linkId = "Basic.extension[0].extension[4]"
* item[0].item[0].item[4].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-salary#Basic.extension:salary.extension:gross.value[x]:valueDecimal"
* item[0].item[0].item[4].text = "Gross Salary"
* item[0].item[0].item[4].type = #decimal
* item[0].item[0].item[4].required = false
* item[0].item[0].item[4].repeats = false

* item[0].item[0].item[5].linkId = "Basic.extension[0].extension[5]"
* item[0].item[0].item[5].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-salary#Basic.extension:salary.extension:net.value[x]:valueDecimal"
* item[0].item[0].item[5].text = "Net Salary"
* item[0].item[0].item[5].type = #decimal
* item[0].item[0].item[5].required = false
* item[0].item[0].item[5].repeats = false

* item[0].item[0].item[6].linkId = "Basic.extension[0].extension[6]"
* item[0].item[0].item[6].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-salary#Basic.extension:salary.extension:start-date.value[x]:valueDate"
* item[0].item[0].item[6].text = "Effective Start date"
* item[0].item[0].item[6].type = #date
* item[0].item[0].item[6].required = true
* item[0].item[0].item[6].repeats = false

* item[0].item[0].item[7].linkId = "Basic.extension[0].extension[7]"
* item[0].item[0].item[7].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-salary#Basic.extension:salary.extension:end-date.value[x]:valueDate"
* item[0].item[0].item[7].text = "End Date"
* item[0].item[0].item[7].type = #date
* item[0].item[0].item[7].required = false
* item[0].item[0].item[7].repeats = false

* item[0].item[0].item[8].linkId = "Basic.extension[0].extension[8]"
* item[0].item[0].item[8].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-salary#Basic.extension:salary.extension:remark.value[x]:valueString"
* item[0].item[0].item[8].text = "Remark"
* item[0].item[0].item[8].type = #text
* item[0].item[0].item[8].required = false
* item[0].item[0].item[8].repeats = false

* item[0].item[0].item[9].linkId = "Basic.extension[0].extension[9]"
* item[0].item[0].item[9].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-salary#Basic.extension:salary.extension:salarySource.value[x]:valueCoding"
* item[0].item[0].item[9].text = "Salary Source"
* item[0].item[0].item[9].type = #choice
* item[0].item[0].item[9].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-salary-source-valueset"
* item[0].item[0].item[9].required = false
* item[0].item[0].item[9].repeats = false

* item[0].item[0].item[10].linkId = "Basic.extension[0].extension[10]"
* item[0].item[0].item[10].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-salary#Basic.extension:salary.extension:frequency.value[x]:valueCoding"
* item[0].item[0].item[10].text = "Pay Frequency"
* item[0].item[0].item[10].type = #choice
* item[0].item[0].item[10].answerValueSet = "http://ihris.org/fhir/ValueSet/ihris-frequency-valueset"
* item[0].item[0].item[10].required = false
* item[0].item[0].item[10].repeats = false

* item[0].item[0].item[11].linkId = "Basic.extension[0].extension[11]"
* item[0].item[0].item[11].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-salary#Basic.extension:salary.extension:current.value[x]:valueBoolean"
* item[0].item[0].item[11].text = "Is Current"
* item[0].item[0].item[11].type = #boolean
* item[0].item[0].item[11].required = false
* item[0].item[0].item[11].repeats = false

Instance:       ihris-page-salary
InstanceOf:     IhrisPage
Title:          "iHRIS Basic Salary Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-salary)
* extension[display].extension[link][0].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link][0].extension[text].valueString = "View Health Worker"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/practitioner/FIELD"
* extension[display].extension[search][0].valueString = "Salary|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-salary').extension.where(url='bsalary').valueString"
* extension[display].extension[field][0].extension[path].valueString = "Basic.extension:practitioner.value[x]:valueReference"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Employee Salary Information"
* extension[section][0].extension[description].valueString = "Employee Salary details"
* extension[section][0].extension[name].valueString = "Basic"
* extension[section][0].extension[field][0].valueString = "Basic.extension:practitioner"
* extension[section][0].extension[field][1].valueString = "Basic.extension:salary.extension:salaryladder.value[x]:valueCoding"
* extension[section][0].extension[field][2].valueString = "Basic.extension:salary.extension:salaryScale.value[x]:valueCoding"
* extension[section][0].extension[field][3].valueString = "Basic.extension:salary.extension:salaryStep.value[x]:valueCoding"
* extension[section][0].extension[field][4].valueString = "Basic.extension:salary.extension:bsalary.value[x]:valueString"
* extension[section][0].extension[field][5].valueString = "Basic.extension:salary.extension:allowance.value[x]:valueString"
* extension[section][0].extension[field][6].valueString = "Basic.extension:salary.extension:benefits.value[x]:valueString"
* extension[section][0].extension[field][7].valueString = "Basic.extension:salary.extension:total.value[x]:valueString"
* extension[section][0].extension[field][8].valueString = "Basic.extension:salary.extension:start-date.value[x]:valueDate"
* extension[section][0].extension[field][9].valueString = "Basic.extension:salary.extension:end-date.value[x]:valueDate"
* extension[section][0].extension[field][10].valueString = "Basic.extension:salary.extension:reviewed.value[x]:valueBoolean"
* extension[section][0].extension[field][11].valueString = "Basic.extension:salary.extension:remark.value[x]:valueString"
* extension[section][0].extension[field][12].valueString = "Basic.extension:salary.extension:salarySource.value[x]:valueCoding"
* extension[section][0].extension[field][13].valueString = "Basic.extension:salary.extension:frequency.value[x]:valueCoding"
* extension[section][0].extension[field][14].valueString = "Basic.extension:salary.extension:current.value[x]:valueBoolean"

Instance:       ihris-page-salary-ladder
InstanceOf:     IhrisPage
Title:          "iHRIS Salary Ladder CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-salary-ladder-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Pay Grade Ladder"
* extension[section][0].extension[description].valueString = "Pay Grade Ladder"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-salary-step
InstanceOf:     IhrisPage
Title:          "iHRIS Salary Step CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-salary-step-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Pay Grade Step"
* extension[section][0].extension[description].valueString = "Pay Grade Step"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-salary-source
InstanceOf:     IhrisPage
Title:          "iHRIS Salary source CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-salary-source-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Salary Fund Source Type"
* extension[section][0].extension[description].valueString = "Salary Fund Source Type"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-frequency
InstanceOf:     IhrisPage
Title:          "iHRIS Pay Frequency CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-frequency-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Pay Frequency"
* extension[section][0].extension[description].valueString = "Pay Frequency"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"