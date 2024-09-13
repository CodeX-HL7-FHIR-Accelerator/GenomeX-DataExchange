Profile: GdxVariant
Parent: CGVariant
Title: "GDX Variant"
Description: "GenomeX subset of variant profile."
* subject 1..1 
* subject only Reference(GdxPatient)
* basedOn only Reference(GdxServiceRequest)
* performer only Reference(Practitioner or PractitionerRole or Organization)

* status and category and code and subject and effective[x] and effectiveDateTime and value[x] and dataAbsentReason and specimen and component MS

* component[reference-sequence-assembly] and component[reference-sequence-assembly].code and component[reference-sequence-assembly].value[x] MS

* component[gene-studied] and component[gene-studied].code and component[gene-studied].value[x] MS

// JP Commented out to enable migration to GRIG STU3
// * component[transcript-ref-seq] and component[transcript-ref-seq].code and component[transcript-ref-seq].value[x] MS

// KP - NOT IN THE SPREADSHEET (Master_5) * component[genomic-hgvs] and component[genomic-hgvs].code and component[genomic-hgvs].value[x] MS
// JP Commented out to enable migration to GRIG STU3
// * component[coding-hgvs] and component[coding-hgvs].code and component[coding-hgvs].value[x] MS
// * component[protein-hgvs] and component[protein-hgvs].code and component[protein-hgvs].value[x] MS

* component[coding-change-type] and component[coding-change-type].code and component[coding-change-type].value[x] MS

// JP Commented out to enable migration to GRIG STU3
// * component[amino-acid-change-type] and component[amino-acid-change-type].code and component[amino-acid-change-type].value[x] MS
// * component[molecular-consequence] and component[molecular-consequence].code and component[molecular-consequence].value[x] MS

// KP - NOT IN THE SPREADSHEET (Master_5) * component[variation-code] and component[variation-code].code and component[variation-code].value[x] MS
// KP - NOT IN THE SPREADSHEET (Master_5) * component[genomic-source-class] and component[genomic-source-class].code and component[genomic-source-class].value[x] MS
// KP - NOT IN THE SPREADSHEET (Master_5) * component[sample-allelic-frequency] and component[sample-allelic-frequency].code and component[sample-allelic-frequency].value[x] MS

// * component[allelic-state] and component[allelic-state].code and component[allelic-state].value[x] MS
