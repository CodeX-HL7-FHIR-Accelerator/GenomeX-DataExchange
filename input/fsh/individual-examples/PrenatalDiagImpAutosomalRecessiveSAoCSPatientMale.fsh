Instance: PrenatalDiagImpAutosomalRecessiveSAoCSPatientMale
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-09-25T00:01:34.798+00:00"
* meta.source = "#hrQE3dHjuHuJ5zkf"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-risk-assessment"
* extension.valueReference = Reference(PrenatalResidualRiskAutosomalRecessiveSAoCSPatientMale) "autosomal recessive spastic ataxia of Charlevoix-Saguenay Residual Risk"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(PatientMale)
* effectiveDateTime = "2024-07-09"
* performer = Reference(PractitionerLabDirector)
* derivedFrom = Reference(PrenatalVariantAutosomalRecessiveSAoCSPatientMale)
* component[0].code = $loinc#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept = $sct#312969002 "Normal genetic findings (finding)"
* component[+].code = $loinc#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept = $sct#702445005 "ARSACS - autosomal recessive spastic ataxia of Charlevoix-Saguenay"
* component[+].code = $tbd-codes-cs#condition-inheritance
* component[=].valueCodeableConcept = #HP:0000007 "Autosomal recessive inheritance"