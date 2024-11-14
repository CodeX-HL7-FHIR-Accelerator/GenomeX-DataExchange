Instance: PrenatalDiagImpGlycogenStorageDiseasePatientFemale
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-10-02T03:41:34.767+00:00"
* meta.source = "#JVN7S7CW0og8nwN0"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-risk-assessment"
* extension.valueReference = Reference(PrenatalResidualRiskGlycogenStorageDiseasePatientFemale) "glycogen storage disease type III Residual Risk"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(PatientFemale)
* effectiveDateTime = "2024-06-26"
* performer = Reference(PractitionerLabDirector)
* derivedFrom = Reference(PrenatalVariantGlycogenStorageDiseaseTypePatientFemale)
* component[0].code = $loinc#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept = $sct#312969002 "Normal genetic findings (finding)"
* component[+].code = $loinc#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept = $sct#66937008 "Glycogen storage disease, type III"
* component[+].code = $tbd-codes-cs#condition-inheritance
* component[=].valueCodeableConcept = #HP:0000007 "Autosomal recessive inheritance"