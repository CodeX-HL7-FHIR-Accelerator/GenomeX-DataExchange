Instance: PrenatalRecommendedFollowup1PatientFemale
InstanceOf: Task
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-09-25T00:02:13.030+00:00"
* meta.source = "#mzuK1EHcvMPipAda"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/followup-recommendation"
* status = #requested
* intent = #proposal
* code = $loinc#LA14020-4 "Genetic counseling recommended"
* description = "Patients are recommended to discuss reproductive risks with their health care provider or a genetic counselor. Patients may also wish to discuss any positive results with blood relatives, as there is an increased chance that they are also carriers."
* for = Reference(PatientFemale)