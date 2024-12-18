Instance: HereditaryCancerTestingOverInterNegative
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/overall-interpretation"
* status = #final
* category = $observation-category#laboratory
* code = $loinc#51968-6 "Discrete variation analysis overall interpretation"
* subject = Reference(PatientFemale)
* valueCodeableConcept = $loinc#LA6577-6 "Negative"
* specimen = Reference(SpecimenBloodFemale)
* component[0].code = $tbd-codes-cs#conclusion-string
* component[=].valueString = "Organization HRD Status: NEGATIVE"
* component[+].code = $tbd-codes-cs#not-clinically-significant "Genetic Result: Negative - No Clinically Significant Mutation Identified"
* component[=].valueString = "Note: \"CLINICALLY SIGNIFICANT\", as defined in this report, is a genetic change that is associated with the potential to alter medical intervention."
* component[+].code = $sct#717130009 "Breast Cancer Risk Assessment Tool (assessment scale)"
* component[=].valueString = "Breast Cancer RiskScore®: Remaining Lifetime Risk 10.9%"
* component[+].code = $tbd-codes-cs#no-management-guideline "Clinical History Analysis: No additional management guidelines identified based on the clinical history provded"
* component[=].valueString = "Other clinical factors may influence the individualized management. This analysis may be incomplete if details about cancer diagnoses, ages, family relationships or other factors were omitted or ambiguous. If this patient also has a clinically significant mutation, the recommendations based on the clinical history analysis should be considered in light of the possibility that this mutation explains all or some of the cancer history in the family."