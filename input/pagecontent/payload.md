### GenomeX Data Exchange Payload Overview
 
The payload sub-group focuses on developing the FHIR-based representation of the genomic test result reports.  The sub-group develops consensus between the multiple report producers regarding the data elements that are critical for use when delivering reports for specific genetic testing categories.  That consensus can range from indicating must support for the report receiver,  to the code system best suited for a specific data element, to which data elements are required for genomic test result reporting.

As shown in Figure 1 below, the Genomic payload has multiple resources, the principle ones specific to genomics being GenomicReport, Variant, plus those that are closely tied such as DiagnosticImplications and TherapeuticImplications.

<figure>
    <object data="gdx_profiles.svg" type="image/svg+xml"></object>
    <figcaption>Figure 1. Genomic Data Profiles</figcaption>
</figure>


### Payload Development Process
The Data Exchange use case worked across the data creating member to develop the initial consensus for genomic report information that would be included in Phase 0, the initial implementation of the GRIG. To understand what data required FHIR representation, the members provided the basic data elements  that needed to be delivered as part of their existing genomic test results. Along with the data elements, metadata about each element were also captured, including any required elements, data element code system(s), and code systems that can be implemented now or in the future. 

Once the data elements were catalogued, the members mapped them to an appropriate set of FHIR resources based on FHIR R4, the GRIG STU3, and mCODE STU3. The results were compared across the report producers to determine the overlapping set of FHIR resources. Those that were common or closely aligned between the report producers were agreed upon as the initial set for this IG.

These data elements were the focus of Phase 0 and will represent a starting point for this IG. 

For additional context, samples for a variety of report types, such as general genomic reporting, somatic reporting, variant reporting, and PGx reporting are available under the [How to Use This Guide](https://build.fhir.org/ig/HL7/genomics-reporting/#how-to-use-this-guide) section of the [Genomics Reporting IG (STU3)](https://build.fhir.org/ig/HL7/genomics-reporting/).

### Outcomes 
The major outcomes of the payload development process are represented by the constraints on the FHIR resources in this IG and shown in the profiles. In addition, there are other design decisions that are shown below to help guide the Data Exchange community through early implementation of FHIR in their workflows. 

#### Decision: Bundle types
There are a number of options for the FHIR bundle type that may be used to deliver the genomic test results. The intention is to provide options to the report producers as they increase their FHIR capabilities. The decision of how to generate the FHIR bundle must take into consideration the [transport mechanism](transport.html) used. 

The two options will include:
1. an embedded FHIR bundle in the HL7v2 message
2. utilizing the HL7v2 OBX-5.1 Reference Pointer (RP)
	- The RP may reference a full contained report in a collection bundle 
	- The RP may reference a long query for a dynamic searchset

The RP value contains a pointer to the data e.g., a URL of an FHIR genomic test result. The receiving system can use this reference pointer whenever it needs access to the actual data through other interface standards.

<figure>
    <img src="GenomeX_Data_Exchange_Bundle_Types.jpg" 
         alt="Data Exchange bundle types">
    <figcaption>Figure 2. Data Exchange bundle types</figcaption>
</figure>

An abbreviated code snippet of an HL7v2 message with an embedded FHIR JSON bundle and a PDF attachment is shown below:
```
MSH|^~\&|GENOMICREFLAB_LIS_APP|GENOMICREFLAB|GXSANCTUARY_HL7V2APP|GXSANCTUARY|20240109091800|1|ORU^R01|||2.5.1|||||||||
PID|1||MRN9876^^^^MR||M^Jenny||||||||||||||||
PV1|1||||||||||||||||||<Encounter serial no>|||||||||||||||||||
ORC|OE|22334455
OBR|1|22334455|66778899|81479^Molecular Pathology and Genetic Testing^CPT^TEST123^Cancer Gene Panel^GENOMICREFLAB_CS|||20240108091800|||||||||Owen Oncologist||||||20240108091800|||F
OBX|1|ST|81247-9^Master HL7 genetic variant reporting panel^LN||^^||||||F
OBX|2|ED|51969-4^Genetic Analysis Report^LN||^application^json^A^{"resourceType": "Bundle","id": "GenomicRefLab-bundle-example","type": "collection",etc.}||||||F|
OBX|3|ED|GENOMICREPORT-PDF^Genetic Analysis Report (PDF Format)^GENOMEX_CS||^application^pdf^Base64^JVBER...base64EncodedPDF...etc.||||||F|
```

An abbreviated code snippet of an HL7v2 message with a reference pointer to a FHIR bundle is shown below:
```
MSH|^~\&|GENOMICREFLAB_LIS_APP|GENOMICREFLAB|GXSANCTUARY_HL7V2APP|GXSANCTUARY|20240109091800|1|ORU^R01|||2.5.1|||||||||
PID|1||MRN9876^^^^MR||M^Jenny||||||||||||||||
PV1|1||||||||||||||||||<Encounter serial no>|||||||||||||||||||
ORC|OE|22334455
OBR|1|22334455|66778899|81479^Molecular Pathology and Genetic Testing^CPT^TEST123^Cancer Gene Panel^GENOMICREFLAB_CS|||20240108091800|||||||||Owen Oncologist||||||20240108091800|||F
OBX|1|RP|81247-9^Master HL7 genetic variant reporting panel^LN||https://example.org/genomicreflabfhirserver/open/DiagnosticReport/gx-genomic-report-genomicreflab-patient-ptfirstname-ptlastname^^||||||F
```

The recommended path to enable a smooth transition involves multiple steps to bridge from HL7v2 only ordering and resulting systems to a fully FHIR-ized system. To that end, these recommendations are provided:
- Continue to embed the final PDF test report in the HL7v2 message
- Begin to embed a test result FHIR collection bundle in the HL7v2 message (option 1)
	- Option to embed the final PDF test report in FHIR bundle to validate full system operation prior to moving off HL7v2 transport 
- Introduce the FHIR RP once FHIR servers are exposed for the lab and ordering organization (option 2) 
	- RP to a FHIR collection bundle 
	- RP to a FHIR searchset

#### Decision: CodeableCocept Usage Pattern
Include codeableConcept AND represent the display text in the text field as the GenomeX standard for coded system data inputs.

The text field is used to represent an alternate text based value that is understandable for clinical use in addition to the coded value. For example, just displaying "c.2251A>T" versus "NM_001127208.2:c.2251A>T" as several members currently provide.

GenomeX participants agree to the proper coded representation using a codeableConcept and represent the alternate text based value in the text field. During the early phases of development, the "text only" option below is acceptable, but not preferred, as members enhance their workflows to include the full coded representation. This may not be an acceptable option in all cases, such as where the coded system is required.

The following three values provide an example:

```
{
	"valueCodeableConcept": {
		"text": "c.2251A>T" 
	}
}, 
{
	"valueCodeableConcept": {
		"coding": [ 
			{ 
				"system": "http://varnomen.hgvs.org",
				"code": "NM_001127208.2:c.2251A>T",
				"display": "NM_001127208.2:c.2251A>T 
			} 
		] 
	}
},
{ 
   "valueCodeableConcept": {
	    "coding": [ 
		    { 
		         "system": "http://varnomen.hgvs.org",
		         "code": "NM_001127208.2:c.2251A>T",
		         "display": "NM_001127208.2:c.2251A>T 
			} 
		],
		"text": "c.2251A>T" 
	}
}
```

### Implementation / Validation Venues
The decisions and consensus reached by the GenomeX Data Exchange community through the described process have been extensively tested and validated at HL7 FHIR Connectathons, including the May 2023 Clinical Genomics track (Connectathon 33) and the January 2024 Clinical Genomics - CodeX (GenomeX) track (Connectathon 35). Please refer to the following links for detailed information:

- [HL7 FHIR Connectathon 33 Clinical Genomics - May 2023](https://confluence.hl7.org/x/XhGkC)
- [HL7 FHIR Connectathon 35 Clinical Genomics - CodeX (GenomeX) - January 2024](https://confluence.hl7.org/x/Fw0tD)
- [HL7 FHIR Connectathon 35 CodeX/GenomeX Data Exchange](https://confluence.hl7.org/x/UBhKDw)

