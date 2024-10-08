Profile:        IhrisPractitionerRole
Parent:         PractitionerRole
Id:             ihris-practitioner-role
Title:          "iHRIS Practitioner Role"
Description:    "iHRIS profile of Practitioner Role."

* identifier 0..* MS
* identifier ^label = "Identifier"
* identifier.use MS
* identifier.use ^label = "Use"
* identifier.type MS
* identifier.type ^label = "Type"
* identifier.type.coding ^label = "Type"
* identifier.type.coding 1..1 MS
* identifier.system MS
* identifier.system ^label = "System"
* identifier.value MS
* identifier.value ^label = "Value"
* active 1..1 MS
* active ^label = "Active"
* period 1..1 MS
* period ^label = "Period of Employment"
* period ^constraint[0].key = "ihris-period-start-end"
* period ^constraint[0].severity = #error
* period ^constraint[0].human = "The end date must be after the start date"
* period ^constraint[0].expression = "end.empty() or end = '' or end >= start"
* period.start 1..1 MS
* period.start ^label = "Start Date"
* period.start ^minValueDateTime = "1950-01-01"
* period.start ^maxValueDateTime = "2030-01-01"
* period.end 0..1 MS
* period.end ^label = "End Date"
* period.end ^minValueDateTime = "1950-01-01"
* period.end ^maxValueDateTime = "2030-01-01"
* practitioner 0..1 MS
* practitioner ^label = "Health Worker"
* practitioner.reference ^label = "Health Worker"
* practitioner only Reference(IhrisPractitioner)
* code 1..1 MS
* code ^label = "Function"
* code from http://ihris.org/fhir/ValueSet/togo-job-valueset
* code.coding 1..1 MS
* code.coding ^label = "Function"
* specialty 0..* MS
* specialty ^label = "Specialty"
* specialty.coding 1..1 MS
* specialty.coding ^label = "Specialty"
* location 1..1 MS 
* location ^label = "Facility"
* location only Reference(TGORegion or TGODistrict or TGOCommune or TGOFacility or TGODepartment or TGOUnit or TGOProgram)
* extension contains
    AppointmentDate named appointment-date 1..1 MS and
    AppointmentReference named appointment-reference 1..1 MS and
    ServiceStartReference named service-start-reference 1..1 MS and
    EffectivePresenceDate named effective-presence-date 0..1 MS and
    EffectivePresenceReference named effective-presence-reference 0..1 MS and
    AssignmentAct named assignment-act 1..1 MS and
    QualificationReference named qualification 1..1 MS and
    Service named service 1..1 MS and
    StudyLevel named study-level 1..1 MS and
    Specialty named specialty 1..1 MS and
    BonusDate named bonus-date 1..1 MS and
    BonusReference named bonus-reference 1..1 MS and
    TenureDate named tenure-date 1..1 MS and
    TenureReference named tenure-reference 1..1 MS and
    IntegrationDate named integration-date 1..1 MS and
    ReferenceIntegrationAct named reference-integration-act 1..1 MS and
    Comments named comments 0..1 MS and
    OtherFunction named other-function 1..* MS and
    Responsible named responsible 1..1 MS
* extension[appointment-date] ^label = "Date of Assignment or Appointment"
* extension[appointment-date].valueDate MS
* extension[appointment-reference] ^label = "Appointment Reference"
* extension[appointment-reference].valueString MS
* extension[service-start-reference] ^label = "Service Start Reference"
* extension[service-start-reference].valueString MS
* extension[effective-presence-date] ^label = "Date of Effective Presence"
* extension[effective-presence-date].valueDate MS
* extension[effective-presence-reference] ^label = "Effective Presence Reference"
* extension[effective-presence-reference].valueString MS
* extension[assignment-act] ^label = "Act of assignment or appointment"
* extension[assignment-act].valueAttachment MS
* extension[comments] ^label = "Comments"
* extension[comments].valueString MS
* extension[appointment-date].valueDate MS
* extension[appointment-date] ^label = "Date of Assignment or Appointment"
* extension[bonus-date].valueDate MS
* extension[bonus-date] ^label = "Bonus Date"
* extension[bonus-reference].valueString MS
* extension[bonus-reference] ^label = "Bonus Reference"
* extension[qualification]  1..1 MS
* extension[qualification]  ^label = "Profile/Qualification"
* extension[qualification].valueReference MS
* extension[service]  1..1 MS
* extension[service]  ^label = "Service"
* extension[service].valueCoding MS
* extension[study-level]  1..1 MS
* extension[study-level]  ^label = "Level of Study"
* extension[study-level].valueCoding MS
* extension[specialty]  1..1 MS
* extension[specialty]  ^label = "Specialty"
* extension[specialty].valueCoding MS
* extension[integration-date]  1..1 MS
* extension[integration-date]  ^label = "Integration Date"
* extension[integration-date].valueDate MS
* extension[responsible]  1..1 MS
* extension[responsible]  ^label = "Responsible"
* extension[responsible].valueCoding MS
* extension[reference-integration-act]  1..1 MS
* extension[reference-integration-act]  ^label = "Reference Integration Act"
* extension[reference-integration-act].valueString MS
* extension[tenure-date]  1..1 MS
* extension[tenure-date]  ^label = "Date of tenure"
* extension[tenure-date].valueDate MS
* extension[tenure-reference]  1..1 MS
* extension[tenure-reference]  ^label = "Reference of the tenure"
* extension[tenure-reference].valueString MS
* extension[other-function].extension[job] ^label = "Other Function"
* extension[other-function].extension[job].valueCoding 1..1 MS
* extension[other-function].extension[job].valueCoding ^label = "Function"
* extension[other-function].extension[facility] ^label = "Facility"
* extension[other-function].extension[facility].valueReference 1..1 MS
* extension[other-function].extension[facility].valueReference ^label = "Facility"

Profile:        RoleDepartureProfile
Parent:         IhrisPractitionerBasic
Id:             role-departure-profile
Title:          "Role Departure Details"
Description:    "Role Departure Details."
* extension contains
    PractitionerRoleReference named practitioner-role-reference 1..1 MS and
    DepartureDate named departure-date 1..1 MS and
    PositionDepartureReason named position-departure-reason 1..1 MS
* extension[departure-date].valueDate MS
* extension[departure-date] ^label = "Departure Date"
* extension[position-departure-reason].valueCoding MS
* extension[position-departure-reason] ^label = "Reason for Departure"

Profile:        ProfessionGroupProfile
Parent:         Basic
Id:             profession-group-profile
Title:          "Profession Group"
Description:    "Profession Group."
* code = TGOResourceCodeSystem#standard-lists
* extension contains
    IhrisBasicName named name 1..1 MS
* extension[name].valueString 1..1 MS
* extension[name].valueString ^label = "Profession Group"

Profile:        ProfessionSubGroupProfile
Parent:         Basic
Id:             profession-subgroup-profile
Title:          "Profession Sub-Group"
Description:    "Profession Sub-Group."
* code = TGOResourceCodeSystem#standard-lists
* extension contains
    IhrisBasicName named name 1..1 MS and
    ProfessionParent named profession-parent 1..1 MS
* extension[name].valueString 1..1 MS
* extension[name].valueString ^label = "Profession Sub-Group"
* extension[profession-parent].valueReference 1..1 MS
* extension[profession-parent].valueReference ^label = "Profession Group"

Profile:        QualificationProfile
Parent:         Basic
Id:             qualification-profile
Title:          "Qualification"
Description:    "Qualification."
* code = TGOResourceCodeSystem#standard-lists
* extension contains
    IhrisBasicName named name 1..1 MS and
    ProfessionParent named profession-parent 1..1 MS
* extension[name].valueString 1..1 MS
* extension[name].valueString ^label = "Qualification"
* extension[profession-parent].valueReference 1..1 MS
* extension[profession-parent].valueReference ^label = "Profession Sub-Group"

Extension:      ProfessionParent
Id:             profession-parent
Title:          "Profession Parent"
Description:    "Profession Parent."
* ^context[0].type = #element
* ^context[0].expression = "Basic"
* value[x] only Reference(ProfessionGroupProfile or ProfessionSubGroupProfile)
* valueReference 1..1 MS
* valueReference ^label = "Profession Parent"

Extension:      QualificationReference
Id:             qualification-reference
Title:          "Qualification"
* value[x] only Reference 
* valueReference only Reference(QualificationProfile)
* valueReference ^label = "Qualification"

Extension:      PractitionerRoleReference
Id:             practitioner-role-reference
Title:          "Practitioner Role Reference"
Description:    "Practitioner Role Reference"
* ^context[0].type = #element
* ^context[0].expression = "Basic"
* value[x] only Reference(IhrisPractitionerRole)
* valueReference 1..1 MS
* valueReference ^label = "Practitioner Role Reference"

Extension:      DepartureDate
Id:             departure-date
Title:          "Departure Date"
Description:    "Departure Date."
* ^context.type = #element
* value[x] only date
* valueDate 1..1 MS
* valueDate ^label = "Departure Date"

Extension:      IhrisPractitionerRolePositionStatus
Id:             ihris-practitionerrole-position-status
Title:          "iHRIS Job Description Position Status"
Description:    "iHRIS extension for Job Description Position Status."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Position Status"
* valueCoding from IhrisPositionStatusValueSet (required)

Extension:      Responsible
Id:             responsable
Title:          "iHRIS Responsable"
Description:    "iHRIS Responsible."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Responsible"
* valueCoding from YesNoValueSet (required)

CodeSystem:      IhrisPositionStatusCodeSystem
Id:              ihris-position-status
Title:           "Position Status"
* ^date = "2020-10-29T08:41:04.362Z"
* ^version = "0.2.0"
* #vacant "Vacant" "Vacant"
* #occupied "Occupied" "Occupied" 
* #closed "Closed" "Closed"

ValueSet:         IhrisPositionStatusValueSet
Id:               ihris-position-status
Title:            "iHRIS position Status"
* ^date = "2020-10-29T08:41:04.362Z"
* ^version = "0.2.0"
* codes from system IhrisPositionStatusCodeSystem

Extension:      PositionDepartureReason
Id:             position-departure-reason
Title:          "Departure Reason"
Description:    "Departure Reason."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only Coding
* valueCoding 0..1 MS
* valueCoding ^label = "Departure Reason"
* valueCoding from PositionDepartureReasonValueSet (required)

Extension:      OtherFunction
Id:             other-function
Title:          "Other Function"
* extension contains
      job 1..1 MS and
      facility 1..1 MS
* extension[job].value[x] only Coding
* extension[job].valueCoding ^label = "Job"
* extension[job].valueCoding from http://ihris.org/fhir/ValueSet/togo-job-valueset (required)
* extension[facility].value[x] only Reference(TGORegion or TGODistrict or TGOCommune or TGOFacility or TGODepartment or TGOUnit or TGOProgram)
* extension[facility].valueReference ^label = "Facility"

Extension:      IhrisPractitionerRoleJobType
Id:             ihris-practitionerrole-job-type
Title:          "iHRIS Job Description Job Type"
Description:    "iHRIS extension for Job Description Job Type."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Job Type"
* valueCoding from IhrisJobTypeValueSet (required)

CodeSystem:      IhrisJobTypeCodeSystem
Id:              ihris-job-type-codesystem
Title:           "iHRIS Job Type CodeSystem"
* #transfer "Transfer" "Transfer"
* #newHire "New Hire" "New Hire"
* #redeployment  "Redeployment" "Redeployment"

ValueSet:         IhrisJobTypeValueSet
Id:               ihris-job-type-valueset
Title:            "iHRIS Job Type ValueSet"
* codes from system IhrisJobTypeCodeSystem

Extension:      AppointmentDate
Id:             appointment-date
Title:          "iHRIS Job Description Appointment Date"
Description:    "iHRIS extension for Appointment Date."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only date
* valueDate 1..1 MS
* valueDate ^label = "Appointment Date"

Extension:      AppointmentReference
Id:             appointment-reference
Title:          "iHRIS Job Description Appointment Reference"
Description:    "iHRIS extension for Appointment Reference."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only string
* valueString 1..1 MS
* valueString ^label = "Appointment Reference"

Extension:      ServiceStartReference
Id:             service-start-reference
Title:          "iHRIS Job Description Service Start Reference"
Description:    "iHRIS extension for Service Start Reference."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only string
* valueString 1..1 MS
* valueString ^label = "Service Start Reference"

Extension:      EffectivePresenceDate
Id:             effective-presence-date
Title:          "iHRIS Job Description Date of Effective Presence"
Description:    "iHRIS extension for Date of Effective Presence."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only date
* valueDate 1..1 MS
* valueDate ^label = "Date of Effective Presence"

Extension:      EffectivePresenceReference
Id:             effective-presence-reference
Title:          "iHRIS Job Description Effective Presence Reference"
Description:    "iHRIS extension for Effective Presence Reference."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only string
* valueString 1..1 MS
* valueString ^label = "Effective Presence Reference"

Extension:      AssignmentAct
Id:             assignment-act
Title:          "iHRIS Job Description Act of assignment or appointment"
Description:    "iHRIS extension for Act of assignment or appointment."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only Attachment
* valueAttachment 1..1 MS
* valueAttachment ^label = "Act of assignment or appointment"

Extension:      Comments
Id:             comments
Title:          "iHRIS Job Description Comments"
Description:    "iHRIS extension for Comments."
* ^context.type = #element
* ^context.expression = "PractitionerRole"
* value[x] only string
* valueString 1..1 MS
* valueString ^label = "Comments"

Extension:      TenureDate
Id:             tenure-date
Title:          "Tenure Date"
Description:    "Tenure Date."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only date
* valueDate 1..1 MS
* valueDate ^label = "Tenure Date"

Extension:      TenureReference
Id:             tenure-reference
Title:          "Tenure Reference"
Description:    "Tenure Reference."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only string
* valueString 1..1 MS
* valueString ^label = "Tenure Reference"

Extension:      IntegrationDate
Id:             integration-date
Title:          "Integration Date"
Description:    "Integration Date."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only date
* valueDate 1..1 MS
* valueDate ^label = "Integration Date"

Extension:      ReferenceIntegrationAct
Id:             reference-integration-act
Title:          "Reference Integration Act"
Description:    "Reference Integration Act."
* ^context.type = #element
* ^context.expression = "Practitioner"
* value[x] only string
* valueString 1..1 MS
* valueString ^label = "Reference Integration Act"

Instance:       ihris-page-practitionerrole
InstanceOf:     IhrisPage
Title:          "iHRIS PractitionerRole Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/ihris-practitioner-role)
* extension[display].extension[link].extension[field].valueString = "PractitionerRole.practitioner.reference"
* extension[display].extension[link].extension[text].valueString = "View Practitioner"
* extension[display].extension[link].extension[button].valueBoolean = true
* extension[display].extension[link].extension[icon].valueString = "mdi-account-arrow-right"
* extension[display].extension[link].extension[url].valueUrl = "/resource/view/practitioner/FIELD"
* extension[display].extension[search][0].valueString = "Job|PractitionerRole.code[0].coding[0]"
* extension[display].extension[search][1].valueString = "Start Date|PractitionerRole.period.start"
* extension[display].extension[search][2].valueString = "Practitioner|PractitionerRole.practitioner"
* extension[display].extension[search][3].valueString = "Facility|PractitionerRole.location"
* extension[display].extension[search][4].valueString = "Specialty|PractitionerRole.specialty"
* extension[display].extension[filter][0].valueString = "Job|role|http://ihris.org/fhir/ValueSet/ihris-job"
* extension[section][0].extension[title].valueString = "Position"
* extension[section][0].extension[description].valueString = "Position details"
* extension[section][0].extension[name].valueString = "PractitionerRole"
* extension[section][0].extension[field][0].valueString = "PractitionerRole.practitioner"
* extension[section][0].extension[field][1].valueString = "PractitionerRole.code"
* extension[section][0].extension[field][2].valueString = "PractitionerRole.location"
* extension[section][0].extension[field][3].valueString = "PractitionerRole.period"
* extension[section][0].extension[field][4].valueString = "PractitionerRole.specialty"
* extension[section][0].extension[field][5].valueString = "PractitionerRole.identifier"
* extension[section][1].extension[title].valueString = "Departure Reason"
* extension[section][1].extension[description].valueString = "Departure Reason"
* extension[section][1].extension[name].valueString = "departurereason"
* extension[section][1].extension[field][0].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/practitioner-role-reference').valueReference.reference"
* extension[section][1].extension[resource].extension[resource].valueReference = Reference(StructureDefinition/role-departure-profile)
* extension[section][1].extension[resource].extension[searchfield].valueString = "practitionerrole"
* extension[section][1].extension[resource].extension[searchfieldtarget].valueString = "PractitionerRole"
* extension[section][1].extension[resource].extension[linkfield].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/practitioner-role-reference').valueReference.reference"
* extension[section][1].extension[resource].extension[column][0].extension[header].valueString = "Reason"
* extension[section][1].extension[resource].extension[column][0].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/position-departure-reason').valueCoding.display"
* extension[section][1].extension[resource].extension[column][1].extension[header].valueString = "Departure Date"
* extension[section][1].extension[resource].extension[column][1].extension[field].valueString = "Basic.extension.where(url='http://ihris.org/fhir/StructureDefinition/departure-date').valueDate"

Instance:       ihris-page-job
InstanceOf:     IhrisPage
Title:          "iHRIS Job CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/togo-job-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[search][2].valueString = "Cadre|cadre"
* extension[display].extension[search][3].valueString = "Classification|classification"
* extension[section][0].extension[title].valueString = "Job"
* extension[section][0].extension[description].valueString = "Job Titles"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.code"
* extension[section][0].extension[field][1].valueString = "CodeSystem.definition"
* extension[section][0].extension[field][2].valueString = "CodeSystem.display"

Instance:       ihris-page-salary-grade
InstanceOf:     IhrisPage
Title:          "iHRIS Salary Scale CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-salary-grade)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[section][0].extension[title].valueString = "Salary Grade"
* extension[section][0].extension[description].valueString = "Salary Grade"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-job-classification
InstanceOf:     IhrisPage
Title:          "iHRIS Classification CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-classification)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[section][0].extension[title].valueString = "Classification"
* extension[section][0].extension[description].valueString = "Classification"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-cadre
InstanceOf:     IhrisPage
Title:          "iHRIS Cadre CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-cadre)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[section][0].extension[title].valueString = "Cadre"
* extension[section][0].extension[description].valueString = "Cadre"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-employment-status
InstanceOf:     IhrisPage
Title:          "iHRIS Employment Status CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-employment-status-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Employment Status"
* extension[section][0].extension[description].valueString = "Employment Status"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-job-type
InstanceOf:     IhrisPage
Title:          "iHRIS Job Type CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/ihris-job-type-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Job Type"
* extension[section][0].extension[description].valueString = "Job Type"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       ihris-page-reason-departureFunction
InstanceOf:     IhrisPage
Title:          "iHRIS Reason for Departure CodeSystem Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(CodeSystem/position-departure-reason-codesystem)
* extension[display].extension[search][0].valueString = "Code|code"
* extension[display].extension[search][1].valueString = "Display|display"
* extension[display].extension[field][0].extension[path].valueString = "CodeSystem.code"
* extension[display].extension[field][0].extension[readOnlyIfSet].valueBoolean = true
* extension[section][0].extension[title].valueString = "Reason for Departure"
* extension[section][0].extension[description].valueString = "Reason for Departure"
* extension[section][0].extension[name].valueString = "CodeSystem"
* extension[section][0].extension[field][0].valueString = "CodeSystem.display"
* extension[section][0].extension[field][1].valueString = "CodeSystem.code"
* extension[section][0].extension[field][2].valueString = "CodeSystem.definition"

Instance:       AssignJob
InstanceOf:     IhrisQuestionnaire
Usage:          #definition
* title = "iHRIS Assign Job Workflow"
* description = "iHRIS workflow to assign a position"
* id = "assign-job"
* url = "http://ihris.org/fhir/Questionnaire/assign-job"
* name = "assign-job"
* status = #active
* date = 2020-08-09
* purpose = "Workflow page for assigning job."

* item[0].linkId = "PractitionerRole"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role"
* item[0].text = "Staff Situation|Staff Situation"
* item[0].type = #group

* item[0].item[0].linkId = "PractitionerRole.code"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.code"
* item[0].item[0].text = "Function"
* item[0].item[0].type = #choice
* item[0].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/togo-job-valueset"
* item[0].item[0].required = true
* item[0].item[0].repeats = false

* item[0].item[1].linkId = "PractitionerRole.extension[0]"
* item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:responsible.value[x]:valueCoding"
* item[0].item[1].text = "Responsible"
* item[0].item[1].type = #choice
* item[0].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/yes-no-valueset"
* item[0].item[1].required = true
* item[0].item[1].repeats = false

* item[0].item[2].linkId = "PractitionerRole.extension[1]"
* item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:appointment-date.value[x]:valueDate"
* item[0].item[2].text = "Date of Assignment or Appointment"
* item[0].item[2].type = #date
* item[0].item[2].required = true
* item[0].item[2].repeats = false

* item[0].item[3].linkId = "PractitionerRole.extension[2]"
* item[0].item[3].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:appointment-reference.value[x]:valueString"
* item[0].item[3].text = "Appointment Reference"
* item[0].item[3].type = #string
* item[0].item[3].required = false
* item[0].item[3].repeats = false

* item[0].item[4].linkId = "PractitionerRole.extension[3]"
* item[0].item[4].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:qualification.value[x]:valueReference"
* item[0].item[4].text = "Profile/Qualification"
* item[0].item[4].type = #reference
* item[0].item[4].required = true
* item[0].item[4].repeats = false

* item[0].item[5].linkId = "PractitionerRole.extension[4]"
* item[0].item[5].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:study-level.value[x]:valueCoding"
* item[0].item[5].text = "Level of Study"
* item[0].item[5].type = #choice
* item[0].item[5].answerValueSet = "http://ihris.org/fhir/ValueSet/study-level-valueset"
* item[0].item[5].required = true
* item[0].item[5].repeats = false

* item[0].item[6].linkId = "PractitionerRole.extension[5]"
* item[0].item[6].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:specialty.value[x]:valueCoding"
* item[0].item[6].text = "Specialty"
* item[0].item[6].type = #choice
* item[0].item[6].answerValueSet = "http://ihris.org/fhir/ValueSet/specialty-valueset"
* item[0].item[6].required = false
* item[0].item[6].repeats = false

* item[0].item[7].linkId = "PractitionerRole.extension[6]"
* item[0].item[7].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:bonus-date.value[x]:valueDate"
* item[0].item[7].text = "Bonus Date"
* item[0].item[7].type = #date
* item[0].item[7].required = false
* item[0].item[7].repeats = false

* item[0].item[8].linkId = "PractitionerRole.extension[7]"
* item[0].item[8].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:bonus-reference.value[x]:valueString"
* item[0].item[8].text = "Bonus Reference"
* item[0].item[8].type = #string
* item[0].item[8].required = false
* item[0].item[8].repeats = false

* item[0].item[9].linkId = "PractitionerRole.period.start"
* item[0].item[9].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.period.start"
* item[0].item[9].text = "Service Start Date"
* item[0].item[9].type = #date
* item[0].item[9].required = true
* item[0].item[9].repeats = false

* item[0].item[10].linkId = "PractitionerRole.period.end"
* item[0].item[10].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.period.end"
* item[0].item[10].text = "Service End Date"
* item[0].item[10].type = #date
* item[0].item[10].required = false
* item[0].item[10].repeats = false

* item[0].item[11].linkId = "PractitionerRole.extension[8]"
* item[0].item[11].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:service-start-reference.value[x]:valueString"
* item[0].item[11].text = "Service Start Reference"
* item[0].item[11].type = #string
* item[0].item[11].required = false
* item[0].item[11].repeats = false

* item[0].item[12].linkId = "PractitionerRole.extension[9]"
* item[0].item[12].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:effective-presence-date.value[x]:valueDate"
* item[0].item[12].text = "Date of Effective Presence"
* item[0].item[12].type = #date
* item[0].item[12].required = false
* item[0].item[12].repeats = false

* item[0].item[13].linkId = "PractitionerRole.extension[10]"
* item[0].item[13].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:effective-presence-reference.value[x]:valueString"
* item[0].item[13].text = "Effective Presence Reference"
* item[0].item[13].type = #string
* item[0].item[13].required = false
* item[0].item[13].repeats = false

* item[0].item[14].linkId = "PractitionerRole.extension[11]"
* item[0].item[14].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:assignment-act.value[x]:valueAttachment"
* item[0].item[14].text = "Act of Assignment or Appointment"
* item[0].item[14].type = #attachment
* item[0].item[14].required = false
* item[0].item[14].repeats = false

* item[0].item[15].linkId = "PractitionerRole.extension[12]#text"
* item[0].item[15].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:comments.value[x]:valueString"
* item[0].item[15].text = "Comments"
* item[0].item[15].type = #string
* item[0].item[15].required = false
* item[0].item[15].repeats = false

* item[0].item[16].linkId = "PractitionerRole.location"
* item[0].item[16].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.location"
* item[0].item[16].text = "Facility"
* item[0].item[16].type = #reference
* item[0].item[16].required = true
* item[0].item[16].repeats = false

* item[0].item[17].linkId = "PractitionerRole.extension[13]"
* item[0].item[17].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:service.value[x]:valueCoding"
* item[0].item[17].text = "Service"
* item[0].item[17].type = #choice
* item[0].item[17].answerValueSet = "http://ihris.org/fhir/ValueSet/service-valueset"
* item[0].item[17].required = true
* item[0].item[17].repeats = false

* item[0].item[18].linkId = "PractitionerRole.extension[14]"
* item[0].item[18].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:tenure-date.value[x]:valueDate"
* item[0].item[18].text = "Date of Tenure"
* item[0].item[18].type = #date
* item[0].item[18].required = false
* item[0].item[18].repeats = false

* item[0].item[19].linkId = "PractitionerRole.extension[15]"
* item[0].item[19].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:tenure-reference.value[x]:valueString"
* item[0].item[19].text = "Reference of the Tenure"
* item[0].item[19].type = #string
* item[0].item[19].required = false
* item[0].item[19].repeats = false

* item[0].item[20].linkId = "PractitionerRole.extension[16]"
* item[0].item[20].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:integration-date.value[x]:valueDate"
* item[0].item[20].text = "Integration Date"
* item[0].item[20].type = #date
* item[0].item[20].required = false
* item[0].item[20].repeats = false

* item[0].item[21].linkId = "PractitionerRole.extension[17]"
* item[0].item[21].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:reference-integration-act.value[x]:valueString"
* item[0].item[21].text = "Reference Act of Integration"
* item[0].item[21].type = #string
* item[0].item[21].required = false
* item[0].item[21].repeats = false

* item[0].item[22].linkId = "PractitionerRole.extension[18]"
* item[0].item[22].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:other-function"
* item[0].item[22].text = "Other Function"
* item[0].item[22].type = #group
* item[0].item[22].required = false
* item[0].item[22].repeats = true

* item[0].item[22].item[0].linkId = "PractitionerRole.extension[18].extension[0]"
* item[0].item[22].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:other-function.extension:job.value[x]:valueCoding"
* item[0].item[22].item[0].text = "Function"
* item[0].item[22].item[0].type = #choice
* item[0].item[22].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/togo-job-valueset"
* item[0].item[22].item[0].required = true
* item[0].item[22].item[0].repeats = false

* item[0].item[22].item[1].linkId = "PractitionerRole.extension[18].extension[1]#tree"
* item[0].item[22].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:other-function.extension:facility.value[x]:valueReference"
* item[0].item[22].item[1].text = "Facility"
* item[0].item[22].item[1].type = #reference
* item[0].item[22].item[1].required = true
* item[0].item[22].item[1].repeats = false

Instance:       AssignPrevJob
InstanceOf:     IhrisQuestionnaire
Usage:          #definition
* title = "iHRIS Assign Job Workflow"
* description = "iHRIS workflow to assign a position"
* id = "assign-prev-job"
* url = "http://ihris.org/fhir/Questionnaire/assign-prev-job"
* name = "assign-prev-job"
* status = #active
* date = 2020-08-09
* purpose = "Workflow page for assigning job."

* item[0].linkId = "PractitionerRole"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role"
* item[0].text = "Previous Staff Situation|Previous Staff Situation"
* item[0].type = #group

* item[0].item[0].linkId = "PractitionerRole.code"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.code"
* item[0].item[0].text = "Function"
* item[0].item[0].type = #choice
* item[0].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/togo-job-valueset"
* item[0].item[0].required = true
* item[0].item[0].repeats = false

* item[0].item[1].linkId = "PractitionerRole.extension[0]"
* item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:responsible.value[x]:valueCoding"
* item[0].item[1].text = "Responsible"
* item[0].item[1].type = #choice
* item[0].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/yes-no-valueset"
* item[0].item[1].required = true
* item[0].item[1].repeats = false

* item[0].item[2].linkId = "PractitionerRole.extension[1]"
* item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:appointment-date.value[x]:valueDate"
* item[0].item[2].text = "Date of Assignment or Appointment"
* item[0].item[2].type = #date
* item[0].item[2].required = true
* item[0].item[2].repeats = false

* item[0].item[3].linkId = "PractitionerRole.extension[2]"
* item[0].item[3].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:appointment-reference.value[x]:valueString"
* item[0].item[3].text = "Appointment Reference"
* item[0].item[3].type = #string
* item[0].item[3].required = false
* item[0].item[3].repeats = false

* item[0].item[4].linkId = "PractitionerRole.extension[3]"
* item[0].item[4].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:qualification.value[x]:valueReference"
* item[0].item[4].text = "Profile/Qualification"
* item[0].item[4].type = #reference
* item[0].item[4].required = true
* item[0].item[4].repeats = false

* item[0].item[5].linkId = "PractitionerRole.extension[4]"
* item[0].item[5].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:study-level.value[x]:valueCoding"
* item[0].item[5].text = "Level of Study"
* item[0].item[5].type = #choice
* item[0].item[5].answerValueSet = "http://ihris.org/fhir/ValueSet/study-level-valueset"
* item[0].item[5].required = true
* item[0].item[5].repeats = false

* item[0].item[6].linkId = "PractitionerRole.extension[5]"
* item[0].item[6].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:specialty.value[x]:valueCoding"
* item[0].item[6].text = "Specialty"
* item[0].item[6].type = #choice
* item[0].item[6].answerValueSet = "http://ihris.org/fhir/ValueSet/specialty-valueset"
* item[0].item[6].required = false
* item[0].item[6].repeats = false

* item[0].item[7].linkId = "PractitionerRole.extension[6]"
* item[0].item[7].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:bonus-date.value[x]:valueDate"
* item[0].item[7].text = "Bonus Date"
* item[0].item[7].type = #date
* item[0].item[7].required = false
* item[0].item[7].repeats = false

* item[0].item[8].linkId = "PractitionerRole.extension[7]"
* item[0].item[8].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:bonus-reference.value[x]:valueString"
* item[0].item[8].text = "Bonus Reference"
* item[0].item[8].type = #string
* item[0].item[8].required = false
* item[0].item[8].repeats = false

* item[0].item[9].linkId = "PractitionerRole.period.start"
* item[0].item[9].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.period.start"
* item[0].item[9].text = "Service Start Date"
* item[0].item[9].type = #date
* item[0].item[9].required = true
* item[0].item[9].repeats = false

* item[0].item[10].linkId = "PractitionerRole.period.end"
* item[0].item[10].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.period.end"
* item[0].item[10].text = "Service End Date"
* item[0].item[10].type = #date
* item[0].item[10].required = true
* item[0].item[10].repeats = false

* item[0].item[11].linkId = "PractitionerRole.extension[8]"
* item[0].item[11].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:service-start-reference.value[x]:valueString"
* item[0].item[11].text = "Service Start Reference"
* item[0].item[11].type = #string
* item[0].item[11].required = false
* item[0].item[11].repeats = false

* item[0].item[12].linkId = "PractitionerRole.extension[9]"
* item[0].item[12].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:effective-presence-date.value[x]:valueDate"
* item[0].item[12].text = "Date of Effective Presence"
* item[0].item[12].type = #date
* item[0].item[12].required = false
* item[0].item[12].repeats = false

* item[0].item[13].linkId = "PractitionerRole.extension[10]"
* item[0].item[13].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:effective-presence-reference.value[x]:valueString"
* item[0].item[13].text = "Effective Presence Reference"
* item[0].item[13].type = #string
* item[0].item[13].required = false
* item[0].item[13].repeats = false

* item[0].item[14].linkId = "PractitionerRole.extension[11]"
* item[0].item[14].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:assignment-act.value[x]:valueAttachment"
* item[0].item[14].text = "Act of Assignment or Appointment"
* item[0].item[14].type = #attachment
* item[0].item[14].required = false
* item[0].item[14].repeats = false

* item[0].item[15].linkId = "PractitionerRole.extension[12]#text"
* item[0].item[15].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:comments.value[x]:valueString"
* item[0].item[15].text = "Comments"
* item[0].item[15].type = #string
* item[0].item[15].required = false
* item[0].item[15].repeats = false

* item[0].item[16].linkId = "PractitionerRole.location"
* item[0].item[16].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.location"
* item[0].item[16].text = "Facility"
* item[0].item[16].type = #reference
* item[0].item[16].required = true
* item[0].item[16].repeats = false

* item[0].item[17].linkId = "PractitionerRole.extension[13]"
* item[0].item[17].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:service.value[x]:valueCoding"
* item[0].item[17].text = "Service"
* item[0].item[17].type = #choice
* item[0].item[17].answerValueSet = "http://ihris.org/fhir/ValueSet/service-valueset"
* item[0].item[17].required = true
* item[0].item[17].repeats = false

* item[0].item[18].linkId = "PractitionerRole.extension[14]"
* item[0].item[18].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:tenure-date.value[x]:valueDate"
* item[0].item[18].text = "Date of Tenure"
* item[0].item[18].type = #date
* item[0].item[18].required = false
* item[0].item[18].repeats = false

* item[0].item[19].linkId = "PractitionerRole.extension[15]"
* item[0].item[19].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:tenure-reference.value[x]:valueString"
* item[0].item[19].text = "Reference of the Tenure"
* item[0].item[19].type = #string
* item[0].item[19].required = false
* item[0].item[19].repeats = false

* item[0].item[20].linkId = "PractitionerRole.extension[16]"
* item[0].item[20].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:integration-date.value[x]:valueDate"
* item[0].item[20].text = "Integration Date"
* item[0].item[20].type = #date
* item[0].item[20].required = false
* item[0].item[20].repeats = false

* item[0].item[21].linkId = "PractitionerRole.extension[17]"
* item[0].item[21].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:reference-integration-act.value[x]:valueString"
* item[0].item[21].text = "Reference Act of Integration"
* item[0].item[21].type = #string
* item[0].item[21].required = false
* item[0].item[21].repeats = false

* item[0].item[22].linkId = "PractitionerRole.extension[18]"
* item[0].item[22].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:other-function"
* item[0].item[22].text = "Other Function"
* item[0].item[22].type = #group
* item[0].item[22].required = false
* item[0].item[22].repeats = true

* item[0].item[22].item[0].linkId = "PractitionerRole.extension[18].extension[0]"
* item[0].item[22].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:other-function.extension:job.value[x]:valueCoding"
* item[0].item[22].item[0].text = "Function"
* item[0].item[22].item[0].type = #choice
* item[0].item[22].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/togo-job-valueset"
* item[0].item[22].item[0].required = true
* item[0].item[22].item[0].repeats = false

* item[0].item[22].item[1].linkId = "PractitionerRole.extension[18].extension[1]#tree"
* item[0].item[22].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:other-function.extension:facility.value[x]:valueReference"
* item[0].item[22].item[1].text = "Facility"
* item[0].item[22].item[1].type = #reference
* item[0].item[22].item[1].required = true
* item[0].item[22].item[1].repeats = false

Instance:       ChangeJob
InstanceOf:     IhrisQuestionnaire
Usage:          #definition
* title = "iHRIS Change Job Workflow"
* description = "iHRIS workflow to change job"
* id = "change-job"
* url = "http://ihris.org/fhir/Questionnaire/change-job"
* name = "change-job"
* status = #active
* date = 2020-08-09
* purpose = "Workflow page for changing job."

* item[0].linkId = "PractitionerRole"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role"
* item[0].text = "Staff Situation|Staff Situation"
* item[0].type = #group

* item[0].item[0].linkId = "PractitionerRole.code"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.code"
* item[0].item[0].text = "Function"
* item[0].item[0].type = #choice
* item[0].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/togo-job-valueset"
* item[0].item[0].required = true
* item[0].item[0].repeats = false

* item[0].item[1].linkId = "PractitionerRole.extension[0]"
* item[0].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:responsible.value[x]:valueCoding"
* item[0].item[1].text = "Responsible"
* item[0].item[1].type = #choice
* item[0].item[1].answerValueSet = "http://ihris.org/fhir/ValueSet/yes-no-valueset"
* item[0].item[1].required = true
* item[0].item[1].repeats = false

* item[0].item[2].linkId = "PractitionerRole.extension[1]"
* item[0].item[2].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:appointment-date.value[x]:valueDate"
* item[0].item[2].text = "Date of Assignment or Appointment"
* item[0].item[2].type = #date
* item[0].item[2].required = true
* item[0].item[2].repeats = false

* item[0].item[3].linkId = "PractitionerRole.extension[2]"
* item[0].item[3].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:appointment-reference.value[x]:valueString"
* item[0].item[3].text = "Appointment Reference"
* item[0].item[3].type = #string
* item[0].item[3].required = false
* item[0].item[3].repeats = false

* item[0].item[4].linkId = "PractitionerRole.extension[3]"
* item[0].item[4].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:qualification.value[x]:valueReference"
* item[0].item[4].text = "Profile/Qualification"
* item[0].item[4].type = #reference
* item[0].item[4].required = true
* item[0].item[4].repeats = false

* item[0].item[5].linkId = "PractitionerRole.extension[4]"
* item[0].item[5].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:study-level.value[x]:valueCoding"
* item[0].item[5].text = "Level of Study"
* item[0].item[5].type = #choice
* item[0].item[5].answerValueSet = "http://ihris.org/fhir/ValueSet/study-level-valueset"
* item[0].item[5].required = true
* item[0].item[5].repeats = false

* item[0].item[6].linkId = "PractitionerRole.extension[5]"
* item[0].item[6].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:specialty.value[x]:valueCoding"
* item[0].item[6].text = "Specialty"
* item[0].item[6].type = #choice
* item[0].item[6].answerValueSet = "http://ihris.org/fhir/ValueSet/specialty-valueset"
* item[0].item[6].required = false
* item[0].item[6].repeats = false

* item[0].item[7].linkId = "PractitionerRole.extension[6]"
* item[0].item[7].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:bonus-date.value[x]:valueDate"
* item[0].item[7].text = "Bonus Date"
* item[0].item[7].type = #date
* item[0].item[7].required = false
* item[0].item[7].repeats = false

* item[0].item[8].linkId = "PractitionerRole.extension[7]"
* item[0].item[8].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:bonus-reference.value[x]:valueString"
* item[0].item[8].text = "Bonus Reference"
* item[0].item[8].type = #string
* item[0].item[8].required = false
* item[0].item[8].repeats = false

* item[0].item[9].linkId = "PractitionerRole.period.start"
* item[0].item[9].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.period.start"
* item[0].item[9].text = "Service Start Date"
* item[0].item[9].type = #date
* item[0].item[9].required = false
* item[0].item[9].repeats = false

* item[0].item[10].linkId = "PractitionerRole.period.end"
* item[0].item[10].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.period.end"
* item[0].item[10].text = "Service End Date"
* item[0].item[10].type = #date
* item[0].item[10].required = false
* item[0].item[10].repeats = false

* item[0].item[11].linkId = "PractitionerRole.extension[8]"
* item[0].item[11].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:service-start-reference.value[x]:valueString"
* item[0].item[11].text = "Service Start Reference"
* item[0].item[11].type = #string
* item[0].item[11].required = false
* item[0].item[11].repeats = false

* item[0].item[12].linkId = "PractitionerRole.extension[9]"
* item[0].item[12].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:effective-presence-date.value[x]:valueDate"
* item[0].item[12].text = "Date of Effective Presence"
* item[0].item[12].type = #date
* item[0].item[12].required = false
* item[0].item[12].repeats = false

* item[0].item[13].linkId = "PractitionerRole.extension[10]"
* item[0].item[13].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:effective-presence-reference.value[x]:valueString"
* item[0].item[13].text = "Effective Presence Reference"
* item[0].item[13].type = #string
* item[0].item[13].required = false
* item[0].item[13].repeats = false

* item[0].item[14].linkId = "PractitionerRole.extension[11]"
* item[0].item[14].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:assignment-act.value[x]:valueAttachment"
* item[0].item[14].text = "Act of Assignment or Appointment"
* item[0].item[14].type = #attachment
* item[0].item[14].required = false
* item[0].item[14].repeats = false

* item[0].item[15].linkId = "PractitionerRole.extension[12]#text"
* item[0].item[15].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:comments.value[x]:valueString"
* item[0].item[15].text = "Comments"
* item[0].item[15].type = #string
* item[0].item[15].required = false
* item[0].item[15].repeats = false

* item[0].item[16].linkId = "PractitionerRole.location"
* item[0].item[16].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.location"
* item[0].item[16].text = "Facility"
* item[0].item[16].type = #reference
* item[0].item[16].required = true
* item[0].item[16].repeats = false

* item[0].item[17].linkId = "PractitionerRole.extension[13]"
* item[0].item[17].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:service.value[x]:valueCoding"
* item[0].item[17].text = "Service"
* item[0].item[17].type = #choice
* item[0].item[17].answerValueSet = "http://ihris.org/fhir/ValueSet/service-valueset"
* item[0].item[17].required = true
* item[0].item[17].repeats = false

* item[0].item[18].linkId = "PractitionerRole.extension[14]"
* item[0].item[18].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:tenure-date.value[x]:valueDate"
* item[0].item[18].text = "Date of Tenure"
* item[0].item[18].type = #date
* item[0].item[18].required = false
* item[0].item[18].repeats = false

* item[0].item[19].linkId = "PractitionerRole.extension[15]"
* item[0].item[19].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:tenure-reference.value[x]:valueString"
* item[0].item[19].text = "Reference of the Tenure"
* item[0].item[19].type = #string
* item[0].item[19].required = false
* item[0].item[19].repeats = false

* item[0].item[20].linkId = "PractitionerRole.extension[16]"
* item[0].item[20].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:integration-date.value[x]:valueDate"
* item[0].item[20].text = "Integration Date"
* item[0].item[20].type = #date
* item[0].item[20].required = false
* item[0].item[20].repeats = false

* item[0].item[21].linkId = "PractitionerRole.extension[17]"
* item[0].item[21].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:reference-integration-act.value[x]:valueString"
* item[0].item[21].text = "Reference Act of Integration"
* item[0].item[21].type = #string
* item[0].item[21].required = false
* item[0].item[21].repeats = false

* item[0].item[22].linkId = "PractitionerRole.extension[18]"
* item[0].item[22].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:other-function"
* item[0].item[22].text = "Other Function"
* item[0].item[22].type = #group
* item[0].item[22].required = false
* item[0].item[22].repeats = true

* item[0].item[22].item[0].linkId = "PractitionerRole.extension[18].extension[0]"
* item[0].item[22].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:other-function.extension:job.value[x]:valueCoding"
* item[0].item[22].item[0].text = "Function"
* item[0].item[22].item[0].type = #choice
* item[0].item[22].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/togo-job-valueset"
* item[0].item[22].item[0].required = true
* item[0].item[22].item[0].repeats = false

* item[0].item[22].item[1].linkId = "PractitionerRole.extension[18].extension[1]#tree"
* item[0].item[22].item[1].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.extension:other-function.extension:facility.value[x]:valueReference"
* item[0].item[22].item[1].text = "Facility"
* item[0].item[22].item[1].type = #reference
* item[0].item[22].item[1].required = true
* item[0].item[22].item[1].repeats = false

* item[1].linkId = "Basic[0]"
* item[1].definition = "http://ihris.org/fhir/StructureDefinition/role-departure-profile"
* item[1].text = "Change Reasons Information"
* item[1].type = #group

* item[1].item[0].linkId = "Basic[0].extension[0]"
* item[1].item[0].definition = "http://ihris.org/fhir/StructureDefinition/role-departure-profile#Basic.extension:position-departure-reason.value[x]:valueCoding"
* item[1].item[0].text = "Reason for change"
* item[1].item[0].type = #choice
* item[1].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/position-departure-reason-valueset"
* item[1].item[0].required = true
* item[1].item[0].repeats = false

Instance:       IhrisPractitionerWorkflowEndRole
InstanceOf:     IhrisQuestionnaire
Usage:          #definition
* title = "iHRIS End Role Workflow"
* description = "iHRIS workflow to end a current role/job"
* id = "ihris-endrole"
* url = "http://ihris.org/fhir/Questionnaire/ihris-endrole"
* name = "ihris-endrole"
* status = #active
* date = 2020-08-09
* purpose = "Workflow page for ending a role/job."

* item[0].linkId = "PractitionerRole"
* item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role"
* item[0].text = "End Current Appointment"
* item[0].type = #group

* item[0].item[0].linkId = "PractitionerRole.period.end"
* item[0].item[0].definition = "http://ihris.org/fhir/StructureDefinition/ihris-practitioner-role#PractitionerRole.period.end"
* item[0].item[0].text = "End Date"
* item[0].item[0].type = #date
* item[0].item[0].required = true
* item[0].item[0].repeats = false

* item[1].linkId = "Basic[0]"
* item[1].definition = "http://ihris.org/fhir/StructureDefinition/role-departure-profile"
* item[1].text = "Change Reasons Information"
* item[1].type = #group

* item[1].item[0].linkId = "Basic[0].extension[0]"
* item[1].item[0].definition = "http://ihris.org/fhir/StructureDefinition/role-departure-profile#Basic.extension:position-departure-reason.value[x]:valueCoding"
* item[1].item[0].text = "Reason for change"
* item[1].item[0].type = #choice
* item[1].item[0].answerValueSet = "http://ihris.org/fhir/ValueSet/position-departure-reason-valueset"
* item[1].item[0].required = true
* item[1].item[0].repeats = false

CodeSystem:     NAResourceCodeSystem
Id:             na-resource-codesystem
Title:          "Code System for iHRIS Basic Resources."
* #standard-lists         "Standard Lists"

ValueSet:       NAResourceValueSet
Id:             na-resource-valueset
Title:          "Value Set for iHRIS Namibia Basic Resources."
* codes from system NAResourceCodeSystem

Instance: basic-practitioner-role
InstanceOf: SearchParameter
Usage: #definition
* url = "http://ihris.org/fhir/SearchParameter/basic-practitioner-role"
* name = "Search Parameter on an practitioner role extension on Basic resources"
* status = #active
* description = "Search by practitioner role for a Basic resource."
* code = #practitionerrole
* base = #Basic
* type = #reference
* expression = "Basic.extension('http://ihris.org/fhir/StructureDefinition/practitioner-role-reference')"
* xpath = "f:Basic/f:extension[@url='http://ihris.org/fhir/StructureDefinition/practitioner-role-reference']"
* xpathUsage = #normal
* target = #PractitionerRole

Instance:       ihris-search-profession-parent
InstanceOf:     SearchParameter
Title:          "search parameter for profession parent"
Usage:          #definition
* url = "http://ihris.org/fhir/SearchParameter/ihris-search-profession-parent"
* description = "search parameter for profession parent"
* name = "search parameter for profession parent"
* status = #active
* experimental = false
* code = #professionparent
* base[0] = #Basic
* type = #reference
* expression = "Basic.extension('http://ihris.org/fhir/StructureDefinition/profession-parent')"
* target[0] = #Basic