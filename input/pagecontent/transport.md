### GenomeX data transport

Precision Medicine workflows require sharing complex data types with many relationship.
HL7v2 (MLLP) transmission is universally adopted for scaled Lab Ordering.

### Target Options
FHIR GenomeX data structures are transmitted to enable new precision medicine workflows.
EHR integrations w/ Labs continue to support HL7v2 Ordering.

* HL7v2 Order & Result via embedded FHIR bundle as base 64 string
* HL7v2 Order & Result via FHIR APIs links: HL7 ORU contains FHIR server link to download the reports through HTTPs.
* HL7v2 Order & Result via FHIR API polling (batch download)

####HL7 ORU with embedded FHIR bundle as base 64 string

Steps:
* EHR system places a new order through ORM HL7 into lab  
* Lab sends Observation (ORU) with a FHIR bundle as base 64 string embedded in
OBX segment

<object data="genomeX_translport_option_1.svg" type="image/svg+xml"></object>
<br/>

####Hybrid HL7 ORU and FHIR APIs

Steps:
* EHR system places a new order through ORM HL7 into lab  
* Lab sends Observation (ORU) with an HTTP link to FHIR server in OBX segment
* EHR receives HL7 and issues a HTTPs GET request to the FHIR server for the report
* FHIR server returns a report as an HTTPs response


<object data="genomeX_translport_option_1.svg" type="image/svg+xml"></object>
<br/>

####EHR initiates HL7 Order; Research platform polls FHIR server for report download

Steps:
* EHR system places a new order through ORM HL7 into lab  
* EHR polls periodically and searches for any reports available for order placed
* EHR issues a HTTP GET request to the FHIR server for the report/bundle
* Lab FHIR server returns GenomeX report/bundle as a HTTP response

<object data="genomeX_translport_option_1.svg" type="image/svg+xml"></object>
<br/>

###Smart on FHIR 