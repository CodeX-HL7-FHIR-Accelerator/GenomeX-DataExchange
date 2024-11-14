Instance: HereditaryCancerTestingRecommendedFollowupNegative
InstanceOf: Task
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/followup-recommendation"
* status = #requested
* intent = #proposal
* code = $loinc#LA14020-4 "THIS PLACEHOLDER LOINC CODE IS FOR: 'Genetic counseling recommended'"
* description = ""
* for = Reference(PatientFemale)