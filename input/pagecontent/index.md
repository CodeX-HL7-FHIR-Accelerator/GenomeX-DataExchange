
### Background

The HL7 Genomics Reporting FHIR Implementation Guide (GRIG) is very broad for the GenomeX data exchange community. More specific guidance is needed to narrow the scope of the GenomeX data exchange use case.

The GenomeX data exchange (GDX) effort differs from the work of the HL7 Clinical Genomics Working Group (CGWG) in its focus on real-world implementations. The emphasis is on providing a more narrow scope of identifying a starter set of elements that are actionable and minimal for clinical use. It also includes message transport and workflow-related guidance that is currently out of scope for the CGWG.

This FHIR implementation guide (IG) is intended to organize modeling guidance for consensus among the GenomeX data exchange community. It is not intended for ballot at this time, although it may be considered in the future. Parts of the documented findings in this IG may be merged within the GRIG.


### Scope

This first draft will focus on the following:
* Genomics Reporting FHIR IG 2.0.0
* a basic set of data elements usable by providers for diagnosis, treatment, and monitoring
* somatic tests
* oncology-related GRIG profiles - Tumor mutation burden (TMB) and microsatellite instability (MSI)

The following topics may include guidance but are not definitively in-scope at this time:
* therapeutic drug implications
* applicable clinical trials
* germline tests
* genomic operations

### Assumptions and Caveats

* EHR-Lab workflows may vary in a way that obviates the need for some data elements to be included in the report. For example, Some genomics reports will not include expanded patient demographics like name or date of birth. Rather, a patient-related identifier is provided that can be matched by an external system.
* Not all terminologies will be supported

### Approach

The GDX effort has two tracks of activities:
* payload
* transport

The payload sub-group focuses on the content of the genomic report.
The transport group focuses on the messaging protocol established among sending and receiving systems, and which carries the genomic report content, as specified from the payload sub-group.

### Conceptual Diagrams

TO DO: Insert diagram.

#### Genomic Payload

<object data="gdx_profiles.svg" type="image/svg+xml"></object>
<br/>

#### Genomic Data Transport

The sequence diagram is shown below:
<object data="genomeX_transport.svg" type="image/svg+xml"></object>
<br/>
Details for Genomics Data Transport are described [here]
### Credits

Our thanks to the contributors to the CodeX/GenomeX data exchange workstream which drive the guidance in this IG:

* Ellen Anderson - Evernorth
* Howard Anton - Tempus
* Dennis Blair - Evicore
* Beverly Buckta - Pfizer
* Srikar Chamala, Ph.D. - Childrens Hospital of Los Angeles
* Willie Chang - Epic
* James Chen, MD - Tempus
* Arthur Herman - Kaiser Permanente
* Scott Isaac - Epic
* Charles Keenan - Phenotips
* Spenser Klebben - Foundation Medicine
* Vitalia Muzyka - Foundation Medicine
* James Patterson - MITRE
* Vasil Petyev - Epic
* Brian Reuter - Tempus
* May Terry - MITRE

<!-- LINKS -->

[here]:
pagecontent/transport.md