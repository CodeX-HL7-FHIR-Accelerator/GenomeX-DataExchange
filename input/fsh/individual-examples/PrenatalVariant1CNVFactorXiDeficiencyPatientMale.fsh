Instance: PrenatalVariant1CNVFactorXiDeficiencyPatientMale
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
* subject = Reference(PatientMale)
* effectiveDateTime = "2024-06-26"
* performer = Reference(PractitionerLabDirector)
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* component[0].code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $loinc#LA26332-9 "Likely pathogenic"
* component[+].code = $loinc#48002-0 "Genomic source class [Type]"
* component[=].valueCodeableConcept = $loinc#LA6683-2 "Germline"
* component[+].code = $loinc#82155-3 "Genomic structural variant copy number"
* component[=].valueQuantity = 0 '1'
* component[+].code = $loinc#48013-7 "Genomic reference sequence identifier"
* component[=].valueCodeableConcept = $refseq#NM_000128.3
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $genenames#HGNC:3529 "F11"