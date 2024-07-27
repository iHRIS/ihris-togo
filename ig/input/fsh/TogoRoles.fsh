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