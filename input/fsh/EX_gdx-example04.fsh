// GenomeX Data Exchange use case example - Reference lab to EHR
// The following examples will be used as a prototype and based on de-identified RWD test data. There is no PHI.

// **************************************************************
// ************* Example 4: Tumor-Normal Test *******************
// **************************************************************
// Oncology Germline Test Result Data Only


Instance: ct-xG-bundle
InstanceOf: GenomicBundle
Usage: #example
* type = #transaction
* entry[0].fullUrl = "urn:uuid:43e09316-c616-4b23-81df-e546d2b95c41"
* entry[=].resource = ct-cancer-patient-C3PO
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:d90e9857-574a-4fc6-98c6-6d61d6e024cd"
* entry[=].resource = gx-genomics-report-C3PO
* entry[=].request.method = #POST
* entry[=].request.url = "DiagnosticReport"
* entry[+].fullUrl = "urn:uuid:150a3549-3114-4dea-bd1d-e24c036b2934"
* entry[=].resource = ct-xG-ServiceRequest
* entry[=].request.method = #POST
* entry[=].request.url = "ServiceRequest"
* entry[+].fullUrl = "urn:uuid:775af36d-3c44-4647-b120-5d5a6b490a1e"
* entry[=].resource = ct-xG-practitioner
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"
* entry[+].fullUrl = "urn:uuid:eb4e82bd-2162-4b01-bfd7-19bac0828abe"
* entry[=].resource = ct-genomic-practitionerRole
* entry[=].request.method = #POST
* entry[=].request.url = "PractitionerRole"
* entry[+].fullUrl = "urn:uuid:19fc189e-7287-4a4b-bf1c-1ab222bbfe3d"
* entry[=].resource = ct-ordering-organization
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:aeea668a-a035-4963-9e56-249d735916a5"
* entry[=].resource = ct-organization-tempus-inc
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:26242dd9-b9c7-40cb-838c-7f5007fde86f"
* entry[=].resource = Inline-Instance-for-ct-xG-bundle-1
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"
* entry[+].fullUrl = "urn:uuid:1a9edfe1-1620-4882-a81c-30c2f254f34f"
* entry[=].resource = Inline-Instance-for-ct-xG-bundle-2
* entry[=].request.method = #POST
* entry[=].request.url = "Specimen"
* entry[+].fullUrl = "urn:uuid:82a8b9db-a68e-4e06-897e-77ed3ea5aced"
* entry[=].resource = ct-xG-OverallInterpretation
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:6320918e-f5da-41fa-9481-6b75c2a0d712"
* entry[=].resource = ct-xG-observation1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:92f37846-46db-41f2-b0f5-edd46b61880a"
* entry[=].resource = ct-xG-observation2
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:5a506248-dad9-441e-b898-6fd4be77974b"
* entry[=].resource = ct-diagnostic-implication-1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:e44b5631-a39a-43c6-b189-de68720d66fa"
* entry[=].resource = ct-diagnostic-implication-2
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:33a4f8bb-eae5-4927-b20b-5915cbd862ab"
* entry[=].resource = ct-OverallInterp
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:c5s0f176-e402-4eaf-989c-959e80d91a11"
* entry[=].resource = ct-xT-GeneList
* entry[=].request.method = #POST
* entry[=].request.url = "DocumentReference"
* entry[+].fullUrl = "urn:uuid:22263097-6033-41af-9f6a-d7b012e27bbb"
* entry[=].resource = ct-xT-genomicStudyAnalysis
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"
* entry[+].fullUrl = "urn:uuid:88f2715b-10ea-42ae-a3a2-185b14e6e666"
* entry[=].resource = ct-xT-genomicStudy-2
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

Instance: ct-cancer-patient-C3PO
InstanceOf: GdxPatient
Usage: #inline
* identifier[0].use = #usual
* identifier[=].type = $v2-0203#PT "Patient external identifier"
* identifier[=].system = "https://www.tempus.com"
* identifier[=].value = "0754aeb3-dd9c-458a-9b06-2da7d62ejh7k"
* identifier[+].type = $v2-0203#MR "Medical Record Number"
* identifier[=].system = "http://hospital.example.org"
* identifier[=].value = "123456789"
* name.family = "Test"
* name.given = "C3P0"
* gender = #male
* birthDate = "1950-01-01"
* address.line = "987 Main St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"

Instance: gx-genomics-report-C3PO
InstanceOf: GdxGenomicReport
Usage: #inline
* extension.valueReference = Reference(urn:uuid:88f2715b-10ea-42ae-a3a2-185b14e6e666)
* identifier[0].type = $v2-0203#ACSN "Accession ID"
* identifier[=].system = "https://www.tempus.com"
* identifier[=].value = "TL-22-D3MTCAU4"
* identifier[+].type = $v2-0203#RI "Pipeline Version"
* identifier[=].system = "https://www.tempus.com"
* identifier[=].value = "3.9.3"
* identifier[+].type = $v2-0203#PLAC "Placer Identifier"
* identifier[=].system = "https://www.tempus.com"
* identifier[=].value = "d6eeedd1-92d3-45b9-bf33-6401e804425f"
* basedOn = Reference(urn:uuid:150a3549-3114-4dea-bd1d-e24c036b2934)
* status = #final
* category[0] = $v2-0074#GE
* category[+].text = "DNA"
* code = $loinc#51969-4 "Genetic analysis report"
* subject = Reference(urn:uuid:43e09316-c616-4b23-81df-e546d2b95c41)
* effectiveDateTime = "2022-02-15T19:28:58+05:00"
* performer = Reference(urn:uuid:aeea668a-a035-4963-9e56-249d735916a5)
* resultsInterpreter = Reference(urn:uuid:26242dd9-b9c7-40cb-838c-7f5007fde86f)
* specimen = Reference(urn:uuid:1a9edfe1-1620-4882-a81c-30c2f254f34f)
* result[0] = Reference(urn:uuid:6320918e-f5da-41fa-9481-6b75c2a0d712)
* result[+] = Reference(urn:uuid:92f37846-46db-41f2-b0f5-edd46b61880a)
* result[+] = Reference(urn:uuid:5a506248-dad9-441e-b898-6fd4be77974b)
* result[+] = Reference(urn:uuid:e44b5631-a39a-43c6-b189-de68720d66fa)
* result[+] = Reference(urn:uuid:33a4f8bb-eae5-4927-b20b-5915cbd862ab)
* result[+] = Reference(urn:uuid:82a8b9db-a68e-4e06-897e-77ed3ea5aced)

Instance: ct-xG-ServiceRequest
InstanceOf: GdxServiceRequest
Usage: #inline
* identifier.type = $v2-0203#FILL "Filler Identifier"
* identifier.system = "https://www.tempus.com"
* identifier.value = "22hosvx"
* requisition.type = $v2-0203#ACSN "Accession ID"
* requisition.system = "https://www.tempus.com"
* requisition.value = "TL-24-D3MTCAH8"
* status = #completed
* intent = #order
* code = $tempus#xG.V4 "CancerNext"
* requester = Reference(urn:uuid:775af36d-3c44-4647-b120-5d5a6b490a1e)
* subject = Reference(urn:uuid:43e09316-c616-4b23-81df-e546d2b95c41)
* reasonCode = $icd-10-cm#C24.0 "^Malignant neoplasm of extrahepatic bile duct"

Instance: ct-xG-practitioner
InstanceOf: Practitioner
Usage: #inline
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9988776345"
* name.family = "Skywalker"
* name.given = "Luke"
* address.use = #work
* address.line = "600 Chicago Drive"
* address.city = "Everywhere"
* address.state = "TX"
* address.postalCode = "16789"
* address.country = "US"
* gender = #male
* qualification.code.coding.version = "2.7"
* qualification.code.coding = $v2-0360#MD

Instance: ct-genomic-practitionerRole
InstanceOf: PractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:775af36d-3c44-4647-b120-5d5a6b490a1e)
* organization = Reference(urn:uuid:19fc189e-7287-4a4b-bf1c-1ab222bbfe3d)

Instance: ct-ordering-organization
InstanceOf: GdxLabOrganization
Usage: #inline
* identifier.system = "http://example.emr.com/organization"
* identifier.value = "12345"
* active = true
* name = "TriHealth Cancer Institute - Cincinnati"
* address.use = #work
* address.line = "1234 Brooks River"
* address.city = "Cincinnati"
* address.state = "OH"
* address.postalCode = "11111-1111"
* partOf.identifier.value = "Oncology Group"
* contact.name.family = "Jobs"
* contact.name.given = "Steve"

Instance: ct-organization-tempus-inc
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

Instance: Inline-Instance-for-ct-xG-bundle-1
InstanceOf: Practitioner
Usage: #inline
* meta.lastUpdated = "2023-10-02T07:03:06.120689+00:00"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* identifier.system = "http://www.acme.com/identifiers/patient"
* identifier.value = "123456"
* name.family = "Pathologist"
* name.given = "Test"

Instance: Inline-Instance-for-ct-xG-bundle-2
InstanceOf: Specimen
Usage: #inline
* status = #available
* type = $v2-0487#"Whole blood" "Whole blood"
* subject = Reference(urn:uuid:43e09316-c616-4b23-81df-e546d2b95c41)
* receivedTime = "2022-02-11T11:00:00+05:00"
* collection.collectedDateTime = "2022-02-06T05:00:00+05:00"

Instance: ct-xG-OverallInterpretation
InstanceOf: Observation
Usage: #inline
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#51968-6
* subject = Reference(urn:uuid:43e09316-c616-4b23-81df-e546d2b95c41)
* effectiveDateTime = "2019-04-01"
* performer = Reference(urn:uuid:aeea668a-a035-4963-9e56-249d735916a5)
* valueCodeableConcept = $loinc#LA6576-8 "Positive"
* specimen = Reference(urn:uuid:1a9edfe1-1620-4882-a81c-30c2f254f34f)

Instance: ct-xG-observation1
InstanceOf: Variant
Usage: #inline
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#69548-6
* subject = Reference(urn:uuid:43e09316-c616-4b23-81df-e546d2b95c41)
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* component[0].code = $loinc#48018-6
* component[=].valueCodeableConcept = $genenames#HGNC:6742 "LZTR1"
* component[+].code = $loinc#62374-4
* component[=].valueCodeableConcept = $loinc#LA14029-5 "GRCh37"
* component[+].code = $loinc#48002-0
* component[=].valueCodeableConcept = $loinc#LA6683-2 "Germline"
* component[+].code = $loinc#51958-7
* component[=].valueCodeableConcept = $refseq#NM_006767.3
* component[+].code = $loinc#48004-6
* component[=].valueCodeableConcept.text = "c.439A>G"
* component[+].code = $loinc#48005-3
* component[=].valueCodeableConcept.text = "p.K147E"
* component[+].code = $loinc#81254-5
* component[=].valueRange.low.value = 21342337
* component[+].code = $loinc#48000-4
* component[=].valueCodeableConcept = $loinc#LA21275-5 "Chromosome 22"

Instance: ct-xG-observation2
InstanceOf: Variant
Usage: #inline
* meta.profile = "https://hl7.org/fhir/uv/genomics-reporting/2024Jan/StructureDefinition-variant.html"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#69548-6
* subject = Reference(urn:uuid:43e09316-c616-4b23-81df-e546d2b95c41)
* valueCodeableConcept = $loinc#LA9633-4 "Present"
* method = $loinc#LA26398-0 "Sequencing"
* component[0].code = $loinc#48018-6
* component[=].valueCodeableConcept = $genenames#HGNC:7527 "MUTYH"
* component[+].code = $loinc#62374-4
* component[=].valueCodeableConcept = $loinc#LA14029-5 "GRCh37"
* component[+].code = $loinc#48002-0
* component[=].valueCodeableConcept = $loinc#LA6683-2 "Germline"
* component[+].code = $loinc#51958-7
* component[=].valueCodeableConcept = $refseq#NM_001128425.1
* component[+].code = $loinc#48004-6
* component[=].valueCodeableConcept.text = "c.481G>C"
* component[+].code = $loinc#48005-3
* component[=].valueCodeableConcept.text = "p.D161H"
* component[+].code = $loinc#81254-5
* component[=].valueRange.low.value = 45798613
* component[+].code = $loinc#48000-4
* component[=].valueCodeableConcept = $loinc#LA21254-0 "Chromosome 1"

Instance: ct-diagnostic-implication-1
InstanceOf: DiagnosticImplication
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(urn:uuid:43e09316-c616-4b23-81df-e546d2b95c41)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(urn:uuid:6320918e-f5da-41fa-9481-6b75c2a0d712)
* component.code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
* component.valueCodeableConcept = $loinc#LA26333-7 "Uncertain Significance"

Instance: ct-diagnostic-implication-2
InstanceOf: DiagnosticImplication
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(urn:uuid:43e09316-c616-4b23-81df-e546d2b95c41)
* effectiveDateTime = "2019-04-01"
* derivedFrom = Reference(urn:uuid:92f37846-46db-41f2-b0f5-edd46b61880a)
* component.code = $loinc#53037-8 "Genetic variation clinical significance [Imp]"
* component.valueCodeableConcept = $loinc#LA26332-9 "Likely Pathogenic"

Instance: ct-OverallInterp
InstanceOf: Observation
Usage: #inline
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $loinc#51968-6
* subject = Reference(urn:uuid:43e09316-c616-4b23-81df-e546d2b95c41)
* effectiveDateTime = "2019-04-01"
* performer = Reference(urn:uuid:aeea668a-a035-4963-9e56-249d735916a5)
* valueCodeableConcept = $loinc#LA6576-8 "Positive"
* specimen = Reference(urn:uuid:1a9edfe1-1620-4882-a81c-30c2f254f34f)

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
* extension[=].extension.valueReference = Reference(urn:uuid:c5s0f176-e402-4eaf-989c-959e80d91a11)
* extension[=].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-regions"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-specimen"
* extension[=].valueReference = Reference(urn:uuid:1a9edfe1-1620-4882-a81c-30c2f254f34f)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-focus"
* extension[=].valueReference = Reference(urn:uuid:43e09316-c616-4b23-81df-e546d2b95c41)
* status = #completed
* category = $observation-category#laboratory
* subject = Reference(urn:uuid:43e09316-c616-4b23-81df-e546d2b95c41)
* performedDateTime = "2023-02-02T01:01:10-06:00"

Instance: ct-xT-genomicStudy-2
InstanceOf: Procedure
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study"
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension.valueReference = Reference(urn:uuid:22263097-6033-41af-9f6a-d7b012e27bbb)
* basedOn = Reference(urn:uuid:150a3549-3114-4dea-bd1d-e24c036b2934)
* status = #completed
* category = $observation-category#laboratory
* code.text = "xT panel"
* subject = Reference(urn:uuid:43e09316-c616-4b23-81df-e546d2b95c41)
* performedDateTime = "2023-08-09"