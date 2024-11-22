Instance: PrenatalDiagImpFactorXiDeficiencyPatientMale
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-09-25T00:02:13.030+00:00"
* meta.source = "#mzuK1EHcvMPipAda"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-risk-assessment"
* extension.valueReference = Reference(PrenatalResidualRiskFactorXiDeficiencyPatientMale) "factor XI deficiency Residual Risk"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(PatientMale)
* effectiveDateTime = "2024-06-26"
* performer = Reference(PractitionerLabDirector)
* derivedFrom = Reference(PrenatalVariant1CNVFactorXiDeficiencyPatientMale)
* component[0].code = $loinc#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept = $sct#47461006 "Genetic disorder carrier (finding)"
* component[+].code = $loinc#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept = $sct#49762007 "Thromboplastin antecedent deficiency"
* component[+].code = $tbd-codes-cs#condition-inheritance
* component[=].valueCodeableConcept = #HP:0000007 "Autosomal recessive inheritance"