Instance:       tgo-hr-staff
InstanceOf:     IhrisRole
Title:          "HR Staff"
Usage:          #example

* extension[name].valueString = "HR Staff"
* extension[primary].valueBoolean = true
* extension[task][0].valueReference = Reference(Basic/ihris-task-read-questionnaire-resource)
* extension[task][1].valueReference = Reference(Basic/ihris-task-navigation-password)
* extension[task][2].valueReference = Reference(Basic/ihris-task-read-ihris-page-practitioner)
* extension[task][3].valueReference = Reference(Basic/ihris-task-read-ihris-page-practitioner-role)
* extension[task][4].valueReference = Reference(Basic/ihris-task-read-code-system)
* extension[task][5].valueReference = Reference(Basic/ihris-task-read-value-set)
* extension[task][6].valueReference = Reference(Basic/ihris-task-read-location-resource)
* extension[task][7].valueReference = Reference(Basic/ihris-task-read-practitioner-resource)
* extension[task][8].valueReference = Reference(Basic/ihris-task-read-practitioner-role-resource)
* extension[task][9].valueReference = Reference(Basic/ihris-task-read-questionnaire-response-resource)
* extension[task][10].valueReference = Reference(Basic/ihris-task-read-basic-resource)
* extension[task][11].valueReference = Reference(Basic/ihris-task-write-questionnaire-response-resource)
* extension[task][12].valueReference = Reference(Basic/ihris-task-write-practitioner-resource)
* extension[task][13].valueReference = Reference(Basic/ihris-task-write-practitioner-role-resource)
* extension[task][14].valueReference = Reference(Basic/ihris-task-add-situation)
* extension[task][15].valueReference = Reference(Basic/ihris-task-edit-situation)
* extension[task][16].valueReference = Reference(Basic/ihris-task-add-children)
* extension[task][17].valueReference = Reference(Basic/ihris-task-edit-children)
* extension[task][18].valueReference = Reference(Basic/ihris-task-add-banking)
* extension[task][19].valueReference = Reference(Basic/ihris-task-edit-banking)
* extension[task][20].valueReference = Reference(Basic/ihris-task-add-performance)
* extension[task][21].valueReference = Reference(Basic/ihris-task-edit-performance)
* extension[task][22].valueReference = Reference(Basic/ihris-task-add-scanned-document)
* extension[task][23].valueReference = Reference(Basic/ihris-task-view-scanned-document)
* extension[task][24].valueReference = Reference(Basic/ihris-task-add-notes)
* extension[task][25].valueReference = Reference(Basic/ihris-task-edit-notes)
* extension[task][26].valueReference = Reference(Basic/ihris-task-add-leave)
* extension[task][27].valueReference = Reference(Basic/ihris-task-edit-leave)
* extension[task][28].valueReference = Reference(Basic/ihris-task-add-employment)
* extension[task][29].valueReference = Reference(Basic/ihris-task-edit-employment)
* extension[task][30].valueReference = Reference(Basic/ihris-task-add-salary)
* extension[task][31].valueReference = Reference(Basic/ihris-task-edit-salary)
* extension[task][32].valueReference = Reference(Basic/ihris-task-add-agent-status)
* extension[task][33].valueReference = Reference(Basic/ihris-task-edit-agent-status)
* extension[task][34].valueReference = Reference(Basic/ihris-task-add-emergency)
* extension[task][35].valueReference = Reference(Basic/ihris-task-edit-emergency)
* extension[task][36].valueReference = Reference(Basic/ihris-task-add-disciplinary-action)
* extension[task][37].valueReference = Reference(Basic/ihris-task-edit-disciplinary-action)
* extension[task][38].valueReference = Reference(Basic/ihris-task-add-preservice-training)
* extension[task][39].valueReference = Reference(Basic/ihris-task-edit-preservice-training)
* extension[task][40].valueReference = Reference(Basic/ihris-task-add-inservice-training)
* extension[task][41].valueReference = Reference(Basic/ihris-task-edit-inservice-training)
* extension[task][42].valueReference = Reference(Basic/ihris-task-section-situation)
* extension[task][43].valueReference = Reference(Basic/ihris-task-section-classification)
* extension[task][44].valueReference = Reference(Basic/ihris-task-section-inservice-training)
* extension[task][45].valueReference = Reference(Basic/ihris-task-section-inservice-training-request)
* extension[task][46].valueReference = Reference(Basic/ihris-task-section-preservice-training)
* extension[task][47].valueReference = Reference(Basic/ihris-task-section-emergency)
* extension[task][48].valueReference = Reference(Basic/ihris-task-section-disciplinary-action)
* extension[task][49].valueReference = Reference(Basic/ihris-task-add-classification)
* extension[task][50].valueReference = Reference(Basic/ihris-task-edit-classification)
* extension[task][51].valueReference = Reference(Basic/ihris-task-add-validation)
* extension[task][52].valueReference = Reference(Basic/ihris-task-edit-validation)
* extension[task][53].valueReference = Reference(Basic/ihris-task-add-inservice-training-request)
* extension[task][54].valueReference = Reference(Basic/ihris-task-edit-inservice-training-request)
* extension[task][55].valueReference = Reference(Basic/ihris-task-navigation-profile)
* extension[task][56].valueReference = Reference(Basic/ihris-task-navigation-leaveRequest)
* extension[task][57].valueReference = Reference(Basic/ihris-task-navigation-dashboard)
* extension[task][58].valueReference = Reference(Basic/ihris-task-navigation-person)
* extension[task][59].valueReference = Reference(Basic/ihris-task-navigation-person-person-search)
* extension[task][60].valueReference = Reference(Basic/ihris-task-navigation-person-person-add)
* extension[task][61].valueReference = Reference(Basic/ihris-task-navigation-reports)
* extension[task][62].valueReference = Reference(Basic/ihris-task-navigation-reports-staff-reports)
* extension[task][63].valueReference = Reference(Basic/ihris-task-navigation-staff-reports-staff-directorate)
* extension[task][64].valueReference = Reference(Basic/ihris-task-navigation-staff-reports-situation)
* extension[task][65].valueReference = Reference(Basic/ihris-task-navigation-staff-reports-classification)
* extension[task][66].valueReference = Reference(Basic/ihris-task-navigation-staff-reports-preservice)
* extension[task][67].valueReference = Reference(Basic/ihris-task-navigation-staff-reports-inservice)
* extension[task][68].valueReference = Reference(Basic/ihris-task-navigation-staff-reports-workexperience)
* extension[task][69].valueReference = Reference(Basic/ihris-task-navigation-staff-reports-performance)
* extension[task][70].valueReference = Reference(Basic/ihris-task-navigation-ihris-apps-list)
* extension[task][71].valueReference = Reference(Basic/ihris-task-section-identifiers)
* extension[task][72].valueReference = Reference(Basic/ihris-task-section-practitioner)
* extension[task][73].valueReference = Reference(Basic/ihris-task-section-contact)
* extension[task][74].valueReference = Reference(Basic/ihris-task-section-classification)
* extension[task][75].valueReference = Reference(Basic/ihris-task-section-position)
* extension[task][76].valueReference = Reference(Basic/ihris-task-section-agent-status)
* extension[task][77].valueReference = Reference(Basic/ihris-task-section-preservice-training-history)
* extension[task][78].valueReference = Reference(Basic/ihris-task-section-inservice-training-request)
* extension[task][79].valueReference = Reference(Basic/ihris-task-section-employment-history)
* extension[task][80].valueReference = Reference(Basic/ihris-task-section-leave)
* extension[task][81].valueReference = Reference(Basic/ihris-task-section-performance)
* extension[task][82].valueReference = Reference(Basic/ihris-task-section-disciplinary-action)
* extension[task][83].valueReference = Reference(Basic/ihris-task-section-emergency)
* extension[task][84].valueReference = Reference(Basic/ihris-task-section-children)
* extension[task][85].valueReference = Reference(Basic/ihris-task-section-banking)
* extension[task][86].valueReference = Reference(Basic/ihris-task-section-scanned-documents)
* extension[task][87].valueReference = Reference(Basic/ihris-task-section-notes)
* extension[task][88].valueReference = Reference(Basic/ihris-task-write-person-resource)
* extension[task][89].valueReference = Reference(Basic/ihris-task-write-classification-profile)
* extension[task][90].valueReference = Reference(Basic/ihris-task-write-agent-status-profile)
* extension[task][91].valueReference = Reference(Basic/ihris-task-write-preservice-training-profile)
* extension[task][92].valueReference = Reference(Basic/ihris-task-write-inservice-training-profile)
* extension[task][93].valueReference = Reference(Basic/ihris-task-write-inservice-training-request-profile)
* extension[task][94].valueReference = Reference(Basic/ihris-task-write-inservice-training-extension-request-profile)
* extension[task][95].valueReference = Reference(Basic/ihris-task-write-ihris-basic-employment-history)
* extension[task][96].valueReference = Reference(Basic/ihris-task-write-ihris-basic-leave)
* extension[task][97].valueReference = Reference(Basic/ihris-task-write-ihris-basic-performance)
* extension[task][98].valueReference = Reference(Basic/ihris-task-write-ihris-basic-discipline)
* extension[task][99].valueReference = Reference(Basic/ihris-task-write-ihris-basic-emergency)
* extension[task][100].valueReference = Reference(Basic/ihris-task-write-staff-child-profile)
* extension[task][101].valueReference = Reference(Basic/ihris-task-write-banking-profile)
* extension[task][102].valueReference = Reference(Basic/ihris-task-write-scanned-document-profile)
* extension[task][103].valueReference = Reference(Basic/ihris-task-write-notes-profile)

Instance:       ihris-task-add-situation
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Situation"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "add-situation"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "add-situation"

Instance:       ihris-task-edit-situation
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Situation"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "edit-situation"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "edit-situation"

Instance:       ihris-task-add-children
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Staff Child"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "Add Staff Child"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "add-children"

Instance:       ihris-task-edit-children
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Edit Staff Child"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "Edit Staff Child"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "edit-children"

Instance:       ihris-task-add-banking
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Banking Information"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "Add Banking Information"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "add-banking"

Instance:       ihris-task-edit-banking
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Edit Banking Information"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "Edit Banking Information"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "edit-banking"

Instance:       ihris-task-add-performance
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Performance"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "add-performance"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "add-performance"

Instance:       ihris-task-edit-performance
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Edit Performance"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "edit-performance"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "edit-performance"

Instance:       ihris-task-add-scanned-document
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Scanned Document"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "add-scanned-document"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "add-scanned-document"

Instance:       ihris-task-view-scanned-document
InstanceOf:     IhrisTask
Usage:          #example
Title:          "View Scanned Document"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "view-scanned-document"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "view-scanned-document"

Instance:       ihris-task-add-notes
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Notes"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "add-notes"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "add-notes"

Instance:       ihris-task-edit-notes
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Edit Notes"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "edit-notes"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "edit-notes"

Instance:       ihris-task-add-leave
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Leave"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "add-leave"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "add-leave"

Instance:       ihris-task-edit-leave
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Edit Leave"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "edit-leave"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "edit-leave"

Instance:       ihris-task-add-employment
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Employment"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "add-employment"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "add-employment"

Instance:       ihris-task-edit-employment
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Edit Employment"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "edit-employment"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "edit-employment"

Instance:       ihris-task-add-salary
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Salary"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "add-salary"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "add-salary"

Instance:       ihris-task-edit-salary
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Edit Salary"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "edit-salary"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "edit-salary"

Instance:       ihris-task-add-agent-status
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Agent Status"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "Add Agent Status"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "add-agent-status"

Instance:       ihris-task-edit-agent-status
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Edit Agent Status"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "Edit Agent Status"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "edit-agent-status"

Instance:       ihris-task-add-emergency
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Emergency"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "add-emergency"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "add-emergency"

Instance:       ihris-task-edit-emergency
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Edit Emergency"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "edit-emergency"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "edit-emergency"

Instance:       ihris-task-add-disciplinary-action
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Disciplinary Action"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "add-disciplinary-action"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "add-disciplinary-action"

Instance:       ihris-task-edit-disciplinary-action
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Edit Disciplinary Action"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "edit-disciplinary-action"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "edit-disciplinary-action"

Instance:       ihris-task-add-preservice-training
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Education"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "add-preservice-training"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "add-preservice-training"

Instance:       ihris-task-edit-preservice-training
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Edit Preservice Training"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "edit-preservice-training"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "edit-preservice-training"

Instance:       ihris-task-add-inservice-training
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Education"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "add-inservice-training"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "add-inservice-training"

Instance:       ihris-task-edit-inservice-training
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Edit Inservice Training"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "edit-inservice-training"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "edit-inservice-training"

Instance:       ihris-task-section-situation
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Situation Section"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "situation"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "situation"

Instance:       ihris-task-section-classification
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Classification Section"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "classification"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "classification"

Instance:       ihris-task-section-inservice-training
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Inservice Training Section"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "inservice-training"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "inservice-training"

Instance:       ihris-task-section-inservice-training-request
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Inservice Training Request Section"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "inservice-training-request"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "inservice-training-request"

Instance:       ihris-task-section-preservice-training
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Preservice Training Section"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "preservice-training"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "preservice-training"

Instance:       ihris-task-section-emergency
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Emergency Section"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "emergency"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "emergency"

Instance:       ihris-task-section-disciplinary-action
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Disciplinary Action Section"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "disciplinary-action"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "disciplinary-action"

Instance:       ihris-task-add-classification
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Classification"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "add-classification"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "add-classification"

Instance:       ihris-task-edit-classification
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Edit Classification"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "edit-classification"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "edit-classification"

Instance:       ihris-task-add-validation
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Validation"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "add-validation"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "add-validation"

Instance:       ihris-task-edit-validation
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Edit Validation"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "edit-validation"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "edit-validation"

Instance:       ihris-task-add-inservice-training-request
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Add Inservice Training Request"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "add-inservice-training-request"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "add-inservice-training-request"

Instance:       ihris-task-edit-inservice-training-request
InstanceOf:     IhrisTask
Usage:          #example
Title:          "Edit Inservice Training Request"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "edit-inservice-training-request"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#special
* extension[attributes][0].extension[instance].valueId = "edit-inservice-training-request"
            

Instance:       ihris-task-navigation-leaveRequest
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Leave request Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Leave request Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "leaveRequest"
            

Instance:       ihris-task-navigation-dashboard
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Dashboard Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Dashboard Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "dashboard"
            

Instance:       ihris-task-navigation-person
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See People Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See People Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "person"
            

Instance:       ihris-task-navigation-person-person-search
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Search People Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Search People Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "person.person-search"
            

Instance:       ihris-task-navigation-person-person-add
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Add Person Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Add Person Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "person.person-add"
            

Instance:       ihris-task-navigation-database
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Database Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Database Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database"
            

Instance:       ihris-task-navigation-database-jobLists
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Job Lists Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Job Lists Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.jobLists"
            

Instance:       ihris-task-navigation-jobLists-cadre
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Cadres Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Cadres Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.jobLists.cadre"
            

Instance:       ihris-task-navigation-jobLists-classification
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Classifications Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Classifications Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.jobLists.classification"
            

Instance:       ihris-task-navigation-jobLists-job-type
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Job Type Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Job Type Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.jobLists.job-type"
            

Instance:       ihris-task-navigation-database-eduLists
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Education Lists Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Education Lists Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.eduLists"
            

Instance:       ihris-task-navigation-eduLists-educational-major
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Educational Major Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Educational Major Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.eduLists.educational-major"
            

Instance:       ihris-task-navigation-eduLists-education-type
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Education Type Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Education Type Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.eduLists.education-type"
            

Instance:       ihris-task-navigation-eduLists-institution-type
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Education Institution Type Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Education Institution Type Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.eduLists.institution-type"
            

Instance:       ihris-task-navigation-eduLists-institution
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Education Institution Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Education Institution Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.eduLists.institution"
            

Instance:       ihris-task-navigation-eduLists-training-fund
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Training Fund Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Training Fund Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.eduLists.training-fund"
            

Instance:       ihris-task-navigation-database-postLists
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Position Lists Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Position Lists Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.postLists"
            

Instance:       ihris-task-navigation-postLists-employment-status
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Employment Status Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Employment Status Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.postLists.employment-status"
            

Instance:       ihris-task-navigation-postLists-reason-departure
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Reasons For departure Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Reasons For departure Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.postLists.reason-departure"
            

Instance:       ihris-task-navigation-postLists-salarysource
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Funds/Salary Sources Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Funds/Salary Sources Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.postLists.salarysource"
            

Instance:       ihris-task-navigation-database-otherLists
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Other Lists Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Other Lists Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists"
            

Instance:       ihris-task-navigation-otherLists-agent-status
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Agent Status Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Agent Status Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists.agent-status"
            

Instance:       ihris-task-navigation-otherLists-identifier
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Identifier Types Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Identifier Types Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists.identifier"
            

Instance:       ihris-task-navigation-otherLists-leave-type
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Leave Types Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Leave Types Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists.leave-type"
            

Instance:       ihris-task-navigation-otherLists-disciplineaction
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Discipline Action Type Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Discipline Action Type Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists.disciplineaction"
            

Instance:       ihris-task-navigation-otherLists-disciplinary-action-taken
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Disciplinary Action Taken Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Disciplinary Action Taken Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists.disciplinary-action-taken"
            

Instance:       ihris-task-navigation-otherLists-training
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See In-Service Training Type/Category Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See In-Service Training Type/Category Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists.training"
            

Instance:       ihris-task-navigation-otherLists-bank
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Bank Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Bank Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists.bank"
            

Instance:       ihris-task-navigation-otherLists-civility
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Civility Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Civility Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists.civility"
            

Instance:       ihris-task-navigation-otherLists-institution-type
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Institution Type Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Institution Type Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists.institution-type"
            

Instance:       ihris-task-navigation-otherLists-ihris-relation
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Relationship Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Relationship Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.otherLists.ihris-relation"
            

Instance:       ihris-task-navigation-database-salary
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Salary List Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Salary List Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.salary"
            

Instance:       ihris-task-navigation-salary-pay-scale
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Salary Scale Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Salary Scale Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.salary.pay-scale"
            

Instance:       ihris-task-navigation-salary-salarysource
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Salary Sources Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Salary Sources Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.salary.salarysource"
            

Instance:       ihris-task-navigation-salary-frequency
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Pay Frequency Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Pay Frequency Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.salary.frequency"
            

Instance:       ihris-task-navigation-database-geography
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Geographical Information Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Geographical Information Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.geography"
            

Instance:       ihris-task-navigation-geography-country
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Country Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Country Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.geography.country"
            

Instance:       ihris-task-navigation-geography-region
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Province Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Province Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.geography.region"
            

Instance:       ihris-task-navigation-geography-district
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See District Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See District Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.geography.district"
            

Instance:       ihris-task-navigation-geography-commune
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Commune Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Commune Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.geography.commune"
            

Instance:       ihris-task-navigation-geography-nationality
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Nationality Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Nationality Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.geography.nationality"
            

Instance:       ihris-task-navigation-database-classification
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Classification Lists Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Classification Lists Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.classification"
            

Instance:       ihris-task-navigation-classification-grade
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Grade Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Grade Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.classification.grade"
            

Instance:       ihris-task-navigation-classification-civil-servant-category
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Civil Servant Category Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Civil Servant Category Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.classification.civil-servant-category"
            

Instance:       ihris-task-navigation-classification-salary-index
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Salary Index Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Salary Index Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.classification.salary-index"
            

Instance:       ihris-task-navigation-classification-echelon
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Echelon Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Echelon Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.classification.echelon"
            

Instance:       ihris-task-navigation-classification-class
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Class Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Class Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.classification.class"
            

Instance:       ihris-task-navigation-classification-organization
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Organization Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Organization Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.classification.organization"
            

Instance:       ihris-task-navigation-database-situation
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Situation Lists Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Situation Lists Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.situation"
            

Instance:       ihris-task-navigation-situation-agent-type
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Agent Type Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Agent Type Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.situation.agent-type"
            

Instance:       ihris-task-navigation-situation-service
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Service Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Service Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.situation.service"
            

Instance:       ihris-task-navigation-situation-job
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Job Titles/Function Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Job Titles/Function Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.situation.job"
            

Instance:       ihris-task-navigation-situation-profession-group
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Profession Group Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Profession Group Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.situation.profession-group"
            

Instance:       ihris-task-navigation-situation-profession-subgroup
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Profession Sub-Group Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Profession Sub-Group Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.situation.profession-subgroup"
            

Instance:       ihris-task-navigation-situation-qualification
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Qualification Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Qualification Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.situation.qualification"
            

Instance:       ihris-task-navigation-situation-study-level
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Study Level Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Study Level Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.situation.study-level"
            

Instance:       ihris-task-navigation-situation-specialty
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Specialty Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Specialty Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.situation.specialty"
            

Instance:       ihris-task-navigation-situation-budget-type
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Budget Type Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Budget Type Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.situation.budget-type"
            

Instance:       ihris-task-navigation-database-facility-data
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Facility Data Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Facility Data Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.facility-data"
            

Instance:       ihris-task-navigation-facility-data-facility-type
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Facility Type Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Facility Type Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.facility-data.facility-type"
            

Instance:       ihris-task-navigation-facility-data-facility
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Facility Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Facility Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.facility-data.facility"
            

Instance:       ihris-task-navigation-facility-data-department
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Department Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Department Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.facility-data.department"
            

Instance:       ihris-task-navigation-facility-data-unit
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Unit Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Unit Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.facility-data.unit"
            

Instance:       ihris-task-navigation-facility-data-program
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Program Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Program Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.facility-data.program"
            

Instance:       ihris-task-navigation-facility-data-sector
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Sector Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Sector Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "database.facility-data.sector"
            

Instance:       ihris-task-navigation-reports
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Reports Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Reports Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "reports"
            

Instance:       ihris-task-navigation-reports-staff-reports
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Staff Reports Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Staff Reports Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "reports.staff-reports"
            

Instance:       ihris-task-navigation-staff-reports-staff-directorate
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Staff Directorate Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Staff Directorate Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "reports.staff-reports.staff-directorate"
            

Instance:       ihris-task-navigation-staff-reports-situation
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Situation Information Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Situation Information Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "reports.staff-reports.situation"
            

Instance:       ihris-task-navigation-staff-reports-classification
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Classification Information Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Classification Information Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "reports.staff-reports.classification"
            

Instance:       ihris-task-navigation-staff-reports-preservice
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Pre-service Information Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Pre-service Information Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "reports.staff-reports.preservice"
            

Instance:       ihris-task-navigation-staff-reports-inservice
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See In-service Information Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See In-service Information Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "reports.staff-reports.inservice"
            

Instance:       ihris-task-navigation-staff-reports-workexperience
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Work Experience Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Work Experience Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "reports.staff-reports.workexperience"
            

Instance:       ihris-task-navigation-staff-reports-performance
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Performance Evaluation Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Performance Evaluation Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "reports.staff-reports.performance"
            

Instance:       ihris-task-navigation-users
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See System Users Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See System Users Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "users"
            

Instance:       ihris-task-navigation-users-users-search
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Search Users Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Search Users Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "users.users-search"
            

Instance:       ihris-task-navigation-users-role-tasks
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See User Role Tasks Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See User Role Tasks Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "users.role-tasks"
            

Instance:       ihris-task-navigation-audit
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Audit Logs Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Audit Logs Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "audit"

Instance:       ihris-task-navigation-ihris-apps-list
InstanceOf:     IhrisTask
Usage:          #example
Title:          "See Apps Menu"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "See Apps Menu"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#navigation
* extension[attributes][0].extension[instance].valueId = "ihris-apps-list"

Instance:       ihris-task-section-identifiers
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view identifiers Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View identifiers Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "identifiers"
              

Instance:       ihris-task-section-practitioner
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view Practitioner Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View Practitioner Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "Practitioner"
              

Instance:       ihris-task-section-contact
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view contact Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View contact Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "contact"

Instance:       ihris-task-section-position
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view position Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View position Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "position"
              

Instance:       ihris-task-section-agent-status
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view agent-status Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View agent-status Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "agent-status"
              

Instance:       ihris-task-section-preservice-training-history
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view preservice-training-history Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View preservice-training-history Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "preservice-training-history"

Instance:       ihris-task-section-employment-history
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view employment-history Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View employment-history Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "employment-history"
              

Instance:       ihris-task-section-leave
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view leave Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View leave Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "leave"
              

Instance:       ihris-task-section-performance
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view performance Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View performance Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "performance"

Instance:       ihris-task-section-children
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view children Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View children Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "children"
              

Instance:       ihris-task-section-banking
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view banking Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View banking Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "banking"
              

Instance:       ihris-task-section-scanned-documents
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view scanned-documents Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View scanned-documents Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "scanned-documents"
              

Instance:       ihris-task-section-notes
InstanceOf:     IhrisTask
Title:          "iHRIS Task To view notes Section"
Usage:          #example
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "View notes Section"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#special
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#section
* extension[attributes][0].extension[instance].valueId = "notes"

Instance:      ihris-task-write-classification-profile
InstanceOf:    IhrisTask
Usage:         #example
Title:         "Create Classification"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "classification"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[constraint].valueString = "meta.where(profile contains 'http://ihris.org/fhir/StructureDefinition/classification-profile').exists()"

Instance:      ihris-task-write-agent-status-profile
InstanceOf:    IhrisTask
Usage:         #example
Title:         "Create Agent Status"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "agent-status"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[constraint].valueString = "meta.where(profile contains 'http://ihris.org/fhir/StructureDefinition/agent-status-profile').exists()"

Instance:      ihris-task-write-preservice-training-profile
InstanceOf:    IhrisTask
Usage:         #example
Title:         "Create Preservice Training"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "preservice-training"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[constraint].valueString = "meta.where(profile contains 'http://ihris.org/fhir/StructureDefinition/preservice-training-profile').exists()"

Instance:      ihris-task-write-inservice-training-profile
InstanceOf:    IhrisTask
Usage:         #example
Title:         "Create Inservice Training"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "inservice-training"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[constraint].valueString = "meta.where(profile contains 'http://ihris.org/fhir/StructureDefinition/inservice-training-profile').exists()"

Instance:      ihris-task-write-inservice-training-request-profile
InstanceOf:    IhrisTask
Usage:         #example
Title:         "Create Inservice Training"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "inservice-training-request"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[constraint].valueString = "meta.where(profile contains 'http://ihris.org/fhir/StructureDefinition/inservice-training-request-profile').exists()"

Instance:      ihris-task-write-inservice-training-extension-request-profile
InstanceOf:    IhrisTask
Usage:         #example
Title:         "Create Inservice Training Extension Request"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "inservice-training-extension-request"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[constraint].valueString = "meta.where(profile contains 'http://ihris.org/fhir/StructureDefinition/inservice-training-extension-request-profile').exists()"

Instance:      ihris-task-write-ihris-basic-employment-history
InstanceOf:    IhrisTask
Usage:         #example
Title:         "Create Employment History"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "ihris-basic-employment-history"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[constraint].valueString = "meta.where(profile contains 'http://ihris.org/fhir/StructureDefinition/ihris-basic-employment-history').exists()"

Instance:      ihris-task-write-ihris-basic-leave
InstanceOf:    IhrisTask
Usage:         #example
Title:         "Create Leave"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "Create Leave"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[constraint].valueString = "meta.where(profile contains 'http://ihris.org/fhir/StructureDefinition/ihris-basic-leave').exists()"

Instance:      ihris-task-write-ihris-basic-performance
InstanceOf:    IhrisTask
Usage:         #example
Title:         "Create Performance Evaluation"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "Create Performance Evaluation"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[constraint].valueString = "meta.where(profile contains 'http://ihris.org/fhir/StructureDefinition/ihris-basic-performance').exists()"

Instance:      ihris-task-write-ihris-basic-discipline
InstanceOf:    IhrisTask
Usage:         #example
Title:         "Create Discipline"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "Create Discipline"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[constraint].valueString = "meta.where(profile contains 'http://ihris.org/fhir/StructureDefinition/ihris-basic-discipline').exists()"

Instance:      ihris-task-write-ihris-basic-emergency
InstanceOf:    IhrisTask
Usage:         #example
Title:         "Create Emergency Contact"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "Create Emergency Contact"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[constraint].valueString = "meta.where(profile contains 'http://ihris.org/fhir/StructureDefinition/ihris-basic-emergency').exists()"

Instance:      ihris-task-write-staff-child-profile
InstanceOf:    IhrisTask
Usage:         #example
Title:         "Create Staff Child"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "Create Staff Child"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[constraint].valueString = "meta.where(profile contains 'http://ihris.org/fhir/StructureDefinition/staff-child-profile').exists()"

Instance:      ihris-task-write-banking-profile
InstanceOf:    IhrisTask
Usage:         #example
Title:         "Create Banking"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "Create Banking"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[constraint].valueString = "meta.where(profile contains 'http://ihris.org/fhir/StructureDefinition/banking-profile').exists()"

Instance:      ihris-task-write-scanned-document-profile
InstanceOf:    IhrisTask
Usage:         #example
Title:         "Create Scanned Document"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "Create Scanned Document"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[constraint].valueString = "meta.where(profile contains 'http://ihris.org/fhir/StructureDefinition/scanned-document-profile').exists()"

Instance:      ihris-task-write-notes-profile
InstanceOf:    IhrisTask
Usage:         #example
Title:         "Create Notes"
* code = IhrisResourceCodeSystem#task
* extension[name].valueString = "Create Notes"
* extension[attributes][0].extension[permission].valueCode = IhrisTaskPermissionCodeSystem#write
* extension[attributes][0].extension[resource].valueCode = IhrisTaskResourceCodeSystem#Basic
* extension[attributes][0].extension[constraint].valueString = "meta.where(profile contains 'http://ihris.org/fhir/StructureDefinition/notes-profile').exists()"