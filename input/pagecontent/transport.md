
Precision Medicine workflows require sharing complex data types with many relationships.
Multiple transmission formats and protocols are used to transport Genomic test results from laboratories to health care organizations.
HL7v2 transmission, using the MLLP protocol, is ubiquitously adopted remains the only guaranteed transport 
available to support data exchange for clinical workflows, especially lab orders & results.

FHIR GenomeX data structures will be transmitted to enable new precision medicine workflows. In the prescribed options EHR integrations w/ Labs 
will continue to support HL7v2 Ordering along with new HTTP based transport options as listed below:

1. HL7v2 Order & Result via embedded FHIR bundle as base 64 string
2. HL7v2 Order & Result via FHIR APIs links: HL7 ORU contains FHIR server link to download the reports through HTTPs.
3. HL7v2 Order & Result via FHIR API polling (batch download)

###  HL7 ORU with embedded FHIR bundle as base 64 string

Steps:
* EHR system places a new order through HL7 ORM into lab  
* Lab sends Observation (ORU) with a FHIR bundle as base 64 string embedded in
an OBX segment

<object data="genomeX_transport_option_1.svg" type="image/svg+xml"></object>
<br/>

### Hybrid HL7 ORU and FHIR APIs

Steps:
* EHR system places a new order through HL7 ORM into lab  
* Lab sends Observation (ORU) with an HTTP link to FHIR server in an OBX segment
* EHR receives HL7 and issues a HTTPs GET request to the FHIR server for the report
* FHIR server returns a report as an HTTPs response


<object data="genomeX_transport_option_2.svg" type="image/svg+xml"></object>
<br/>

### EHR initiates HL7 Order; Research platform polls FHIR server for report download

Steps:
* EHR system places a new order through HL7 ORM into lab  
* EHR polls periodically and searches for any reports available for order placed, 
using search parameters in the FHIR servers search endpoint
* EHR issues a HTTP GET request to the FHIR server for the report/bundle
* Lab FHIR server returns GenomeX report/bundle as a HTTP response

<object data="genomeX_transport_option_3.svg" type="image/svg+xml"></object>
<br/>

#### FHIR servers are recommended to adopt [Smart on FHIR](https://build.fhir.org/ig/HL7/smart-app-launch/client-confidential-asymmetric.html#client-authentication-asymmetric-public-key) with asymmetric key profile. SMART on FHIR is an HL7 standard widely supported in healthcare.