// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: GdxVariant
Parent: CGVariant
Description: "GenomeX subset of genomic variant."
* subject 1..1 
* subject only Reference(Patient)
* basedOn only Reference(ServiceRequest)
* performer only Reference(Practitioner or PractitionerRole or Organization)
* component[gene-studied] and component[gene-studied].code and component[gene-studied].value[x] MS
* component[gene-studied] and component[gene-studied].code and component[gene-studied].value[x] MS
* component[variation-code] and component[variation-code].code and component[variation-code].value[x] MS
* component[genomic-hgvs] and component[genomic-hgvs].code and component[genomic-hgvs].value[x] MS
* component[coding-change-type] and component[coding-change-type].code and component[coding-change-type].value[x] MS
* component[molecular-consequence] and component[molecular-consequence].code and component[molecular-consequence].value[x] MS
* component[genomic-source-class] and component[genomic-source-class].code and component[genomic-source-class].value[x] MS
* component[protein-hgvs] and component[protein-hgvs].code and component[protein-hgvs].value[x] MS
* component[amino-acid-change-type] and component[amino-acid-change-type].code and component[amino-acid-change-type].value[x] MS
* component[copy-number] and component[copy-number].code and component[copy-number].value[x] MS
* component[sample-allelic-frequency] and component[sample-allelic-frequency].code and component[sample-allelic-frequency].value[x] MS
* component[transcript-ref-seq] and component[transcript-ref-seq].code and component[transcript-ref-seq].value[x] MS
// * component[allelic-state] and component[allelic-state].code and component[allelic-state].value[x] MS
* status and category and code and subject and effective[x] and effectiveDateTime and value[x] and dataAbsentReason and specimen and component MS

Profile: GdxTherapeuticImplication
Parent: TherapeuticImplication
Description: "GenomeX subset of genomic variant."
* subject 1..1 
* subject only Reference(Patient)
