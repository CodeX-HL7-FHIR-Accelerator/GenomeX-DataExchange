## GenomeX data transport

Precision Medicine workflows require sharing complex data types with many relationships.
Multiple transmission formats and protocols are used to transport Genomic test results from laboratories to health care organizations.
HL7v2 transmission, using the MLLP protocol, is ubiquitously adopted as a result of healthcare law and remains the only guaranteed transport 
available to support data exchange for Clinical Workflows, especially Lab Orders & Results.

FHIR GenomeX data structures will be transmitted to enable new precision medicine workflows. In the prescribed options EHR integrations w/ Labs 
will continue to support HL7v2 Ordering along with new HTTP based transport options as listed below:

1. HL7v2 Order & Result via embedded FHIR bundle as base 64 string
2. HL7v2 Order & Result via FHIR APIs links: HL7 ORU contains FHIR server link to download the reports through HTTPs.
3. HL7v2 Order & Result via FHIR API polling (batch download)

### 1. HL7 ORU with embedded FHIR bundle as base 64 string

Steps:
* EHR system places a new order through ORM HL7 into lab  
* Lab sends Observation (ORU) with a FHIR bundle as base 64 string embedded in
OBX segment

<object data="genomeX_transport_option_1.svg" type="image/svg+xml"></object>
<br/>

### 2. Hybrid HL7 ORU and FHIR APIs

Steps:
* EHR system places a new order through ORM HL7 into lab  
* Lab sends Observation (ORU) with an HTTP link to FHIR server in OBX segment
* EHR receives HL7 and issues a HTTPs GET request to the FHIR server for the report
* FHIR server returns a report as an HTTPs response


<object data="genomeX_transport_option_2.svg" type="image/svg+xml"></object>
<br/>
<object data="gdx_profiles.svg" type="image/svg+xml"></object>
<br/>

### 3. EHR initiates HL7 Order; Research platform polls FHIR server for report download

Steps:
* EHR system places a new order through ORM HL7 into lab  
* EHR polls periodically and searches for any reports available for order placed
* EHR issues a HTTP GET request to the FHIR server for the report/bundle
* Lab FHIR server returns GenomeX report/bundle as a HTTP response

<object data="genomeX_transport_option_3.svg" type="image/svg+xml"></object>
<br/>

####FHIR servers are recommended to adopt [Smart on FHIR] with asymmetric key profile. SMART on FHIR is an HL7 standard widely supported in healthcare.


<!-- LINKS -->

[Smart on FHIR]:
https://build.fhir.org/ig/HL7/smart-app-launch/client-confidential-asymmetric.html#client-authentication-asymmetric-public-key