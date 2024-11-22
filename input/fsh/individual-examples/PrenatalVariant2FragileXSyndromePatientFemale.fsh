Instance: PrenatalVariant2FragileXSyndromePatientFemale
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-09-25T00:02:13.030+00:00"
* meta.source = "#mzuK1EHcvMPipAda"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#69548-6 "Genetic variant assessment"
* subject = Reference(PatientFemale)
* effectiveDateTime = "2024-06-26"
* performer = Reference(PractitionerLabDirector)
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* component[0].code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $loinc#66876-4 "FMR1 gene premutation/premutation+full mutation in Blood by Molecular genetics method"
* component[+].code = $loinc#48002-0 "Genomic source class [Type]"
* component[=].valueCodeableConcept = $loinc#LA6683-2 "Germline"
* component[+].extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/repeat-motif-order"
* component[=].extension.valuePositiveInt = 1
* component[=].code = $tbd-codes-cs#repeat-motif "Repeat Expansion Motif"
* component[=].valueString = "GGC"
* component[+].extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/repeat-motif-order"
* component[=].extension.valuePositiveInt = 1
* component[=].code = $tbd-codes-cs#repeat-number "Number of Repeat Expansions"
* component[=].valueQuantity.value = 92
* component[+].code = $loinc#53034-5 "Allelic state"
* component[=].valueCodeableConcept = $varnomen#LA6706-1 "Heterozygous"
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $genenames#HGNC:3775 "FMR1"