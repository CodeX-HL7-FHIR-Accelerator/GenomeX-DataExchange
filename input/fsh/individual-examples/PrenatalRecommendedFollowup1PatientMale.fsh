Instance: PrenatalRecommendedFollowup1PatientMale
InstanceOf: Task
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-09-25T00:01:34.798+00:00"
* meta.source = "#hrQE3dHjuHuJ5zkf"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/followup-recommendation"
* status = #requested
* intent = #proposal
* code = $loinc#LA14020-4 "Genetic counseling recommended"
* description = "Carrier testing should be considered for the diseases specified above for the patient's partner."
* for = Reference(PatientMale)