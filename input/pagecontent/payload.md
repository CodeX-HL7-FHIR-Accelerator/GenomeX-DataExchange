### GenomeX Data Exchange Payload Overview
 
The payload sub-group focuses on developing the FHIR-based representation of the genomic test result reports.  The sub-group develops consensus between the multiple report producers regarding the data elements that are critical for use when delivering reports for specific genetic testing categories.  That consensus can range from indicating must support for the report receiver,  to the code system best suited for a specific data element, to which data elements are required for genomic test result reporting.

As shown in Figure 1 below, the Genomic payload has multiple resources, the principle ones specific to genomics being GenomicReport, Variant, plus those that are closely tied such as DiagnosticImplications and TherapeuticImplications.

<figure>
    <object data="gdx_profiles.svg" type="image/svg+xml"></object>
    <figcaption>Figure 1. Genomic Data Profiles</figcaption>
</figure>


### Payload Development Process
The Data Exchange use case worked across the data creating member to develop the initial consensus for genomic report information that would be included in Phase 0, the initial implementation of the GRIG. To understand what data required FHIR representation, the members provided the basic data elements  that needed to be delivered as part of their existing genomic test results. Along with the data elements, metadata about each element were also captured, including any required elements, data element code system(s), and code systems that can be implemented now or in the future. 

Once the data elements were catalogued, the members mapped them to an appropriate set of FHIR resources based on FHIR R4, the GRIG STU2, and mCODE STU3. The results were compared across the report producers to determine the overlapping set of FHIR resources. Those that were common or closely aligned between the report producers were agreed upon as the initial set for this IG.

These data elements were the focus of Phase 0 and will represent a starting point for this IG. 

For additional context, samples for a variety of report types, such as general genomic reporting, somatic reporting, variant reporting, and PGx reporting are available under the [How to Use This Guide](http://hl7.org/fhir/uv/genomics-reporting/STU2/index.html#how-to-use-this-guide) section of the [Genomics Reporting IG (STU2)](http://hl7.org/fhir/uv/genomics-reporting/STU2).

### Outcomes 
The major outcomes of the payload development process are represented by the constraints on the FHIR resources in this IG and shown in the profiles. In addition, there are other design decisions that are shown below to help guide the Data Exchange community through early implementation of FHIR in their workflows. 

#### Decision: Bundle types
There are a number of options for the FHIR bundle type that may be used to deliver the genomic test results. The intention is to provide options to the report producers as they increase their FHIR capabilities. The decision of how to generate the FHIR bundle must take into consideration the [transport mechanism](transport.html) used. 

The two options will include:
1. an embedded FHIR bundle in the HL7v2 message
2. utilizing the HL7v2 OBX-5.1 Reference Pointer (RP)
	- The RP may reference a full contained report in a transaction bundle 
	- The RP may reference a long query for a dynamic searchset

The RP value contains a pointer to the data e.g., a URL of an FHIR genomic test result. The receiving system can use this reference pointer whenever it needs access to the actual data through other interface standards.

<figure>
    <img src="GenomeX_Data_Exchange_Bundle_Types.jpg"
         alt="Data Exchange bundle types">
    <figcaption>Figure 2. Data Exchange bundle types</figcaption>
</figure>

The recommended path to enable a smooth transition involves multiple steps to bridge from HL7v2 only ordering and resulting systems to a fully FHIR-ized system. To that end, these recommendations are provided:
- Continue to embed the final PDF test report in the HL7v2 message
- Begin to embed a test result FHIR transaction bundle in the HL7v2 message (option 1)
	- Option to embed the final PDF test report in FHIR bundle to validate full system operation prior to moving off HL7v2 transport 
- Introduce the FHIR RP once FHIR servers are exposed for the lab and ordering organization (option 2) 
	- RP to a FHIR transaction bundle 
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
The decisions and consensus reached by the Data Exchange community through the process described below have been tested and validated during multiple connectathons, specifically May 2023 and January 2024. The efforts have evolved from the early work considering a broad swath of reference lab data elements to a much narrower set that were found to have consensus between multiple labs. 

The explicit goals of the January connectathon included:
- Generate genomics report FHIR examples that successfully validate against FHIR validation tools.
- Parse the following FHIR resources:
	- GenomicsReport
	- Variant
	- DiagnosticImplications*
	- TherapeuticImplications*
	- Core FHIR resources: Patient, Specimen, PractitionerRole, Organization, ServiceRequest
\* stretch goals

For dynamic FHIR services, the following goals are included:
- Generate genomics report FHIR examples that maintain referential integrity in their posted genomic report.
- Ability to query the necessary and relevant resources referenced by the genomics report.
- Reference implementation FHIR servers are able to support the necessary search parameters to return reference FHIR resources.
