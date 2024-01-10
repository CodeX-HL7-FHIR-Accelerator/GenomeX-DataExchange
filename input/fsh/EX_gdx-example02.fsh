
// GenomeX example for Use Case 1 - Reference lab to EHR
// The following examples will be used as a prototype and based on de-identified RWD test data. There is no PHI.

// **************************************************************
// ************* Example 2: Tumor-Normal Test *******************
// **************************************************************
Instance: gx2-patient-john-doe
InstanceOf: GdxPatient
Description: "GenomeX Example2 of NGS Patient"
* identifier.use = #usual
* name.family = "Doe"
* name.given[0] = "john-doe Jr"
* gender = #male
* birthDate = "1987-09-01"


Instance: gx2-order-tumornormal-laborg1-inc
InstanceOf: GdxServiceRequest
Description: "GenomeX Example2: Order information"
* identifier[0].type = IDTYPE#FILL "Filler Identifier"
* identifier[0].system = "https://www.mytestpathlab.com"
* identifier[0].value = "1001"
* status = #completed
* intent = #order
* subject = Reference(gx2-patient-john-doe)
* code = https://www.mytestpathlab.com#XT.V4 "My Test Cancer 700 Gene Panel"

* reasonCode[0].coding[0] = ICDO3#"C34.9 8140/3" "Lung adenocarcinoma"


Instance: gx2-organization-laborg1-inc
InstanceOf: GdxLabOrganization
Description: "GenomeX Example2: example organization"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#other "Other"
* name = "My Test Pathology Laboratories"
* identifier[0].system = "http://www.somesystemabc.net/identifiers/CLIA"
* identifier[0].value = "10000DLAB8"
* address.line = "1000 SE Lab Ave"
* address.city = "Los Angeles"
* address.state = "CA"
* address.postalCode = "90027"
* address.country = "US"


Instance: gx2-practitioner-test-pathologist
InstanceOf: Practitioner
Description: "GenomeX  example: results interpreter of the NGS test."
* name.text = "Test Jr Dolin, MD"
* active = true

Instance: gx2-specimen-tumornormal-tumor
InstanceOf: GdxSpecimen
Description: "GenomeX Example2 for Genomic Specimen - Tumor specimen of the TumorNormal test"
* identifier.system = "http://www.somesystemabc.net/identifiers/specimens"
* identifier.value = "222333"
* status = #available "Available"
* subject = Reference(gx2-patient-john-doe)
* receivedTime = "2023-01-23T01:30:50+05:00"
* collection.bodySite = SCT#3341006 "Right lung structure (body structure)"
* collection.collectedDateTime = "2023-01-01T01:15:00+05:00"

Instance: gx2-specimen-tumornormal-normal
InstanceOf: GdxSpecimen
Description: "GenomeX Example2 for Genomic Specimen - Tumor specimen of the TumorNormal test"
* identifier.system = "http://www.somesystemabc.net/identifiers/specimens"
* identifier.value = "444555"
* status = #available "Available"
* subject = Reference(gx2-patient-john-doe)
* type = SPTY#BLD "Whole Blood"  // HL7v2 Specimen type does not handle "a normal sample" for TumorNormal
* receivedTime = "2023-01-23T01:30:50+05:00"
* collection.collectedDateTime = "2023-01-01T01:15:00+05:00"

// ***************************************************************
// ******** "Somatic - Actionable" Variants **********
// ***************************************************************

Instance: gx2-variant-somatic-EGFR-L858R
InstanceOf: GdxVariant
Description: "GenomeX Example2 for Genomic Variant - EGFR L858R"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx2-patient-john-doe)
* performer = Reference(gx2-practitioner-test-pathologist)
* effectiveDateTime = "2023-02-02"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[reference-sequence-assembly].valueCodeableConcept = LNC#LA26806-2 "GRCh38"

* component[gene-studied].valueCodeableConcept.coding[0] = HGNC#HGNC:3236 "EGFR"
* component[genomic-ref-seq].valueCodeableConcept = NCBIREFSEQ#NC_000007.13 "NC_000007.13"
* component[genomic-hgvs].valueCodeableConcept = HGVS#NC_000007.13:g.55259515T>G "NC_000007.13:g.55259515T>G"
* component[transcript-ref-seq].valueCodeableConcept = NCBIREFSEQ#NM_005228.4 "NM_005228.4"
* component[coding-hgvs].valueCodeableConcept = HGVS#NM_005228.4:c.2573T>G "NM_005228.4:c.2573T>G"
* component[protein-hgvs].valueCodeableConcept = HGVS#NP_005219.2:p.(Leu858Arg) "NP_005219.2:p.(Leu858Arg)"  // Mutalizer normalized HGVS string for HGVS#p.Q590* "p.Q590*".
* component[molecular-consequence].valueCodeableConcept = SO#SO:0001583 "missense_variant"


Instance: gx2-diagnostic-implication-EFGR-L858R
InstanceOf: GdxDiagnosticImplication
Description: "GenomeX Example2 for Clinical Significance of Pathogenic - EGFR L858R"
* status = #final "Final"
* subject = Reference(gx2-patient-john-doe)
* performer = Reference(gx2-practitioner-test-pathologist)
* effectiveDateTime = "2023-02-02"
* derivedFrom = Reference(gx2-variant-somatic-EGFR-L858R)
* component[clinical-significance].valueCodeableConcept = LNC#LA6668-3 "Pathogenic"
* component[evidence-level].valueCodeableConcept.text = "Tier 1 Level A"


// ***************************************************************
// ******** " Somatic - Biologically Releveent" Variants **********
// ***************************************************************
Instance: gx2-variant-somatic-STAG2
InstanceOf: GdxVariant
Description: "GenomeX Example2 for Genomic Variant - STAG2"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx2-patient-john-doe)
* performer = Reference(gx2-practitioner-test-pathologist)
* effectiveDateTime = "2023-02-02"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[reference-sequence-assembly].valueCodeableConcept = LNC#LA26806-2 "GRCh38"
* component[gene-studied].valueCodeableConcept.coding[0] = HGNC#HGNC:11355 "STAG2"
* component[genomic-ref-seq].valueCodeableConcept = NCBIREFSEQ#NC_000023.10 "NC_000023.10"
* component[genomic-hgvs].valueCodeableConcept = HGVS#NC_000023.10:g.123227930_123227931insGTGACTATTAATAT "NC_000023.10:g.123227930_123227931insGTGACTATTAATAT"
* component[transcript-ref-seq].valueCodeableConcept = NCBIREFSEQ#NM_006603.5 "NM_006603.5"
* component[coding-hgvs].valueCodeableConcept = HGVS#NM_006603.5:c.3530_3531insGTGACTATTAATAT "NM_006603.5:c.3530_3531insGTGACTATTAATAT"
* component[protein-hgvs].valueCodeableConcept = HGVS#NP_006594.3:p.(S1178*) "NP_006594.3:p.(S1178*)"  // Mutalizer normalized HGVS string for HGVS#p.Q590* "p.Q590*".
* component[molecular-consequence].valueCodeableConcept = SO#SO:0001589 "frameshift_variant"

Instance: gx2-diagnostic-implication-STAG2
InstanceOf: GdxDiagnosticImplication
Description: "GenomeX Example2 for Clinical Significance of Pathogenic - STAG2"
* status = #final "Final"
* subject = Reference(gx2-patient-john-doe)
* performer = Reference(gx2-practitioner-test-pathologist)
* effectiveDateTime = "2023-02-02"
* derivedFrom = Reference(gx2-variant-somatic-STAG2)
* component[clinical-significance].valueCodeableConcept = LNC#LA26332-9 "Likely Pathogenic"

// ********************************************************************
// ******** "Germline - Pathogenic / Likely Pathogenic" Variants ******
// ********************************************************************

Instance: gx2-variant-somatic-NTHL1
InstanceOf: GdxVariant
Description: "GenomeX Example2 for Genomic Variant - NTHL1"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* subject = Reference(gx2-patient-john-doe)
* performer = Reference(gx2-practitioner-test-pathologist)
* effectiveDateTime = "2023-02-02"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[genomic-source-class].valueCodeableConcept = LNC#LA6684-0 "Somatic"
* component[reference-sequence-assembly].valueCodeableConcept = LNC#LA26806-2 "GRCh38"
* component[gene-studied].valueCodeableConcept.coding[0] = HGNC#HGNC:8028 "NTHL1"
* component[genomic-ref-seq].valueCodeableConcept = NCBIREFSEQ#NC_000016.10 "NC_000016.10"
* component[genomic-hgvs].valueCodeableConcept = HGVS#NC_000016.10:g.2040196C>T "NC_000016.10:g.2040196C>T"
* component[transcript-ref-seq].valueCodeableConcept = NCBIREFSEQ#NM_002528.7 "NM_002528.7"
* component[coding-hgvs].valueCodeableConcept = HGVS#NM_002528.7:c.728G>A "NM_002528.7:c.728G>A"
* component[protein-hgvs].valueCodeableConcept = HGVS#NP_002519.2:p.(Trp243Ter) "NP_002519.2:p.(Trp243Ter)"
* component[molecular-consequence].valueCodeableConcept = SO#SO:0001587 "stop_gained"
* component[molecular-consequence].valueCodeableConcept.text = "nonsense"

Instance: gx2-diagnostic-implication-NTHL1
InstanceOf: GdxDiagnosticImplication
Description: "GenomeX Example2 for Clinical Significance of Pathogenic - NTHL1"
* status = #final "Final"
* subject = Reference(gx2-patient-john-doe)
* performer = Reference(gx2-practitioner-test-pathologist)
* effectiveDateTime = "2023-02-02"
* derivedFrom = Reference(gx2-variant-somatic-NTHL1)
* component[clinical-significance].valueCodeableConcept = LNC#LA6668-3 "Pathogenic"


// ***************************************************************
// ******* Tumor Mutation Burden *********
// ***************************************************************

Instance: gx2-tmb
InstanceOf: TMB
Description: "GenomeX Example1 for Tumor Mutation Burden"
* status = #final "final"
* category[labCategory] = ObsCat#laboratory
* subject = Reference(gx2-patient-john-doe)
* performer = Reference(gx2-practitioner-test-pathologist)
* effectiveDateTime = "2023-02-02"
* code = LNC#94076-7 "Mutations/Megabase [# Ratio] in Tumor"
* valueQuantity.value = 29.8

// ***************************************************************
// ******* Microsatellite Instability *********
// ***************************************************************
Instance: gx2-msi
InstanceOf: MSI
Description: "GenomeX Example1 for Microsatellite Instability"
* status = #final "final"
* category[labCategory] = ObsCat#laboratory
* subject = Reference(gx2-patient-john-doe)
* performer = Reference(gx2-practitioner-test-pathologist)
* effectiveDateTime = "2023-02-02"
* code = LNC#81695-9 "Microsatellite instability [Interpretation] in Cancer specimen Qualitative"
* valueCodeableConcept = LNC#LA26203-2 "MSI-H"

// ***************************************************************
// ******** Therapeutic Implications *********
// ***************************************************************
Instance: gx2-therapeutic-implication-Gefitinib
InstanceOf: GdxTherapeuticImplication
Description: "GenomeX Example2 of how Genomics Reporting IG Therapeutic Implications"
* status = #final "Final"
* category[labCategory] = ObsCat#laboratory
* subject = Reference(gx2-patient-john-doe)
* performer = Reference(gx2-practitioner-test-pathologist)
* effectiveDateTime = "2023-02-02"
* derivedFrom = Reference(gx2-variant-somatic-EGFR-L858R)
* component[medication-assessed].valueCodeableConcept = RXN#328134 "Gefitinib"
// ******** Clinical Trials *********
* component[therapy-assessed].valueCodeableConcept = NCTTRIAL#NCT04919811 "NCT04919811"

// ********** Genomics Report ***********
Instance: gx2-genomics-report-john-doe 
InstanceOf: GdxGenomicsReport
Description: "GenomeX Example1 for Genomics Report"
* status = #final "Final"
* code = LNC#51969-4 "Genetic analysis report"
* subject = Reference(gx2-patient-john-doe)
* performer = Reference(gx2-organization-laborg1-inc)
* effectiveDateTime = "2022-02-02T19:28:58+05:00"
* basedOn = Reference(gx2-order-tumornormal-laborg1-inc)
* resultsInterpreter = Reference(gx2-practitioner-test-pathologist)
* specimen[0] = Reference(Specimen/gx2-specimen-tumornormal-tumor)
* specimen[1] = Reference(Specimen/gx2-specimen-tumornormal-normal)
* result[0] = Reference(Observation/gx2-variant-somatic-EGFR-L858R)
* result[1] = Reference(Observation/gx2-variant-somatic-STAG2)
* result[+] = Reference(Observation/gx2-variant-somatic-NTHL1)

* result[+] = Reference(Observation/gx2-diagnostic-implication-EFGR-L858R)
* result[+] = Reference(Observation/gx2-diagnostic-implication-STAG2)
* result[+] = Reference(Observation/gx2-diagnostic-implication-NTHL1)
* result[+] = Reference(Observation/gx2-tmb)
* result[+] = Reference(Observation/gx2-msi)
* result[+] = Reference(Observation/gx2-therapeutic-implication-Gefitinib)

// * presentedForm.id = "ig-loader-XT_d6eeedd1-92d3-45b9-bf33-6401e804425f.pdf"  // removed the PDF attachment at the request of the lab vendor