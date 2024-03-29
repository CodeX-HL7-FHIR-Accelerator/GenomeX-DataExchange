// GenomeX example for Use Case 1 - Reference lab to EHR
// The following examples will be used as a prototype and based on de-identified RWD test data. There is no PHI.

// **************************************************************
// ************* Example 1: Tumor-Normal Test *******************
// **************************************************************

Instance: gx1-patient-adam-anyperson
InstanceOf: GdxPatient
Description: "GenomeX Example1 of NGS Patient"
* identifier.use = #usual
* identifier[0].type = IDTYPE#PT "Patient external identifier"
* identifier[0].system = "https://www.example.org/laborg1"
* identifier[0].value = "22ea1d1b-03a5-47d6-81e0-b9b4cbb15ccf"
* identifier[1].type = IDTYPE#MR "Medical Record Number"
* identifier[1].system = "http://hospital.example.org"
* identifier[1].value = "123456789"
* name.family = "Anyperson"
* name.given[0] = "Adam"
* gender = #male
* birthDate = "1990-01-01"
* address.line = "987 Main St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"


Instance: gx1-order-tumornormal-laborg1-inc
InstanceOf: GdxServiceRequest
Description: "GenomeX Example1: Order information"
* identifier[0].type = IDTYPE#FILL "Filler Identifier"
* identifier[0].system = "https://www.laborg1.com"
* identifier[0].value = "22howe"
* status = #completed
* intent = #order
* subject = Reference(gx1-patient-adam-anyperson)
* code = https://www.laborg1.com#XT.V4 "xT - 648 gene panel"
* reasonCode[0].coding[0] = ICD10CM#C34.9 "Malignant neoplasm of unspecified part of bronchus or lung"
* reasonCode[0].coding[1] = ICDO3#"C34.9 8140/3" "Lung adenocarcinoma"

Instance: gx1-organization-laborg1-inc
InstanceOf: GdxLabOrganization
Description: "GenomeX Example1: example organization"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#other "Other"
* name = "laborg1 Labs, Inc."
* identifier[0].system = "urn:oid:2.16.840.1.113883.4.7"
* identifier[0].value = "453131235"
* telecom[0].system = #phone
* telecom[0].value = "999-999-9999"
* telecom[1].system = #email
* telecom[1].value = "support@laborg1.com"
* telecom.use = #work
* address.line = "987 Main Avenue, Ste 200"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* contact.name.text = "Nike Beaubier, MD, FCAP, MGP"

Instance: gx1-organization-test-institution
InstanceOf: Organization
Description: "GenomeX Example1: example organization"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#other "Other"
* name = "Test Institution"

Instance: gx1-practitioner-test-pathologist
InstanceOf: Practitioner
Description: "GenomeX  example: results interpreter of the NGS test."
// Note that the example report only has a text name of the practitioner so we cannot use US Core.
* name.text = "Test Pathologist, MD"

Instance: gx1-specimen-tumornormal-tumor
InstanceOf: GdxSpecimen
Description: "GenomeX Example1 for Genomic Specimen - Tumor specimen of the TumorNormal test"
* status = #available "Available"
* subject = Reference(gx1-patient-adam-anyperson)
* type = SPTY#TUMOR "Tumor"
* receivedTime = "2021-02-09T21:30:50+05:00"
* collection.bodySite = SCT#44029006 "Left lung structure (body structure)"
* collection.collectedDateTime = "2021-02-06T17:15:00+05:00"

Instance: gx1-specimen-tumornormal-normal
InstanceOf: GdxSpecimen
Description: "GenomeX Example1 for Genomic Specimen - Tumor specimen of the TumorNormal test"
* status = #available "Available"
* subject = Reference(gx1-patient-adam-anyperson)
* type = SPTY#BLD "Whole Blood"  // HL7v2 Specimen type does not handle "a normal sample" for TumorNormal
* receivedTime = "2021-02-09T21:30:50+05:00"
* collection.collectedDateTime = "2021-02-06T17:15:00+05:00"

// ******** "Biologically significant" Variants **********
// Note: the Example 1 Tumor-Normal report does not explicitly identify the variant's clinical significance

Instance: gx1-variant-somatic-bap1-indel
InstanceOf: GdxVariant
Description: "GenomeX Example1 for Genomic Variant - BAP1"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
// value[x] has alternate codings depending on where to place the interpretation of "Positive or Negative".
// * interpretation = SCT#10828004 "Positive (qualifier value)"
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[gene-studied].valueCodeableConcept.coding[0] = HGNC#HGNC:950 "BAP1"
* component[gene-studied].valueCodeableConcept.coding[1] = ENTREZ#3815 "BAP1"
* component[transcript-ref-seq].valueCodeableConcept = NCBI#NM_004656 "NM_004656.4"
* component[coding-hgvs].valueCodeableConcept = HGVS#NM_004656.4:c.1768C>T "NM_004656.4:c.1768C>T"
* component[protein-hgvs].valueCodeableConcept = HGVS#NP_004647.1:p.(Gln590Ter) "NP_004647.1:p.(Gln590Ter)"  // Mutalizer normalized HGVS string for HGVS#p.Q590* "p.Q590*".
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[sample-allelic-frequency].valueQuantity = 57.4 '%' "%"
* component[molecular-consequence].valueCodeableConcept = SO#SO:0001587 "stop_gained"
* component[reference-sequence-assembly].valueCodeableConcept = LNC#LA14029-5 "GRCh37"

Instance: gx1-diagnostic-implication-bap1
InstanceOf: GdxDiagnosticImplication
Description: "GenomeX Example1 for functional effect (loss of function) - BAP1"
* status = #final "Final"
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(gx1-variant-somatic-bap1-indel)
* component[functional-effect].valueCodeableConcept = SO#SO:0002054 "loss of function variant"

Instance: gx1-variant-somatic-cdkn2a-cnv
InstanceOf: GdxVariant
Description: "GenomeX Example1 for Genomic Variant - CDKN2A"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[gene-studied].valueCodeableConcept.coding[0] = HGNC#HGNC:1787 "CDKN2A"
* component[gene-studied].valueCodeableConcept.coding[1] = ENTREZ#1029 "CDKN2A"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[coding-change-type].valueCodeableConcept = SO#SO:0001743 "copy_number_loss"
* component[reference-sequence-assembly].valueCodeableConcept = LNC#LA14029-5 "GRCh37"

Instance: gx1-variant-somatic-cdkn2b-cnv
InstanceOf: GdxVariant
Description: "GenomeX Example1 for Genomic Variant - CDKN2B"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[gene-studied].valueCodeableConcept.coding[0] = HGNC#HGNC:1788 "CDKN2B"
* component[gene-studied].valueCodeableConcept.coding[1] = ENTREZ#1030 "CDKN2B"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[coding-change-type].valueCodeableConcept = SO#SO:0001743 "copy_number_loss"
* component[reference-sequence-assembly].valueCodeableConcept = LNC#LA14029-5 "GRCh37"

Instance: gx1-variant-somatic-kdm5d
InstanceOf: GdxVariant
Description: "GenomeX Example1 for Genomic Variant - KDM5D"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[gene-studied].valueCodeableConcept.coding[0] = HGNC#HGNC:11115 "KDM5D"
* component[gene-studied].valueCodeableConcept.coding[1] = ENTREZ#8284 "KDM5D"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[coding-change-type].valueCodeableConcept = SO#SO:0001743 "copy_number_loss"
* component[reference-sequence-assembly].valueCodeableConcept = LNC#LA14029-5 "GRCh37"

Instance: gx1-variant-somatic-mtap
InstanceOf: GdxVariant
Description: "GenomeX Example1 for Genomic Variant - MTAP"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[gene-studied].valueCodeableConcept.coding[0] = HGNC#HGNC:7413 "MTAP"
* component[gene-studied].valueCodeableConcept.coding[1] = ENTREZ#4507 "MTAP"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[coding-change-type].valueCodeableConcept = SO#SO:0001743 "copy_number_loss"
* component[reference-sequence-assembly].valueCodeableConcept = LNC#LA14029-5 "GRCh37"

Instance: gx1-variant-somatic-mycn
InstanceOf: GdxVariant
Description: "GenomeX Example1 for Genomic Variant - MYCN"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[gene-studied].valueCodeableConcept.coding[0] = HGNC#HGNC:7559 "MYCN"
* component[gene-studied].valueCodeableConcept.coding[1] = ENTREZ#4613 "MYCN"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[coding-change-type].valueCodeableConcept = SO#SO:0001742 "copy_number_gain"
* component[reference-sequence-assembly].valueCodeableConcept = LNC#LA14029-5 "GRCh37"

// MLT: All pertinent negative genes for a single report were combined into one variant "absent" resource.

Instance: gx1-variant-pertinent-negative-nras-kit-braf
InstanceOf: GdxVariant
Description: "GenomeX Example1 for the absence of a notable variant - KIT and BRAF"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9634-2 "Absent"
* component[gene-studied][0].valueCodeableConcept = HGNC#HGNC:6342 "NRAS" 
* component[gene-studied][1].valueCodeableConcept = HGNC#HGNC:7989 "KIT"
* component[gene-studied][+].valueCodeableConcept = HGNC#HGNC:1097 "BRAF" 

/* genomic-variant-fusion is an example of the
 * Variant to represent a gene fusion event.
 * This example demonstrates a test for the gene fusion MET-ALK.
 */
Instance: gx1-variant-fusion-met-alk
InstanceOf: GdxVariant
Description: "GenomeX Example1 for Genomic Variant gene fusion event"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[gene-studied][0].valueCodeableConcept.coding[0] = HGNC#HGNC:7029 "MET" 
* component[gene-studied][0].valueCodeableConcept.coding[1] = ENTREZ#4233 "MET"
* component[gene-studied][1].valueCodeableConcept.coding[0] = HGNC#HGNC:427 "ALK"
* component[gene-studied][1].valueCodeableConcept.coding[1] = ENTREZ#238 "ALK"
* component[coding-change-type].valueCodeableConcept = SO#SO:0002062 "complex chromosomal rearrangement"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"

// ******** Variants of Unknown Significance (VUS) **********

Instance: gx1-variant-somatic-pof1b
InstanceOf: GdxVariant
Description: "GenomeX Example1 for Genomic Variant - POF1B"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[gene-studied].valueCodeableConcept.coding[0] = HGNC#HGNC:13711 "POF1B"
* component[gene-studied].valueCodeableConcept.coding[1] = ENTREZ#79983 "POF1B"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[molecular-consequence].valueCodeableConcept = SO#SO:0001583 "missense_variant"
* component[transcript-ref-seq].valueCodeableConcept = NCBI#NM_004656 "NM_004656"
* component[coding-hgvs].valueCodeableConcept = HGVS#NM_001307940.2:c.430C>T "NM_001307940.2:c.430C>T"
* component[protein-hgvs].valueCodeableConcept = HGVS#NP_001294869.1:p.(Pro144Ser) "NP_001294869.1:p.(Pro144Ser)"  // VariantValidator normalized HGVS string for p.P144S*".
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[sample-allelic-frequency].valueQuantity = 78.6 '%' "%"
* component[reference-sequence-assembly].valueCodeableConcept = LNC#LA14029-5 "GRCh37"

Instance: gx1-diagnostic-implication-pof1b
InstanceOf: GdxDiagnosticImplication
Description: "GenomeX Example1 for Clinical Significance of VUS - POF1B"
* status = #final "Final"
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(gx1-variant-somatic-pof1b)
* component[clinical-significance].valueCodeableConcept = LNC#LA26333-7 "Uncertain significance"

Instance: gx1-variant-somatic-polrmt
InstanceOf: GdxVariant
Description: "GenomeX Example1 for Genomic Variant - POLRMT"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[gene-studied].valueCodeableConcept.coding[0] = HGNC#HGNC:9200 "POLRMT"
* component[gene-studied].valueCodeableConcept.coding[0] = ENTREZ#5442 "POLRMT"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[molecular-consequence].valueCodeableConcept = SO#SO:0001583 "missense_variant"
* component[transcript-ref-seq].valueCodeableConcept = NCBI#NM_004656 "NM_005035"
* component[coding-hgvs].valueCodeableConcept = HGVS#NM_005035.4:c.598G>A "NM_005035.4:c.598G>A"
* component[protein-hgvs].valueCodeableConcept = HGVS#NP_005026.3:p.(Gly200Arg) "NP_005026.3:p.(Gly200Arg)"  // VariantValidator normalized HGVS string for p.G200R
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[sample-allelic-frequency].valueQuantity = 75.6 '%' "%"
* component[reference-sequence-assembly].valueCodeableConcept = LNC#LA14029-5 "GRCh37"

Instance: gx1-diagnostic-implication-polrmt
InstanceOf: GdxDiagnosticImplication
Description: "GenomeX Example1 for Clinical Significance of VUS - POF1B"
* status = #final "Final"
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(gx1-variant-somatic-polrmt)
* component[clinical-significance].valueCodeableConcept = LNC#LA26333-7 "Uncertain significance"

// ******* Tumor Mutation Burden *********
Instance: gx1-tmb
InstanceOf: TMB
Description: "GenomeX Example1 for Tumor Mutation Burden"
* status = #final "final"
* category[labCategory] = ObsCat#laboratory
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* valueQuantity.value = 57.1

// ******* Microsatellite Instability *********
Instance: gx1-msi
InstanceOf: MSI
Description: "GenomeX Example1 for Microsatellite Instability"
* status = #final "final"
* category[labCategory] = ObsCat#laboratory
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA26203-2 "MSI-H"

// ******** Therapeutic Implications *********

Instance: gx1-therapeutic-implication-alectinib
InstanceOf: GdxTherapeuticImplication
Description: "GenomeX Example1 of how Genomics Reporting IG Therapeutic Implications"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(gx1-variant-fusion-met-alk)
* component[medication-assessed].valueCodeableConcept = RXN#1727455 "alectinib"
* component[predicted-therapeutic-implication].valueCodeableConcept = LNC#LA9661-5 "Presumed responsive"

Instance: gx1-therapeutic-implication-brigatinib
InstanceOf: GdxTherapeuticImplication
Description: "GenomeX Example1 of how Genomics Reporting IG Therapeutic Implications"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(gx1-variant-fusion-met-alk)
* component[medication-assessed].valueCodeableConcept = RXN#1921217 "brigatinib"
* component[predicted-therapeutic-implication].valueCodeableConcept = LNC#LA9661-5 "Presumed responsive"

Instance: gx1-therapeutic-implication-ceritinib
InstanceOf: GdxTherapeuticImplication
Description: "GenomeX Example1 of how Genomics Reporting IG Therapeutic Implications"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(gx1-variant-fusion-met-alk)
* component[medication-assessed].valueCodeableConcept = RXN#1535457 "ceritinib"
* component[predicted-therapeutic-implication].valueCodeableConcept = LNC#LA9661-5 "Presumed responsive"

Instance: gx1-therapeutic-implication-crizotinib
InstanceOf: GdxTherapeuticImplication
Description: "GenomeX Example1 of how Genomics Reporting IG Therapeutic Implications"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(gx1-variant-fusion-met-alk)
* component[medication-assessed].valueCodeableConcept = RXN#1148495 "crizotinib"
* component[predicted-therapeutic-implication].valueCodeableConcept = LNC#LA9661-5 "Presumed responsive"

Instance: gx1-therapeutic-implication-lorlatinib
InstanceOf: GdxTherapeuticImplication
Description: "GenomeX Example1 of how Genomics Reporting IG Therapeutic Implications"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-practitioner-test-pathologist)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(gx1-variant-fusion-met-alk)
* component[medication-assessed].valueCodeableConcept = RXN#2103164 "lorlatinib"
* component[predicted-therapeutic-implication].valueCodeableConcept = LNC#LA9661-5 "Presumed responsive"


// ********** Genomics Report ***********
Instance: gx1-genomics-report-adam-anyperson
InstanceOf: GdxGenomicsReport
Description: "GenomeX Example1 for Genomics Report"
* status = #final "Final"
* code = LNC#51969-4 "Genetic analysis report"
* subject = Reference(gx1-patient-adam-anyperson)
* performer = Reference(gx1-organization-laborg1-inc)
* effectiveDateTime = "2022-02-15T19:28:58+05:00"
* basedOn = Reference(gx1-order-tumornormal-laborg1-inc)
* resultsInterpreter = Reference(gx1-practitioner-test-pathologist)
* specimen[0] = Reference(Specimen/gx1-specimen-tumornormal-tumor)
* specimen[1] = Reference(Specimen/gx1-specimen-tumornormal-normal)
* result[0] = Reference(Observation/gx1-variant-somatic-bap1-indel)
* result[1] = Reference(Observation/gx1-variant-somatic-cdkn2a-cnv)
* result[+] = Reference(Observation/gx1-variant-somatic-cdkn2b-cnv)
* result[+] = Reference(Observation/gx1-variant-somatic-kdm5d)
* result[+] = Reference(Observation/gx1-variant-somatic-mtap)
* result[+] = Reference(Observation/gx1-variant-somatic-mycn)
* result[+] = Reference(Observation/gx1-variant-somatic-pof1b)
* result[+] = Reference(Observation/gx1-variant-somatic-polrmt)
* result[+] = Reference(Observation/gx1-diagnostic-implication-bap1)
* result[+] = Reference(Observation/gx1-diagnostic-implication-pof1b)
* result[+] = Reference(Observation/gx1-diagnostic-implication-polrmt)
* result[+] = Reference(Observation/gx1-variant-fusion-met-alk)
* result[+] = Reference(Observation/gx1-variant-pertinent-negative-nras-kit-braf)
* result[+] = Reference(Observation/gx1-tmb)
* result[+] = Reference(Observation/gx1-msi)
* result[+] = Reference(Observation/gx1-therapeutic-implication-alectinib)
* result[+] = Reference(Observation/gx1-therapeutic-implication-brigatinib)
* result[+] = Reference(Observation/gx1-therapeutic-implication-ceritinib)
* result[+] = Reference(Observation/gx1-therapeutic-implication-crizotinib)
* result[+] = Reference(Observation/gx1-therapeutic-implication-lorlatinib)

// * presentedForm.id = "ig-loader-XT_d6eeedd1-92d3-45b9-bf33-6401e804425f.pdf"  // removed the PDF attachment at the request of the lab vendor
