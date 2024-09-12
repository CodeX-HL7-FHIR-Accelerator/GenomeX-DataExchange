
### Background
There is an ongoing need to expand and standardize genomic test results that are exchanged between laboratories, EHR vendors and other interested stakeholders.  The work of the [HL7 Clinical Genomics Working Group (CGWG)](https://confluence.hl7.org/display/CGW) and their [HL7 Genomics Reporting FHIR Implementation Guide (GRIG)](https://build.fhir.org/ig/HL7/genomics-reporting/), to design and build, scalable FHIR genomics interfaces, is enabling the appropriate data to be sent to EHRs and genomics repositories.

The Genomics Reporting IG is a comprehensive guide, but is too broad for the specific needs of the GenomeX Data Exchange community. More specific guidance is needed to constrain the GRIG to meet the scope of the Data Exchange use case.

The Data Exchange effort differs from the work of the CGWG in its focus on real-world implementations. The emphasis is on providing a narrow scope which identifies the  set of elements that are actionable and minimal for clinical use. This effort will begin with a starter set of elements that support the participating laboratories genomic test results for oncology focused reports. In addition to the FHIR specifications, this IG will also address the transport mechanisms and workflow-related guidance necessary for implementation in today's existing laboratory infrastructure, which is currently out of scope of the FHIR focused CGWG.

This FHIR implementation guide (IG) is intended to organize modeling guidance for consensus among the GenomeX Data Exchange community. It is not intended for ballot at this time, although it may be considered in the future. Parts of the documented findings in this IG may be incorporated into the GRIG in the future.

### Scope

This first draft will focus on the following:
* Genomics Reporting FHIR IG 3.0.1
* mCODE STU 3.0.0
* FHIR R4
* a basic set of data elements usable by providers for diagnosis, treatment, and monitoring
* somatic tests
* oncology-related GRIG profiles - Tumor mutation burden (TMB) and microsatellite instability (MSI)

The following topics may include guidance but are not definitively in-scope at this time:
* therapeutic drug implications
* applicable clinical trials
* germline tests
* genomic operations

### Assumptions and Caveats

To enable the work within the GDX use case, a set of assumptions and caveats were needed to allow the community to work on the more pressing issue of representing genomic testing data using the scope defined above. Those assumptions and caveats are provided below:
* EHR-Lab workflows may vary in a way that obviates the need for some data elements to be included in the report. For example, Some genomics reports will not include expanded patient demographics like name or date of birth. Rather, a patient-related identifier is provided that can be matched by an external system.
* Not all terminologies will be supported

### Approach

The Data Exchange community is working to build traction for the use of FHIR to exchange genomic data in real-world settings. To enable members to bridge from their current workflows into the higher requirements laid out in the Genomics Reporting IG, this supplemental IG will provide a glide path to allow members to increase capabilities and conformance over the first few iterations. This version of the IG represents the initial state that is attainable by our members with a target state laid out for many of the data elements. The intent is to meet the minimum standards provided by the GRIG as quickly as possible.

The Data Exchange effort has put an emphasis on achieving real-world implementations to allow the Data Exchange community to deliver minimum viable products (MVPs) for their commercial offerings. This emphasis has encouraged the community to prioritize making tangible progress using currently available infrastructure and minimal data sets to accelerate commercial implementation. To that end two tracks of activities were undertaken as part of Data Exchange use case:
* payload
* transport

More specific details regarding the structure of the use case and the sub-groups can be found on the [Overview page](overview.html). 

<br/>

#### Genomic Data Payload

The payload sub-group focuses on developing the FHIR-based representation of the genomic test result reports.  The sub-group develops consensus between the multiple report producers regarding the data elements that are critical for use when delivering reports for specific genetic testing categories.  That consensus can range from indicating must support for the report receiver,  to the code system best suited for a specific data element, to which data elements are required for genomic test result reporting. 

Details for scope of content in the genomics report are described in [Payload](payload.html)

#### Genomic Data Transport

The transport sub-group focused on the mechanism to exchange the FHIR payload between the sending and receiving systems. This group focused on identifying a transport mechanism that can be realized today given the available technology and infrastructure. The near-term solution relies on the HL7v2 ordering and resulting infrastructure that is currently available in labs across the United States. 

Details for Transport are described in [Transport Messaging](transport.html)

### Dependencies
  <p>{% include dependency-table.xhtml %} </p>

### Global Profiles
  <p>{% include globals-table.xhtml %} </p>

### Cross Version Analysis
  <p>{% include cross-version-analysis.xhtml %} </p>

### IP Statements
  <p>{% include ip-statements.xhtml %} </p>

### Credits

Our thanks to the contributors to the CodeX/GenomeX data exchange work stream which drive the guidance in this IG.