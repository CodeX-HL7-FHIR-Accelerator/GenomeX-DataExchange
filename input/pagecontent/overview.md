### Overview

The GenomeX Data Exchange use case has put an emphasis on achieving real-world implementations to allow the Data Exchange community to deliver minimum viable products (MVPs) for their commercial offerings. This emphasis has encouraged the community to prioritize making tangible progress using currently available infrastructure and minimal data sets to accelerate commercial implementation. To that end two tracks of activities were undertaken as part of Data Exchange use case:
* Payload - FHIR-base report representation
* Transport - Mechanism for Payload exchange

### Conceptual Diagrams 
The figure below shows the initial scope of the Data Exchange use case, delivering genetic test results. To enable the delivery of test results using FHIR, the work has been broken down to focus on the Payload, the FHIR data necessary for present the test results in FHIR, and Transport, the mechanism to exchange the FHIR-based test results between the lab and the ordering organization.

<figure>
    <img src="GenomeX_Data_Exchange_Overview_Graphic.jpg"
         alt="Overview diagram of the Data Exchange use case including transport and payload of HL7 FHIR test results being sent from Genomic Laboratories to Health Care Organizations">
    <figcaption>Figure 1. Initial Scope: Lab sends results to healthcare organization via FHIR</figcaption>
</figure>
#### Genomic Payload
The payload sub-group focuses on developing the FHIR-based representation of the genomic test result reports.  The sub-group develops consensus between the multiple report producers regarding the data elements that are critical for use when delivering reports for specific genetic testing categories.  That consensus can range from indicating must support for the report receiver,  to the code system best suited for a specific data element, to which data elements are required for genomic test result reporting. More specific details regarding this topic can be found on the [Payload page](payload.html). 

As shown in Figure 2, the Genomic payload has multiple resources, the principle ones specific to genomics being GenomicReport, Variant, plus those that are closely tied such as DiagnosticImplications and TherapeuticImplications.

<figure>
    <img src="gdx_profiles.svg">
    <figcaption>Figure 2. Genomic Data Profiles</figcaption>
</figure>

#### Genomic Data Transport
The transport sub-group focused on the mechanism to exchange the FHIR payload between the sending and receiving systems. This group focused on identifying a transport mechanism that can be realized today given the available technology and infrastructure. The near-term solution relies on the HL7v2 ordering and resulting infrastructure that is currently available in labs across the United States. More specific details regarding this topic can be found on the [Transport page](transport.html). 

Through work with commercial labs and EHR vendors in the GDX community, multiple options for a transport mechanism were discussed. As noted the near-term solutions rely on HL7v2 ordering and resulting infrastructure. Those options include the two shown below which provide the capability for a static bundle to be passed as an embedded object in the HL7v2 message, Figure 3, or a reference pointer to a FHIR server within the HL7v2 message, Figure 4.

In both cases the laboratory (source) send an HL7v2 message to the healthcare organization (target). In the first case, the target receives the message, decodes the FHIR bundle, then is able to deliver it to their FHIR server. In the second case, the target receives the reference pointer (aka link) to the source's FHIR server, then requests the FHIR resource(s) and finally delivers the resource(s) to the target FHIR server.

<figure>
    <img src="genomeX_transport_option_1.svg" width="70%">
    <figcaption>Figure 3. HL7v2 transport option for an embedded FHIR bundle</figcaption>
</figure>

<figure>
    <img src="genomeX_transport_option_2.svg" width="70%">
    <figcaption>Figure 4. HL7v2 transport option for a reference pointer to a FHIR server</figcaption>
</figure>