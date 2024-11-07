// GenomeX Data Exchange use case example - Reference lab to EHR
// The following examples will be used as a prototype and based on de-identified RWD test data. There is no PHI.

// **************************************************************
// ************* Example 3: Tumor-Normal Test *******************
// **************************************************************
// Somatic Test Result Data Only


Instance: ct-xT-bundle
InstanceOf: GenomicBundle
Usage: #example
* type = #transaction
* entry[0].fullUrl = "urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4"
* entry[=].resource = ct-xT-Patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:56eeebfb-9df4-4789-955b-76bcec2d77a4"
* entry[=].resource = ct-xT-DiagnosticReport
* entry[=].request.method = #POST
* entry[=].request.url = "DiagnosticReport"
* entry[+].fullUrl = "urn:uuid:28395cc2-c6e4-4006-84af-ebf40113656a"
* entry[=].resource = ct-xT-ServiceRequest
* entry[=].request.method = #POST
* entry[=].request.url = "ServiceRequest"
* entry[+].fullUrl = "urn:uuid:3b3363be-d153-40ae-952f-09d15df1d9bf"
* entry[=].resource = ct-xT-practitioner
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"
* entry[+].fullUrl = "urn:uuid:60863097-6033-41af-9f6a-d7b012e276ae"
* entry[=].resource = ct-xT-physicianRole
* entry[=].request.method = #POST
* entry[=].request.url = "PractitionerRole"
* entry[+].fullUrl = "urn:uuid:f55969f0-aad6-4d9d-8af8-ae73b0ca4e8e"
* entry[=].resource = ct-xT-OrderingOrganization
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:9ebd0cb1-4733-4b8e-999c-a66bcbd939dd"
* entry[=].resource = ct-xT-Pathologist
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"
* entry[+].fullUrl = "urn:uuid:3970f176-e402-4eaf-989c-959e80d918ae"
* entry[=].resource = ct-xT-Tempus-Organization
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:f5418e88-295b-43f8-af03-76c8c4aa516e"
* entry[=].resource = ct-xT-specimen-tumor
* entry[=].request.method = #POST
* entry[=].request.url = "Specimen"
* entry[+].fullUrl = "urn:uuid:1e6f171a-1dea-41b8-a51d-1f86130a43cc"
* entry[=].resource = ct-xT-specimen-normal
* entry[=].request.method = #POST
* entry[=].request.url = "Specimen"
* entry[+].fullUrl = "urn:uuid:ccab39c5-49cf-4aa6-a1e7-2e0c9dd3a7d5"
* entry[=].resource = ct-xT-Observation1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:fc637e0b-dced-4245-946e-3fa13ec128e3"
* entry[=].resource = ct-xT-Observation2
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:c7a1db28-0c8f-4667-a40a-79401833b26b"
* entry[=].resource = ct-xT-Observation3
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:6e333995-6a74-4dcd-ac7f-d7cf5ad20ac9"
* entry[=].resource = ct-xT-Observation4
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:d7318c30-3975-4f62-9840-3b8d7e7b56cd"
* entry[=].resource = ct-xT-Observation5
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:86ad3e6b-7ed8-4c7d-b99c-574ac5e2b4b9"
* entry[=].resource = ct-xT-Observation6
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:82a8b9db-a68e-4e06-897e-77ed3ea5aced"
* entry[=].resource = ct-xT-variant-fusion-met-alk
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:5dfa33cc-9038-44d0-9f71-f319b3cb4c9a"
* entry[=].resource = ct-xT-molecular-consequence-observation-1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:3c30e177-2c41-4f13-b6c0-1adf5af4c71d"
* entry[=].resource = ct-xT-molecular-consequence-observation-4
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:0c06b231-47e9-4a3b-88bd-2d8937d615a7"
* entry[=].resource = ct-xT-molecular-consequence-observation-5
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:00e47ced-f260-4baf-9da4-ee88224d3bc5"
* entry[=].resource = ct-xT-molecular-consequence-observation-6
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:dc69c7c9-031b-466f-bf63-8be56d658c50"
* entry[=].resource = ct-xT-molecular-consequence-observation-fusion
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:kbe36a66-b7c9-4130-a181-81bb72e3f4zz"
* entry[=].resource = ct-xT-diagnostic-implication-fusion
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:bbe36a66-b7c9-4130-a181-81bb72e3f4cc"
* entry[=].resource = ct-xT-diagnostic-implication-1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:7bb9b47d-2b77-47a6-ae2a-62f0b1d01d05"
* entry[=].resource = ct-xT-diagnostic-implication-2
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:52554ca2-dcdd-4105-9cb7-059f0a863483"
* entry[=].resource = ct-xT-diagnostic-implication-3
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:dddaac5f-e8ba-4c55-a70c-5c6d80903356"
* entry[=].resource = ct-xT-diagnostic-implication-4
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:69b54656-b1eb-4393-ac69-f25f32fde680"
* entry[=].resource = ct-xT-diagnostic-implication-5
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:f845d26f-7308-45ab-9898-ebc86d6ae22c"
* entry[=].resource = ct-xT-diagnostic-implication-6
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:5fe0e4c4-fd4b-4e9d-af1e-b3b40c28a21a"
* entry[=].resource = ct-xT-procedure1
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"
* entry[+].fullUrl = "urn:uuid:16f2715b-10ea-42ae-a3a2-185b14e6e21f"
* entry[=].resource = ct-xT-genomicStudy
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"
* entry[+].fullUrl = "urn:uuid:4be89099-d07b-4c94-a1ef-be16233a79d8"
* entry[=].resource = gx-genomic-tmb
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:68b6b4ac-47df-4b0b-857a-d9427d5e2538"
* entry[=].resource = gx-genomic-research-study-implication-clinical-trial-NCT02693535
* entry[=].request.method = #POST
* entry[=].request.url = "ResearchStudy"
* entry[+].fullUrl = "urn:uuid:cd1ba6c7-553d-4b04-b5d6-07571129c52d"
* entry[=].resource = ct-xT-clinicalTrial
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:da3cfb61-7b73-429d-b933-36b41b5e4a66"
* entry[=].resource = ct-xT-HLA-A-haplotype1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:b745fef5-462d-4b6c-bddc-a7c573c614ef"
* entry[=].resource = ct-xT-HLA-A-haplotype2
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:29d40ea4-2946-4a90-a259-7a6025b3b090"
* entry[=].resource = ct-xT-HLA-B-haplotype1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:9095423d-db5e-4c28-a876-53a3b19fb6de"
* entry[=].resource = ct-xT-HLA-B-haplotype2
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:da9b5431-1b88-461d-ab57-49502fe20117"
* entry[=].resource = ct-xT-HLA-C-haplotype1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:148fddd2-ab27-4abe-b096-8cf905905bc0"
* entry[=].resource = ct-xT-HLA-C-haplotype2
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:b3s0f176-e402-4eaf-989c-959e80d91n5f"
* entry[=].resource = ct-xT-GeneList
* entry[=].request.method = #POST
* entry[=].request.url = "DocumentReference"
* entry[+].fullUrl = "urn:uuid:11163097-6033-41af-9f6a-d7b012e27aaa"
* entry[=].resource = ct-xT-genomicStudyAnalysis
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"
* entry[+].fullUrl = "urn:uuid:88f2715b-10ea-42ae-a3a2-185b14e6e666"
* entry[=].resource = ct-xT-genomicStudy-2
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

Instance: ct-xT-Patient
InstanceOf: GdxPatient
Usage: #inline
* identifier[0].use = #official
* identifier[=].type = $v2-0203#PT "Patient external identifier"
* identifier[=].system = "https://www.tempus.com"
* identifier[=].value = "23ef1d1b-03a5-47d6-81e0-b9b4cbb15ccf"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#MR "Medical Record Number"
* identifier[=].system = "http://hospital.example.org"
* identifier[=].value = "993456789"
* name.family = "Mann"
* name.given = "Mela"
* gender = #Female
* birthDate = "1926-08-06"

Instance: ct-xT-DiagnosticReport
InstanceOf: GdxGenomicReport
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-report"
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-reference"
* extension[=].valueReference = Reference(urn:uuid:16f2715b-10ea-42ae-a3a2-185b14e6e21f)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-reference"
* extension[=].valueReference = Reference(urn:uuid:88f2715b-10ea-42ae-a3a2-185b14e6e666)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-report-note"
* extension[=].valueAnnotation.extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/annotation-code"
* extension[=].valueAnnotation.extension.valueCodeableConcept.coding.code = #copyright
* extension[=].valueAnnotation.text = "(c) Copyright Tempus 2022. All Rights Reserved."
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-report-note"
* extension[=].valueAnnotation.extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/annotation-code"
* extension[=].valueAnnotation.extension.valueCodeableConcept.coding.code = #schemaVersion
* extension[=].valueAnnotation.text = "1.5.0"
* identifier[0].type = $v2-0203#ACSN "Accession ID"
* identifier[=].system = "https://www.tempus.com"
* identifier[=].value = "TL-22-D3MTCAU4"
* identifier[+].type = $v2-0203#RI "Pipeline Version"
* identifier[=].system = "https://www.tempus.com"
* identifier[=].value = "3.9.3"
* identifier[+].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "https://www.tempus.com"
* identifier[=].value = "d6eeedd1-92d3-45b9-bf33-6401e804425f"
* basedOn = Reference(urn:uuid:28395cc2-c6e4-4006-84af-ebf40113656a)
* status = #final
* category[0] = $v2-0074#GE
* category[+].text = "DNA"
* code = $loinc#51969-4 "Genetic analysis report"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-02-15T19:28:58+05:00"
* performer = Reference(urn:uuid:3970f176-e402-4eaf-989c-959e80d918ae)
* resultsInterpreter = Reference(urn:uuid:9ebd0cb1-4733-4b8e-999c-a66bcbd939dd)
* specimen[0] = Reference(urn:uuid:f5418e88-295b-43f8-af03-76c8c4aa516e)
* specimen[+] = Reference(urn:uuid:1e6f171a-1dea-41b8-a51d-1f86130a43cc)
* result[0] = Reference(urn:uuid:ccab39c5-49cf-4aa6-a1e7-2e0c9dd3a7d5)
* result[+] = Reference(urn:uuid:fc637e0b-dced-4245-946e-3fa13ec128e3)
* result[+] = Reference(urn:uuid:c7a1db28-0c8f-4667-a40a-79401833b26b)
* result[+] = Reference(urn:uuid:6e333995-6a74-4dcd-ac7f-d7cf5ad20ac9)
* result[+] = Reference(urn:uuid:d7318c30-3975-4f62-9840-3b8d7e7b56cd)
* result[+] = Reference(urn:uuid:86ad3e6b-7ed8-4c7d-b99c-574ac5e2b4b9)
* result[+] = Reference(urn:uuid:5dfa33cc-9038-44d0-9f71-f319b3cb4c9a)
* result[+] = Reference(urn:uuid:52554ca2-dcdd-4105-9cb7-059f0a863483)
* result[+] = Reference(urn:uuid:3c30e177-2c41-4f13-b6c0-1adf5af4c71d)
* result[+] = Reference(urn:uuid:0c06b231-47e9-4a3b-88bd-2d8937d615a7)
* result[+] = Reference(urn:uuid:00e47ced-f260-4baf-9da4-ee88224d3bc5)
* result[+] = Reference(urn:uuid:bbe36a66-b7c9-4130-a181-81bb72e3f4cc)
* result[+] = Reference(urn:uuid:7bb9b47d-2b77-47a6-ae2a-62f0b1d01d05)
* result[+] = Reference(urn:uuid:dddaac5f-e8ba-4c55-a70c-5c6d80903356)
* result[+] = Reference(urn:uuid:69b54656-b1eb-4393-ac69-f25f32fde680)
* result[+] = Reference(urn:uuid:f845d26f-7308-45ab-9898-ebc86d6ae22c)
* result[+] = Reference(urn:uuid:4be89099-d07b-4c94-a1ef-be16233a79d8)
* result[+] = Reference(urn:uuid:da3cfb61-7b73-429d-b933-36b41b5e4a66)
* result[+] = Reference(urn:uuid:b745fef5-462d-4b6c-bddc-a7c573c614ef)
* result[+] = Reference(urn:uuid:29d40ea4-2946-4a90-a259-7a6025b3b090)
* result[+] = Reference(urn:uuid:9095423d-db5e-4c28-a876-53a3b19fb6de)
* result[+] = Reference(urn:uuid:da9b5431-1b88-461d-ab57-49502fe20117)
* result[+] = Reference(urn:uuid:148fddd2-ab27-4abe-b096-8cf905905bc0)
* result[+] = Reference(urn:uuid:82a8b9db-a68e-4e06-897e-77ed3ea5aced)
* result[+] = Reference(urn:uuid:dc69c7c9-031b-466f-bf63-8be56d658c50)
* result[+] = Reference(urn:uuid:kbe36a66-b7c9-4130-a181-81bb72e3f4zz)

Instance: ct-xT-ServiceRequest
InstanceOf: GdxServiceRequest
Usage: #inline
* identifier.type = $v2-0203#FILL "Filler Identifier"
* identifier.system = "https://www.tempus.com"
* identifier.value = "23gcimeh"
* requisition.type = $v2-0203#ACSN "Accession ID"
* requisition.system = "https://www.tempus.com"
* requisition.value = "TL-23-5B8EHM49"
* status = #completed
* intent = #order
* code = $tempus#XT.V4 "xT - 648 gene panel"
* requester = Reference(urn:uuid:3b3363be-d153-40ae-952f-09d15df1d9bf)
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* reasonCode.coding[0] = $icd-10-cm#C34.9 "Malignant neoplasm of unspecified part of bronchus or lung"
* reasonCode.coding[+] = $icd-o-3#"C34.9 8140/3" "Lung adenocarcinoma"

Instance: ct-xT-practitioner
InstanceOf: Practitioner
Usage: #inline
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9988776345"
* name.family = "Physician"
* name.given = "Test"
* name.prefix = "Dr."
* address.use = #work
* address.line = "600 Chicago Drive"
* address.city = "Everywhere"
* address.state = "TX"
* address.postalCode = "16789"
* address.country = "US"
* gender = #female
* qualification.code.coding.version = "2.7"
* qualification.code.coding = $v2-0360#MD

Instance: ct-xT-physicianRole
InstanceOf: PractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:3b3363be-d153-40ae-952f-09d15df1d9bf)
* organization = Reference(urn:uuid:f55969f0-aad6-4d9d-8af8-ae73b0ca4e8e)

Instance: ct-xT-OrderingOrganization
InstanceOf: Organization
Usage: #inline
* identifier.system = "urn:oid:2.16.840.1.113883.4.7"
* identifier.value = "14D2114007"
* active = true
* name = "Ordering Organization"

Instance: ct-xT-Pathologist
InstanceOf: Practitioner
Usage: #inline
* identifier.system = "http://www.acme.com/identifiers/patient"
* identifier.value = "123456"
* name.family = "Pathologist"
* name.given = "Test"

Instance: ct-xT-Tempus-Organization
InstanceOf: GdxLabOrganization
Usage: #inline
* identifier.system = "urn:oid:2.16.840.1.113883.4.7"
* identifier.value = "14D2114007"
* active = true
* name = "Tempus Labs, Inc"
* address.line = "600 W Chicago Avenue, Ste 510"
* address.city = "Chicago"
* address.state = "IL"
* address.postalCode = "60654"
* address.country = "USA"
* telecom.system = #email
* telecom.value = "support@tempus.com"
* contact.name.text = "Nike Beaubier, M,FCAP,MGAP"

Instance: ct-xT-specimen-tumor
InstanceOf: Specimen
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-Specimen"
* status = #available
* type = $v2-0487#TUMOR "Tumor"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* receivedTime = "2021-02-09T21:30:50+05:00"
* collection.id = "TestInstitutionPathologyLaboratoryS22123456"
* collection.collectedDateTime = "2021-02-06T17:15:00+05:00"
* collection.bodySite.coding.version = "http://snomed.info/sct/900000000000207008"
* collection.bodySite.coding = $sct#44029006 "Left lung structure (body structure)"
* container.identifier.type = $v2-0203#SID "Specimen ID"
* container.identifier.system = "https://www.tempus.com"
* container.identifier.value = "A2"

Instance: ct-xT-specimen-normal
InstanceOf: Specimen
Usage: #inline
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-Specimen"
* status = #available
* type = $v2-0487#BLD "Whole Blood"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* receivedTime = "2021-02-09T21:30:50+05:00"
* collection.collectedDateTime = "2021-02-06T17:15:00+05:00"

Instance: ct-xT-Observation1
InstanceOf: Variant
Usage: #inline
* meta.profile = "https://hl7.org/fhir/uv/genomics-reporting/2024Jan/StructureDefinition-variant.html"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#69548-6
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* component[0].code = $loinc#48018-6
* component[=].valueCodeableConcept.coding[0] = $genenames#HGNC:950 "BAP1"
* component[=].valueCodeableConcept.coding[+] = $gene#3815 "BAP1"
* component[+].code = $loinc#51958-7
* component[=].valueCodeableConcept = $refseq#NM_004656 "NM_004656.4"
* component[+].code = $loinc#48004-6
* component[=].valueCodeableConcept.text = "c.1768C>T"
* component[+].code = $loinc#48005-3
* component[=].valueCodeableConcept.text = "p.Q590*"
* component[+].code = $loinc#48002-0
* component[=].valueCodeableConcept = $loinc#LA6684-0 "Somatic"
* component[+].code = $loinc#81258-6
* component[=].valueQuantity = 57.4 '%' "%"
* component[+].code = $loinc#62374-4
* component[=].valueCodeableConcept = $loinc#LA14029-5 "GRCh37"

Instance: ct-xT-Observation2
InstanceOf: Variant
Usage: #inline
* meta.profile = "https://hl7.org/fhir/uv/genomics-reporting/2024Jan/StructureDefinition-variant.html"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#69548-6
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* component[0].code = $loinc#48018-6
* component[=].valueCodeableConcept.coding[0] = $genenames#HGNC:1787 "CDKN2A"
* component[=].valueCodeableConcept.coding[+] = $gene#1029 "CDKN2A"
* component[+].code = $loinc#48019-4
* component[=].valueCodeableConcept.text = "copy number loss"
* component[+].code = $loinc#48002-0
* component[=].valueCodeableConcept = $loinc#LA6684-0 "Somatic"
* component[+].code = $loinc#62374-4
* component[=].valueCodeableConcept = $loinc#LA14029-5 "GRCh37"

Instance: ct-xT-Observation3
InstanceOf: Variant
Usage: #inline
* meta.profile = "https://hl7.org/fhir/uv/genomics-reporting/2024Jan/StructureDefinition-variant.html"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#69548-6
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* component[0].code = $loinc#48018-6
* component[=].valueCodeableConcept.coding[0] = $genenames#HGNC:7413 "MTAP"
* component[=].valueCodeableConcept.coding[+] = $gene#4507 "MTAP"
* component[+].code = $loinc#48002-0
* component[=].valueCodeableConcept = $loinc#LA6684-0 "Somatic"
* component[+].code = $loinc#48019-4
* component[=].valueCodeableConcept.text = "copy number loss"
* component[+].code = $loinc#62374-4
* component[=].valueCodeableConcept = $loinc#LA14029-5 "GRCh37"

Instance: ct-xT-Observation4
InstanceOf: Variant
Usage: #inline
* meta.profile = "https://hl7.org/fhir/uv/genomics-reporting/2024Jan/StructureDefinition-variant.html"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#69548-6
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* component[0].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding[0] = $genenames#HGNC:8028 "NTHL1"
* component[=].valueCodeableConcept.coding[+] = $gene#4913 "NTHL1"
* component[=].valueCodeableConcept.text = "NTHL1 encodes an endonuclease III-like protein important in the base excision pathway usually through repair of oxidative pyrimidine lesions. Germline pathogenic variants in NTHL1 have been associated with autosomal recessive NTHL1-associated polyposis; heterozygotes are considered carriers, while homozygotes or compound heterozygotes are likely to be affected (PMID: 30753826). This is an adult onset hereditary cancer predisposition syndrome associated with development of colonic adenomas which can progress to colorectal cancer. Clinical correlation, including confirmation of this variant through a validated germline assay, and genetic counseling are recommended for this patient and any potentially at-risk family members."
* component[+].code = $loinc#48002-0
* component[=].valueCodeableConcept = $loinc#LA6683-2 "Germline"
* component[+].code = $loinc#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $refseq#NM_002528 "NM_002528.7"
* component[+].code = $loinc#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept.text = "c.268C>T"
* component[+].code = $loinc#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept.text = "p.Q90*"
* component[+].code = $loinc#48000-4
* component[=].valueCodeableConcept = $loinc#LA21269-8 "Chromosome 16"
* component[+].code = $loinc#81254-5 "Variant exact start-end"
* component[=].valueRange.low.value = 2096239
* component[+].code = $loinc#62374-4 "Human reference sequence assembly version"
* component[=].valueCodeableConcept = $loinc#LA14029-5 "GRCh37"

Instance: ct-xT-Observation5
InstanceOf: Variant
Usage: #inline
* meta.profile = "https://hl7.org/fhir/uv/genomics-reporting/2024Jan/StructureDefinition-variant.html"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#69548-6
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* component[0].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept.coding[0] = $genenames#HGNC:583 "APC"
* component[=].valueCodeableConcept.coding[+] = $gene#324 "APC"
* component[=].valueCodeableConcept.text = "APC encodes a multi-domain protein that interacts with factors involved in cellular proliferation, differentiation, maintenance, and structure including the microtubules and beta-catenin within the Wnt pathway. The APC p.I1307K variant has been associated with increased risk of developing colorectal cancer in the Ashkenazi Jewish population. For heterozygous patients, the increased risk if estimated as follows: odds ratio (OR) of 2.17 (95% confidence interval: 1.64-2.86) (PMID: 23576677) or adjusted OR of 1.75 (95% confidence interval: 1.26-2.45) (PMID: 23896379). The risk may be further increased in homozygous patients. The risk associated with the APC p.I1307K variant in other populations is still under study. Clinical correlation, including confirmation of this variant through a validated germline assay, and genetic counseling are recommended for this patient and any potentially at-risk family members."
* component[+].code = $loinc#48002-0 "Genomic source class"
* component[=].valueCodeableConcept = $loinc#LA6683-2 "Germline"
* component[+].code = $loinc#51958-7 "Transcript reference sequence [ID]"
* component[=].valueCodeableConcept = $refseq#NM_000038 "NM_000038.6"
* component[+].code = $loinc#48004-6 "DNA change (c.HGVS)"
* component[=].valueCodeableConcept.text = "c.3920T>A"
* component[+].code = $loinc#48005-3 "Amino acid change (pHGVS)"
* component[=].valueCodeableConcept.text = "p.I1307K"
* component[+].code = $loinc#48000-4
* component[=].valueCodeableConcept = $loinc#LA21258-1 "Chromosome 5"
* component[+].code = $loinc#81254-5 "Variant exact start-end"
* component[=].valueRange.low.value = 112175211

Instance: ct-xT-Observation6
InstanceOf: Variant
Usage: #inline
* meta.profile = "https://hl7.org/fhir/uv/genomics-reporting/2024Jan/StructureDefinition-variant.html"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#69548-6
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* component[0].code = $loinc#48018-6
* component[=].valueCodeableConcept.coding[0] = $genenames#HGNC:13711 "POF1B"
* component[=].valueCodeableConcept.coding[+] = $gene#79983 "POF1B"
* component[+].code = $loinc#48002-0
* component[=].valueCodeableConcept = $loinc#LA6684-0 "Somatic"
* component[+].code = $loinc#51958-7
* component[=].valueCodeableConcept = $refseq#NM_004656 "NM_004656"
* component[+].code = $loinc#48004-6
* component[=].valueCodeableConcept.text = "c.430C>T"
* component[+].code = $loinc#48005-3
* component[=].valueCodeableConcept.text = "p.P144S"
* component[+].code = $loinc#81258-6
* component[=].valueQuantity = 78.6 '%' "%"
* component[+].code = $loinc#62374-4
* component[=].valueCodeableConcept = $loinc#LA14029-5 "GRCh37"

Instance: ct-xT-variant-fusion-met-alk
InstanceOf: Variant
Usage: #inline
* meta.profile = "https://hl7.org/fhir/uv/genomics-reporting/2024Jan/StructureDefinition-variant.html"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#69548-6
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* component[0].code = $loinc#48018-6
* component[=].valueCodeableConcept.coding[0] = $genenames#HGNC:7029 "MET"
* component[=].valueCodeableConcept.coding[+] = $gene#4233 "MET"
* component[+].code = $loinc#48018-6
* component[=].valueCodeableConcept.coding[0] = $genenames#HGNC:427 "ALK"
* component[=].valueCodeableConcept.coding[+] = $gene#238 "ALK"
* component[+].code = $loinc#48019-4
* component[=].valueCodeableConcept = $sequenceontology#SO:0002062 "complex_chromosomal_rearrangement"
* component[+].code = $loinc#48002-0
* component[=].valueCodeableConcept = $loinc#LA6684-0 "Somatic"

Instance: ct-xT-molecular-consequence-observation-1
InstanceOf: MolecularConsequence
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-consequence"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#molecular-consequence
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-08-23"
* performer = Reference(urn:uuid:3970f176-e402-4eaf-989c-959e80d918ae)
* derivedFrom = Reference(urn:uuid:ccab39c5-49cf-4aa6-a1e7-2e0c9dd3a7d5)
* component[0].code = $tbd-codes-cs#feature-consequence
* component[=].valueCodeableConcept.text = "Stop gain"
* component[+].code = $tbd-codes-cs#functional-effect
* component[=].valueCodeableConcept.text = "loss of function"

Instance: ct-xT-molecular-consequence-observation-4
InstanceOf: MolecularConsequence
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-consequence"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#molecular-consequence
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-08-23"
* performer = Reference(urn:uuid:3970f176-e402-4eaf-989c-959e80d918ae)
* derivedFrom = Reference(urn:uuid:6e333995-6a74-4dcd-ac7f-d7cf5ad20ac9)
* component.code = $tbd-codes-cs#feature-consequence
* component.valueCodeableConcept.text = "Stop gain"

Instance: ct-xT-molecular-consequence-observation-5
InstanceOf: MolecularConsequence
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-consequence"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#molecular-consequence
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-08-23"
* performer = Reference(urn:uuid:3970f176-e402-4eaf-989c-959e80d918ae)
* derivedFrom = Reference(urn:uuid:d7318c30-3975-4f62-9840-3b8d7e7b56cd)
* component.code = $tbd-codes-cs#feature-consequence
* component.valueCodeableConcept.text = "Missense variant"

Instance: ct-xT-molecular-consequence-observation-6
InstanceOf: MolecularConsequence
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-consequence"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#molecular-consequence
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-08-23"
* performer = Reference(urn:uuid:3970f176-e402-4eaf-989c-959e80d918ae)
* derivedFrom = Reference(urn:uuid:86ad3e6b-7ed8-4c7d-b99c-574ac5e2b4b9)
* component.code = $tbd-codes-cs#feature-consequence
* component.valueCodeableConcept.text = "Missense variant"

Instance: ct-xT-molecular-consequence-observation-fusion
InstanceOf: MolecularConsequence
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-consequence"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#molecular-consequence
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-08-23"
* performer = Reference(urn:uuid:3970f176-e402-4eaf-989c-959e80d918ae)
* derivedFrom = Reference(urn:uuid:82a8b9db-a68e-4e06-897e-77ed3ea5aced)
* component.code = $tbd-codes-cs#feature-consequence
* component.valueCodeableConcept = $sequenceontology#SO:0001565 "gene_fusion"

Instance: ct-xT-diagnostic-implication-fusion
InstanceOf: DiagnosticImplication
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(urn:uuid:82a8b9db-a68e-4e06-897e-77ed3ea5aced)
* component.code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
* component.valueCodeableConcept = $loinc#LA6668-3 "Pathogenic"

Instance: ct-xT-diagnostic-implication-1
InstanceOf: DiagnosticImplication
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(urn:uuid:ccab39c5-49cf-4aa6-a1e7-2e0c9dd3a7d5)
* component.code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
* component.valueCodeableConcept = $loinc#LA6668-3 "Pathogenic"

Instance: ct-xT-diagnostic-implication-2
InstanceOf: DiagnosticImplication
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(urn:uuid:fc637e0b-dced-4245-946e-3fa13ec128e3)
* component.code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
* component.valueCodeableConcept = $loinc#LA6668-3 "Pathogenic"

Instance: ct-xT-diagnostic-implication-3
InstanceOf: DiagnosticImplication
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(urn:uuid:c7a1db28-0c8f-4667-a40a-79401833b26b)
* component.code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
* component.valueCodeableConcept = $loinc#LA6668-3 "Pathogenic"

Instance: ct-xT-diagnostic-implication-4
InstanceOf: DiagnosticImplication
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(urn:uuid:6e333995-6a74-4dcd-ac7f-d7cf5ad20ac9)
* component[0].code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $loinc#LA6668-3 "Pathogenic"
* component[+].code = $loinc#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept.text = "NTHL1 tumor syndrome, NTHL1-associated polyposis"

Instance: ct-xT-diagnostic-implication-5
InstanceOf: DiagnosticImplication
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(urn:uuid:d7318c30-3975-4f62-9840-3b8d7e7b56cd)
* component[0].code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
* component[=].valueCodeableConcept = $loinc#LA26332-9 "Likely Pathogenic"
* component[+].code = $loinc#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept.text = "APC-associated conditions"

Instance: ct-xT-diagnostic-implication-6
InstanceOf: DiagnosticImplication
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(urn:uuid:86ad3e6b-7ed8-4c7d-b99c-574ac5e2b4b9)
* component.code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
* component.valueCodeableConcept = $loinc#LA26333-7 "Uncertain Significance"

Instance: ct-xT-procedure1
InstanceOf: Procedure
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis"
* extension.extension[0].url = "description"
* extension.extension[=].valueString = "Pertinent Negative"
* extension.extension[+].url = "studied"
* extension.extension[=].valueCodeableConcept.coding[0] = $genenames#HGNC:7989 "NRAS"
* extension.extension[=].valueCodeableConcept.coding[+] = $gene#4893 "NRAS"
* extension.extension[+].url = "studied"
* extension.extension[=].valueCodeableConcept.coding[0] = $genenames#HGNC:6342 "KIT"
* extension.extension[=].valueCodeableConcept.coding[+] = $gene#3815 "KIT"
* extension.extension[+].url = "studied"
* extension.extension[=].valueCodeableConcept.coding[0] = $genenames#HGNC:1097 "BRAF"
* extension.extension[=].valueCodeableConcept.coding[+] = $gene#673 "BRAF"
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-regions"
* status = #completed
* category = $observation-category#laboratory
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* performedDateTime = "2023-08-09T01:01:10-06:00"

Instance: ct-xT-genomicStudy
InstanceOf: Procedure
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study"
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension.valueReference = Reference(urn:uuid:5fe0e4c4-fd4b-4e9d-af1e-b3b40c28a21a)
* basedOn = Reference(urn:uuid:28395cc2-c6e4-4006-84af-ebf40113656a)
* status = #completed
* category = $observation-category#laboratory
* code.text = "xT panel"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* performedDateTime = "2023-08-09"

Instance: gx-genomic-tmb
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-biomarker"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $tbd-codes-cs#biomarker-category
* category[+] = $v2-0074#GE
* code = $loinc#94076-7 "Mutations/Megabase [# Ratio] in Tumor"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* valueQuantity = 5.2 '1/1000000{Base}'

Instance: gx-genomic-research-study-implication-clinical-trial-NCT02693535
InstanceOf: ResearchStudy
Usage: #inline
* identifier.system = "http://clinicaltrials.gov"
* identifier.value = "NCT02693535"
* title = "TAPUR: Testing the Use of Food and Drug Administration (FDA) Approved Drugs That Target a Specific Abnormality in a Tumor Gene in People With Advanced Stage Cancer"
* status = #active
* phase = $research-study-phase#phase-2 "Phase 2"
* relatedArtifact.type = #citation
* relatedArtifact.url = "https://clinicaltrials.gov/ct2/show/NCT02693535"
* site.identifier.system = "https://www.usps.com/"
* site.identifier.value = "IL"
* site.display = "Zion, Illinois"

Instance: ct-xT-clinicalTrial
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapeutic-implication"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#therapeutic-implication
* derivedFrom = Reference(urn:uuid:fc637e0b-dced-4245-946e-3fa13ec128e3)
* component.extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/therapy-assessed-reference"
* component.extension.valueReference = Reference(urn:uuid:68b6b4ac-47df-4b0b-857a-d9427d5e2538)
* component.code = $tbd-codes-cs#associated-therapy
* component.valueCodeableConcept = $clinicaltrials#NCT02693535

Instance: ct-xT-HLA-A-haplotype1
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/haplotype"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#84414-2 "Haplotype Name"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-02-01"
* issued = "2019-02-01T00:00:00-05:00"
* performer = Reference(urn:uuid:3970f176-e402-4eaf-989c-959e80d918ae)
* valueCodeableConcept = $hla#A*03:01 "HLA-A*03:01"
* component.code = $loinc#48018-6
* component.valueCodeableConcept = $genenames#HGNC:4931 "HLA-A"

Instance: ct-xT-HLA-A-haplotype2
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/haplotype"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#84414-2 "Haplotype Name"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-02-01"
* issued = "2019-02-01T00:00:00-05:00"
* performer = Reference(urn:uuid:3970f176-e402-4eaf-989c-959e80d918ae)
* valueCodeableConcept = $hla#A*31:01 "HLA-A*31:01"
* component.code = $loinc#48018-6
* component.valueCodeableConcept = $genenames#HGNC:4931 "HLA-A"

Instance: ct-xT-HLA-B-haplotype1
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/haplotype"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#84414-2 "Haplotype Name"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-02-01"
* issued = "2019-02-01T00:00:00-05:00"
* performer = Reference(urn:uuid:3970f176-e402-4eaf-989c-959e80d918ae)
* valueCodeableConcept = $hla#B*07:02 "HLA-B*07:02"
* component.code = $loinc#48018-6
* component.valueCodeableConcept = $genenames#HGNC:4932 "HLA-B"

Instance: ct-xT-HLA-B-haplotype2
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/haplotype"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#84414-2 "Haplotype Name"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-02-01"
* issued = "2019-02-01T00:00:00-05:00"
* performer = Reference(urn:uuid:3970f176-e402-4eaf-989c-959e80d918ae)
* valueCodeableConcept = $hla#B*35:01 "HLA-B*35:01"
* component.code = $loinc#48018-6
* component.valueCodeableConcept = $genenames#HGNC:4932 "HLA-B"

Instance: ct-xT-HLA-C-haplotype1
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/haplotype"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#84414-2 "Haplotype Name"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-02-01"
* issued = "2019-02-01T00:00:00-05:00"
* performer = Reference(urn:uuid:3970f176-e402-4eaf-989c-959e80d918ae)
* valueCodeableConcept = $hla#C*04:01 "HLA-C*04:01"
* component.code = $loinc#48018-6
* component.valueCodeableConcept = $genenames#HGNC:4933 "HLA-C"

Instance: ct-xT-HLA-C-haplotype2
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/haplotype"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#84414-2 "Haplotype Name"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* effectiveDateTime = "2019-02-01"
* issued = "2019-02-01T00:00:00-05:00"
* performer = Reference(urn:uuid:3970f176-e402-4eaf-989c-959e80d918ae)
* valueCodeableConcept = $hla#C*07:02 "HLA-C*07:02"
* component.code = $loinc#48018-6
* component.valueCodeableConcept = $genenames#HGNC:4933 "HLA-C"

Instance: ct-xT-GeneList
InstanceOf: DocumentReference
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-data-file"
* identifier.system = "https://www.tempus.com"
* identifier.value = "11120"
* status = #current
* docStatus = #preliminary
* description = "Gene List"
* content.attachment.url = "https://edge-api-demo.stagingtempus.com/fhir/R4/static/Gene_List_1.json"
* content.attachment.title = "GeneList"
* content.attachment.creation = "2019-03-01T01:02:01+01:00"

Instance: ct-xT-genomicStudyAnalysis
InstanceOf: Procedure
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis"
* extension[0].extension.url = "studied"
* extension[=].extension.valueReference = Reference(urn:uuid:b3s0f176-e402-4eaf-989c-959e80d91n5f)
* extension[=].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-regions"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-specimen"
* extension[=].valueReference = Reference(urn:uuid:f5418e88-295b-43f8-af03-76c8c4aa516e)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-focus"
* extension[=].valueReference = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* status = #completed
* category = $observation-category#laboratory
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* performedDateTime = "2023-02-02T01:01:10-06:00"

Instance: ct-xT-genomicStudy-2
InstanceOf: Procedure
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study"
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension.valueReference = Reference(urn:uuid:11163097-6033-41af-9f6a-d7b012e27aaa)
* basedOn = Reference(urn:uuid:28395cc2-c6e4-4006-84af-ebf40113656a)
* status = #completed
* category = $observation-category#laboratory
* code.text = "xT panel"
* subject = Reference(urn:uuid:2ddeec04-75de-441c-8767-18c884ece7h4)
* performedDateTime = "2023-08-09"