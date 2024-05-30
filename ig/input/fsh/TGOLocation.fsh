Profile:        TGOCountry
Parent:         Location
Id:             tgo-country
Title:          "Country"
Description:    "iHRIS Profile of Locations to manage jurisdictions."
* type 0..0
* name 1..1 MS
* name ^label = "Name"
* status 1..1 MS
* status ^label = "Status"
* partOf 0..0 MS

Profile:        TGORegion
Parent:         Location
Id:             tgo-region
Title:          "Region"
Description:    "iHRIS Profile of Locations to manage jurisdictions."
* type 0..0
* name 1..1 MS
* name ^label = "Name"
* status 1..1 MS
* status ^label = "Status"
* partOf 1..1 MS
* partOf only Reference(TGOCountry)
* partOf ^label = "Country"

Profile:        TGODistrict
Parent:         Location
Id:             tgo-district
Title:          "District"
Description:    "iHRIS Profile of Locations to manage jurisdictions."
* type 0..0
* name 1..1 MS
* name ^label = "Name"
* status 1..1 MS
* status ^label = "Status"
* partOf 1..1 MS
* partOf only Reference(TGORegion)
* partOf ^label = "Region"

Profile:        TGOCommune
Parent:         Location
Id:             tgo-commune
Title:          "Commune"
Description:    "iHRIS Profile of Locations to manage jurisdictions."
* type 0..0
* name 1..1 MS
* name ^label = "Name"
* status 1..1 MS
* status ^label = "Status"
* partOf 1..1 MS
* partOf only Reference(TGODistrict)
* partOf ^label = "District"

Profile:        TGOFacility
Parent:         Location
Id:             tgo-facility
Title:          "Facility"
Description:    "Profile of Locations to manage facilities."
* type 1..1 MS
* type ^label = "Facility Type"
* type.coding 1..1 MS
* type.coding from FacilityTypeValueSet
* type.coding ^label = "Facility Type"
* identifier 0..1 MS
* identifier ^label = "Identifier"
* identifier.value MS
* identifier.value ^label = "Facility Code"
* name 1..1 MS
* name ^label = "Name"
* status 1..1 MS
* status ^label = "Status"
* position 0..1 MS
* position ^label = "Co-ordinates"
* position.longitude 1..1 MS
* position.longitude ^label = "Longitude"
* position.latitude 1..1 MS
* position.latitude ^label = "Latitude"
* partOf 1..1 MS 
* partOf only Reference(TGOCommune)
* partOf ^label = "Location"
* extension contains
    FacilitySector named facility-sector 1..1 MS
* extension[facility-sector] ^label = "Sector"
* extension[facility-sector].valueCoding MS

Extension:      FacilitySector
Id:             facility-sector
Title:          "Facility Sector"
Description:    "Facility Sector."
* ^context.type = #element
* ^context.expression = "Location"
* value[x] only Coding
* valueCoding 1..1 MS
* valueCoding ^label = "Sector"
* valueCoding from http://ihris.org/fhir/ValueSet/facility-sector-valueset (required)


Instance:       ihris-page-tgo-facility
InstanceOf:     IhrisPage
Title:          "iHRIS Facility Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/tgo-facility)
* extension[display].extension[search][0].valueString = "Facility Name|name"
* extension[display].extension[search][1].valueString = "Facility Type|type.coding.display"
* extension[display].extension[search][2].valueString = "Sector|extension.where(url='http://ihris.org/fhir/StructureDefinition/facility-sector').valueCoding.display"
* extension[display].extension[search][3].valueString = "Commune|partOf"
* extension[display].extension[search][4].valueString = "Status|status"
* extension[display].extension[search][5].valueString = "Longitute|position.longitude"
* extension[display].extension[search][6].valueString = "Latitude|position.latitude"
* extension[display].extension[filter][0].valueString = "Name|name:contains"
* extension[display].extension[filter][1].valueString = "Type|type|http://ihris.org/fhir/ValueSet/facility-type-valueset"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/tgo-facility/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "Location.id"
* extension[display].extension[link][0].extension[text].valueString = "Edit"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "primary"
* extension[section][0].extension[title].valueString = "Facility"
* extension[section][0].extension[description].valueString = "Facility"
* extension[section][0].extension[name].valueString = "Location"
* extension[section][0].extension[field][0].valueString = "Location.name"
* extension[section][0].extension[field][1].valueString = "Location.type"
* extension[section][0].extension[field][2].valueString = "Location.extension:facility-sector"
* extension[section][0].extension[field][3].valueString = "Location.identifier"
* extension[section][0].extension[field][4].valueString = "Location.partOf"
* extension[section][0].extension[field][5].valueString = "Location.status"
* extension[section][0].extension[field][6].valueString = "Location.position"

Instance:       ihris-page-tgo-country
InstanceOf:     IhrisPage
Title:          "District Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/tgo-country)
* extension[display].extension[search][0].valueString = "Name|name"
* extension[display].extension[filter][0].valueString = "Name|name:contains"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/tgo-country/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "Location.id"
* extension[display].extension[link][0].extension[text].valueString = "Edit"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "primary"
* extension[section][0].extension[title].valueString = "Countries"
* extension[section][0].extension[description].valueString = "Countries"
* extension[section][0].extension[name].valueString = "Countries"
* extension[section][0].extension[field][0].valueString = "Location.name"
* extension[section][0].extension[field][1].valueString = "Location.type"
* extension[section][0].extension[field][2].valueString = "Location.status"

Instance:       ihris-page-tgo-region
InstanceOf:     IhrisPage
Title:          "Region Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/tgo-region)
* extension[display].extension[search][0].valueString = "Name|name"
* extension[display].extension[filter][0].valueString = "Name|name:contains"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/tgo-region/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "Location.id"
* extension[display].extension[link][0].extension[text].valueString = "Edit"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "primary"
* extension[section][0].extension[title].valueString = "Region"
* extension[section][0].extension[description].valueString = "Regions"
* extension[section][0].extension[name].valueString = "region"
* extension[section][0].extension[field][0].valueString = "Location.name"
* extension[section][0].extension[field][1].valueString = "Location.type"
* extension[section][0].extension[field][2].valueString = "Location.partOf"
* extension[section][0].extension[field][3].valueString = "Location.status"

Instance:       ihris-page-tgo-district
InstanceOf:     IhrisPage
Title:          "District Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/tgo-district)
* extension[display].extension[search][0].valueString = "Name|name"
* extension[display].extension[search][1].valueString = "Region|partOf"
* extension[display].extension[filter][0].valueString = "Name|name:contains"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/tgo-district/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "Location.id"
* extension[display].extension[link][0].extension[text].valueString = "Edit"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "primary"
* extension[section][0].extension[title].valueString = "District"
* extension[section][0].extension[description].valueString = "District"
* extension[section][0].extension[name].valueString = "District"
* extension[section][0].extension[field][0].valueString = "Location.name"
* extension[section][0].extension[field][1].valueString = "Location.type"
* extension[section][0].extension[field][2].valueString = "Location.partOf"
* extension[section][0].extension[field][3].valueString = "Location.status"

Instance:       ihris-page-tgo-commune
InstanceOf:     IhrisPage
Title:          "Commune Page"
Usage:          #example
* code = IhrisResourceCodeSystem#page
* extension[display].extension[resource].valueReference = Reference(StructureDefinition/tgo-commune)
* extension[display].extension[search][0].valueString = "Name|name"
* extension[display].extension[search][1].valueString = "District|partOf"
* extension[display].extension[filter][0].valueString = "Name|name:contains"
* extension[display].extension[link][0].extension[url].valueUrl = "/resource/view/tgo-commune/FIELD?edit=true"
* extension[display].extension[link][0].extension[field].valueString = "Location.id"
* extension[display].extension[link][0].extension[text].valueString = "Edit"
* extension[display].extension[link][0].extension[button].valueBoolean = true
* extension[display].extension[link][0].extension[icon].valueString = "mdi-pencil"
* extension[display].extension[link][0].extension[class].valueString = "primary"
* extension[section][0].extension[title].valueString = "Commune"
* extension[section][0].extension[description].valueString = "Commune"
* extension[section][0].extension[name].valueString = "Commune"
* extension[section][0].extension[field][0].valueString = "Location.name"
* extension[section][0].extension[field][1].valueString = "Location.type"
* extension[section][0].extension[field][2].valueString = "Location.partOf"
* extension[section][0].extension[field][3].valueString = "Location.status"

Alias: $tgo-jurisdiction-type-codesystem = http://ihris.org/fhir/CodeSystem/tgo-jurisdiction-type-codesystem

Instance: countrytgo
InstanceOf: Location
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2023-05-03T21:33:07.462+03:00"
* meta.source = "#HtC6uAx9AM64G20N"
* meta.profile = "http://ihris.org/fhir/StructureDefinition/tgo-country"
* status = #active
* name = "Togo"
* type.coding.version = "0.4.0"
* type.coding = $tgo-jurisdiction-type-codesystem#country "Country"