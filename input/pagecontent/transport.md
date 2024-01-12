## GenomeX data transport for genomic lab orders and results.

This GenomeX IG describes FHIR resources for genomic test results with the goal of enabling precision medicine workflows.  However, the FHIR resource content described in this IG only describes the *results* from genomic lab.  Integration of order placement is also required to scale genomic lab testing.

This supplemental content is intended to frame the transport options when blending HL7v2 ordering with FHIR results to complete the request/reply exchange between order placers (HCO/EHR) and order fillers (Lab).  The options presented here assume HL7v2 ORM/ORU message exchange is a baseline capability offered by most EHR vendors and Labs.

This supplemental content guide is intended to describe an HL7v2 to FHIR transition architecture.


The content presented under each scenario header below describes the data and transport relationships between the HL7 ORM/ORU messages and the GenomeX FHIR bundle.

1. Order via HL7v2 ORM & GenomeX FHIR bundle base64 encoded via HL7v2 ORU
2. Order via HL7v2 ORM & GenomeX FHIR bundle download via FHIR API URL embedded in the HL7v2 ORU
3. Order via HL7v2 ORM & GenomeX FHIR bundle download via FHIR API polling

> FHIR servers are recommended to adopt [SMART on FHIR](https://build.fhir.org/ig/HL7/smart-app-launch/client-confidential-asymmetric.html#client-authentication-asymmetric-public-key) with asymmetric key profile. SMART on FHIR is an HL7 standard widely supported in healthcare.

###  Order via HL7v2 ORM & GenomeX FHIR bundle base64 encoded in HL7v2 ORU

Steps:
* EHR system places a new order through HL7 ORM into lab  
* Lab sends Observation Result (ORU) with a FHIR bundle as base64 string embedded in
an OBX segment

<div>
<img src="genomeX_transport_option_1.svg" width="70%">
</div>

HL7v2 ORU would contain report bundle as a base64 string in the OBX segment
- OBX-2 = ED (Encapsulated Data)
- OBX-5 = Base 64 string

<div class="example">
MSH|^~\&|<span style="color:red;">&lt;Sending Application&gt;</span>|<span style="color:red;">&lt;Sending Facility&gt;</span>|<span style="color:red;">&lt;Receiving Application&gt;</span>|<span style="color:red;">&lt;Receiving Facility&gt;</span>|20240104093000||ORU^R01|12345678910|T|2.5.1<br>
PID|1||123456789||Last^First||19450912|M|||123 Fake St.^^Chicago^IL^60614<br>
OBR|1|12345678|24abcdef|GTEST^Sample Test1|||20240101|||||||||0123456789^TEST^CLINICIAN^^^^^^^^^^NPI<br>
OBX|1|<span style="color:red;">ED</span>|<span style="color:red;">GENOMEXBUNDLE^Genome X Bundle^TMPLRR</span>||<span style="color:red;">^^PDF^Base64^&lt;Base64 GenomeX bundle&gt;</span>|
</div>

### Order via HL7v2 ORM & GenomeX FHIR bundle download via FHIR API URL embedded in the HL7v2 ORU


Steps:
* EHR system places a new order through HL7 ORM into lab  
* Lab sends Observation Result (ORU) with an HTTP link to FHIR server in an OBX segment
* EHR receives HL7 and issues a HTTPs GET request to the FHIR server for the report
* FHIR server returns a report as an HTTPs response

<div>
<img src="genomeX_transport_option_2.svg" width="70%">
</div>

HL7v2 ORU will contain a reference pointer to FHIR source.
- OBX-2 = RP (Reference Pointer)
- OBX-5 = URL to FHIR resource

Additionally, LOINC code `81247-9^Master HL7 genetic variant reporting panel^LN` should be used.

<div class="example">
MSH|^~\&|<span style="color:red;">&lt;Sending Application&gt;</span>|<span style="color:red;">&lt;Sending Facility&gt;</span>|<span style="color:red;">&lt;Receiving Application&gt;</span>|<span style="color:red;">&lt;Receiving Facility&gt;</span>|20240104093000||ORU^R01|12345678910|T|2.5.1<br>
PID|1||123456789||Last^First||19450912|M|||123 Fake St.^^Chicago^IL^60614<br>
OBR|1|12345678|24abcdef|GTEST^Sample Test1|||20240101|||||||||0123456789^TEST^CLINICIAN^^^^^^^^^^NPI<br>
OBX|1|<span style="color:red;">RP</span>|<span style="color:red;">81247-9^Master HL7 genetic variant reporting panel^LN</span>||<span style="color:red;">&lt;FHIR Server HTTPS URL&gt;</span>|||||F
</div>

### Order via HL7v2 ORM & GenomeX FHIR bundle download via FHIR API polling

Steps:
* EHR system places a new order through HL7 ORM into lab  
* EHR polls periodically and searches for any reports available for order placed, 
using search parameters in the FHIR servers search endpoint
* EHR issues a HTTP GET request to the FHIR server for the report/bundle
* Lab FHIR server returns GenomeX report/bundle as a HTTP response

<div>
<img src="genomeX_transport_option_3.svg" width="70%">
</div>