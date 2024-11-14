Instance: PrenatalVariantFamilialHyperinsulinismAbPatientMale
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-09-25T00:01:34.798+00:00"
* meta.source = "#hrQE3dHjuHuJ5zkf"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(PatientMale)
* effectiveDateTime = "2024-07-09"
* performer = Reference(PractitionerLabDirector)
* valueCodeableConcept = $loinc#LA9634-2 "Absent"
* method = $loinc#LA26398-0 "Sequencing"
* component[0].code = $loinc#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $loinc#LA14029-5 "GRCh37"
* component[+].code = $loinc#48000-4 "Chromosome [Identifier] in Blood or Tissue by Molecular genetics method"
* component[=].valueCodeableConcept = $loinc#LA21264-9 "Chromosome 11"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $genenames#HGNC:59 "ABCC8"