Instance: PrenatalGroupPatientFemaleandPatientMale
InstanceOf: Group
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-09-25T00:02:13.030+00:00"
* meta.source = "#mzuK1EHcvMPipAda"
* text.status = #additional
* text.div = "<div></div>"
* type = #person
* actual = true
* member[0].entity = Reference(PatientFemale)
* member[=].period.start = "2024-06-26"
* member[=].inactive = false
* member[+].entity = Reference(PatientMale)
* member[=].period.start = "2024-06-26"
* member[=].inactive = false