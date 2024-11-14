Instance: PrenatalVariantGlycogenStorageDiseaseTypePatientFemale
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-10-02T03:41:34.767+00:00"
* meta.source = "#JVN7S7CW0og8nwN0"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(PatientFemale)
* effectiveDateTime = "2024-06-26"
* performer = Reference(PractitionerLabDirector)
* valueCodeableConcept = $loinc#LA9634-2 "Absent"
* method = $loinc#LA26398-0 "Sequencing"
* component[0].code = $loinc#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $loinc#LA14029-5 "GRCh37"
* component[+].code = $loinc#48000-4 "Chromosome [Identifier] in Blood or Tissue by Molecular genetics method"
* component[=].valueCodeableConcept = $loinc#LA21254-0 "Chromosome 1"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $genenames#HGNC:321 "AGL"