## GenomeX data transport for genomic lab orders and results.

  This GenomeX IG describes FHIR resources for genomic test results with the goal of enabling precision medicine workflows.  However, the FHIR resource content described in this IG only describes the *results* from genomic lab.  Integration of order placement is also required to scale genomic lab testing.
 
 This supplemental content is intended to frame the transport options when blending HL7v2 ordering with FHIR results to complete the request/reply exchange between order placers (HCO/EHR) and order fillers (Lab).  This options presented here assume HL7v2 ORM/ORU message exchange is a baseline capability offered by most EHR vendors and Labs.

This supplemental content guide intent is to describe an HL7v2 to FHIR transition architecture.  For a pure FHIR API approach to ordering, see [TODO: Which Ordering IG?]

### 

The content presented under each scenario header below will describe the data and transport relationships between the HL7 ORM/ORU messages and the GenomeX FHIR bundle.

1. Order via HL7v2 ORM & GenomeX FHIR bundle base64 encoded via HL7v2 ORU
2. Order via HL7v2 ORM & GenomeX FHIR bundle download via FHIR API URL the HL7v2 ORU
3. Order via HL7v2 ORM & GenomeX FHIR bundle download via FHIR API polling

### 1. Order via HL7v2 ORM & GenomeX FHIR bundle base64 encoded in HL7v2 ORU

Steps:
* EHR system places a new order through ORM HL7 into lab  
* Lab sends Observation Result (ORU) with a FHIR bundle as base64 string embedded in
OBX segment

<object data="genomeX_transport_option_1.svg" type="image/svg+xml"></object>
<br/>

### 2. Order via HL7v2 ORM & GenomeX FHIR bundle download via FHIR API URL the HL7v2 ORU

Steps:
* EHR system places a new order through ORM HL7 into lab  
* Lab sends Observation Result (ORU) with an HTTP link to FHIR server in OBX segment
* EHR receives HL7 and issues a HTTPs GET request to the FHIR server for the report
* FHIR server returns a report as an HTTPs response


<object data="genomeX_transport_option_2.svg" type="image/svg+xml"></object>
<br/>
<object data="gdx_profiles.svg" type="image/svg+xml"></object>
<br/>

### 3. Order via HL7v2 ORM & GenomeX FHIR bundle download via FHIR API polling

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