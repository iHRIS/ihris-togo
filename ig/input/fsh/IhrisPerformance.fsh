Profile:        IhrisBasicPerformance
Parent:         IhrisPractitionerBasic
Id:             ihris-basic-performance
Title:          "Performance Information"
Description:    "iHRIS Profile of the Basic resource for Performance."
* extension[practitioner].valueReference 1..1 MS
* extension[practitioner].valueReference ^label = "Health Worker"
* extension contains
    IhrisPerformance named performance 1..1 MS
* extension[performance].extension[evaluator] ^label = "Reviewer"
* extension[performance].extension[evaluator].valueString MS
* extension[performance].extension[start-date] ^label = "Start Date"
* extension[performance].extension[start-date].valueDate MS
* extension[performance].extension[end-date] ^label = "End Date"
* extension[performance].extension[end-date].valueDate MS
* extension[performance].extension[general-knowledge] ^label = "Connaissance Professionnelle et Culture Générale"
* extension[performance].extension[general-knowledge].valueDecimal MS
* extension[performance].extension[professional-culture] ^label = "Aptitude au Commandement, Sens de la Hierarchie"
* extension[performance].extension[professional-culture].valueDecimal MS
* extension[performance].extension[discipline] ^label = "Conduite et Discipline"
* extension[performance].extension[discipline].valueDecimal MS
* extension[performance].extension[aptitude] ^label = "Sens du Bien Public"
* extension[performance].extension[aptitude].valueDecimal MS
* extension[performance].extension[score] ^label = "Score"
* extension[performance].extension[score].valueDecimal MS
    
Extension:      IhrisPerformance
Id:             ihris-performance
Title:          "Performance details"
* extension contains
      evaluator 1..1 MS and
      start-date 1..1 MS and
      end-date 1..1 MS and
      general-knowledge 1..1 MS and
      professional-culture 1..1 MS and
      discipline 1..1 MS and
      aptitude 1..1 MS and
      score 1..1 MS
* extension[evaluator].value[x] only string
* extension[evaluator].valueString ^label = "Reviewer Name"
* extension[start-date].value[x] only date
* extension[start-date].valueDate ^label = "Start Date"
* extension[end-date].value[x] only date
* extension[end-date].valueDate ^label = "End Date"
* extension[general-knowledge].value[x] only decimal
* extension[general-knowledge].valueDecimal ^label = "Connaissance Professionnelle et Culture Générale"
* extension[professional-culture].value[x] only decimal
* extension[professional-culture].valueDecimal ^label = "Aptitude au Commandement, Sens de la Hierarchie"
* extension[discipline].value[x] only decimal
* extension[discipline].valueDecimal ^label = "Conduite et Discipline"
* extension[aptitude].value[x] only decimal
* extension[aptitude].valueDecimal ^label = "Sens du Bien Public"
* extension[score].value[x] only decimal
* extension[score].valueDecimal ^label = "Score Attained"

Instance:       IhrisPractitionerWorkflowPerformance
InstanceOf:      Questionnaire
Usage:          #definition
* title = "iHRIS Performance Workflow"
* description = "iHRIS workflow to record a Performance"
* id = "ihris-performance"
* url = "http://ihris.org/fhir/Questionnaire/ihris-performance"
* name = "ihris-performance"
* status = #active
* date = 2020-09-02
* purpose = "Workflow page for recording a Performance information."

* item[0].linkId = "Basic"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-performance"
* item[0].text = "Performance"
* item[0].type = #group

* item[0].item[0].linkId = "Basic.extension[0]"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-performance#Basic.extension:performance"
* item[0].item[0].text = "Details"
* item[0].item[0].type = #group

* item[0].item[0].item[0].linkId = "Basic.extension[0].extension[0]"
* item[0].item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-performance#Basic.extension:performance.extension:evaluator.value[x]:valueString"
* item[0].item[0].item[0].text = "Reviewer Name"
* item[0].item[0].item[0].type = #string
* item[0].item[0].item[0].required = true
* item[0].item[0].item[0].repeats = false

* item[0].item[0].item[1].linkId = "Basic.extension[0].extension[1]"
* item[0].item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-performance#Basic.extension:performance.extension:start-date.value[x]:valueDate"
* item[0].item[0].item[1].text = "Start date of the Performance period"
* item[0].item[0].item[1].type = #date
* item[0].item[0].item[1].required = true
* item[0].item[0].item[1].repeats = false

* item[0].item[0].item[2].linkId = "Basic.extension[0].extension[2]"
* item[0].item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-performance#Basic.extension:performance.extension:end-date.value[x]:valueDate"
* item[0].item[0].item[2].text = "End date of the Performance period"
* item[0].item[0].item[2].type = #date
* item[0].item[0].item[2].required = true
* item[0].item[0].item[2].repeats = false

* item[0].item[0].item[3].linkId = "Basic.extension[0].extension[3]"
* item[0].item[0].item[3].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-performance#Basic.extension:performance.extension:general-knowledge.value[x]:valueDecimal"
* item[0].item[0].item[3].text = "Criteria 1: General Knowledge /5"
* item[0].item[0].item[3].type = #decimal
* item[0].item[0].item[3].required = true
* item[0].item[0].item[3].repeats = false

* item[0].item[0].item[4].linkId = "Basic.extension[0].extension[4]"
* item[0].item[0].item[4].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-performance#Basic.extension:performance.extension:professional-culture.value[x]:valueDecimal"
* item[0].item[0].item[4].text = "Criteria 2: Professional Culture /5"
* item[0].item[0].item[4].type = #decimal
* item[0].item[0].item[4].required = true
* item[0].item[0].item[4].repeats = false

* item[0].item[0].item[5].linkId = "Basic.extension[0].extension[5]"
* item[0].item[0].item[5].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-performance#Basic.extension:performance.extension:discipline.value[x]:valueDecimal"
* item[0].item[0].item[5].text = "Criteria 3: discipline in carrying out duties/5"
* item[0].item[0].item[5].type = #decimal
* item[0].item[0].item[5].required = true
* item[0].item[0].item[5].repeats = false

* item[0].item[0].item[6].linkId = "Basic.extension[0].extension[6]"
* item[0].item[0].item[6].definition = "http://ihris.org/fhir/StructureDefinition/ihris-basic-performance#Basic.extension:performance.extension:aptitude.value[x]:valueDecimal"
* item[0].item[0].item[6].text = "Criteria 4: Aptitude for command functions /5"
* item[0].item[0].item[6].type = #decimal
* item[0].item[0].item[6].required = false
* item[0].item[0].item[6].repeats = false

Instance:       ihris-page-performance
InstanceOf:     IhrisPage
Title:          "iHRIS Basic Performance Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-basic-performance)
* extension[display].extension[link].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-practitioner-reference').valueReference.reference"
* extension[display].extension[link].extension[text].valueString = "View Health Worker"
* extension[display].extension[link].extension[button].valueBoolean = true
* extension[display].extension[link].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link].extension[url].valueUrl = "/resource/view/practitioner/FIELD"
* extension[display].extension[search][0].valueString = "Start Date|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-performance').extension.where(url='period').valuePeriod.start"
* extension[display].extension[search][1].valueString = "End Date|extension.where(url='http://ihris.org/fhir/StructureDefinition/ihris-performance').extension.where(url='period').valuePeriod.end"
* extension[section][0].extension[title].valueString = "Performance Evaluation"
* extension[section][0].extension[description].valueString = "Performance Evaluation details"
* extension[section][0].extension[name].valueString = "Basic"
* extension[section][0].extension[field][0].valueString = "Basic.extension:practitioner"
* extension[section][0].extension[field][1].valueString = "Basic.extension:performance.extension:evaluator"
* extension[section][0].extension[field][2].valueString = "Basic.extension:performance.extension:start-date"
* extension[section][0].extension[field][3].valueString = "Basic.extension:performance.extension:end-date"
* extension[section][0].extension[field][4].valueString = "Basic.extension:performance.extension:general-knowledge"
* extension[section][0].extension[field][5].valueString = "Basic.extension:performance.extension:professional-culture"
* extension[section][0].extension[field][6].valueString = "Basic.extension:performance.extension:discipline"
* extension[section][0].extension[field][7].valueString = "Basic.extension:performance.extension:aptitude"
* extension[section][0].extension[field][8].valueString = "Basic.extension:performance.extension:score"
