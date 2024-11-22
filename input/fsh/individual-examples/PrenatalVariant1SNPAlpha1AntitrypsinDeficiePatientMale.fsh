Instance: PrenatalVariant1SNPAlpha1AntitrypsinDeficiePatientMale
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
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* component[0].code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $loinc#LA6668-3 "Pathogenic"
* component[+].code = $loinc#48002-0 "Genomic source class [Type]"
* component[=].valueCodeableConcept = $loinc#LA6683-2 "Germline"
* component[+].code = $loinc#83005-9 "Variant category"
* component[=].valueCodeableConcept = $loinc#LA26801-3 "Simple variant"
* component[+].code = $loinc#53034-5 "Allelic state"
* component[=].valueCodeableConcept = $loinc#LA6706-1 "Heterozygous"
* component[+].code = $loinc#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept = $varnomen#NM_000295.4:c.1096G>A "NM_000295.4(SERPINA1):c.1096G>A(E366K, aka Z allele) heterozygote"
* component[+].code = $loinc#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $varnomen#NM_000295.4 "NM_000295.4"
* component[+].code = $loinc#48019-4 "DNA change type"
* component[=].valueCodeableConcept = $varnomen#LA6690-7 "Substitution"
* component[+].code = $loinc#48013-7 "Genomic reference sequence identifier"
* component[=].valueCodeableConcept = $refseq#NM_000295.4
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $genenames#HGNC:8941 "SERPINA1"