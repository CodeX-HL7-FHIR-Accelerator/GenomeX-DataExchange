Instance: PrenatalRelatedPersonPatientMale
InstanceOf: RelatedPerson
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-09-25T00:02:13.030+00:00"
* meta.source = "#mzuK1EHcvMPipAda"
* extension.url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension.extension[0].url = "ombCategory"
* extension.extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension.extension[+].url = "detailed"
* extension.extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2108-9 "European"
* extension.extension[+].url = "text"
* extension.extension[=].valueString = "Northern European"
* identifier.use = #official
* identifier.type = $v2-0203#MR "Patient ID"
* identifier.value = "fec6172efdca41b4a13341e75cb62e0f"
* active = true
* patient = Reference(PatientFemale)
* relationship = $v3-RoleCode#DOMPART "domestic partner"
* name.use = #official
* name.family = "Sobreviviente"
* name.given = "Higado"
* gender = #male
* birthDate = "1996-05-13"
* address.use = #home
* address.country = "US"