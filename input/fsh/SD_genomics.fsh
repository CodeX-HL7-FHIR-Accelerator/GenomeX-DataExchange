/*
 * Genomics-related profiles.
 */

Profile:    GenomicsReport
Parent:     CGReport
Id:         gdx-genomics-report
Title:      "Genomics Report Profile"
Description:    "Genomic analysis summary report. The report may include one or more tests, with two distinct test types. The first type is a targeted mutation test, where a specific mutation on a specific gene is tested for. The result is either positive or negative for that mutation. The second type is a more general test for variants. This type of test returns the identity of variants found in a certain region of the genome."
* ^extension[FMM].valueInteger = 1
* category[Genetics].coding 1..1  // To prevent the message "The repeating element has a pattern. The pattern will apply to all the repeats (this has not been clear to all users)"
* subject only Reference(GdxPatient)
* result[variant] only Reference(GdxVariant)
* status and category and code and subject and effective[x] and effectiveDateTime and issued and performer and result and specimen MS

Profile: GdxVariant
Parent: CGVariant
Title: "GDX Variant"
Description: "GenomeX subset of genomic variant."
* subject 1..1 
* subject only Reference(GdxPatient)
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
* component[sample-allelic-frequency] and component[sample-allelic-frequency].code and component[sample-allelic-frequency].value[x] MS
* component[transcript-ref-seq] and component[transcript-ref-seq].code and component[transcript-ref-seq].value[x] MS
// * component[allelic-state] and component[allelic-state].code and component[allelic-state].value[x] MS
* status and category and code and subject and effective[x] and effectiveDateTime and value[x] and dataAbsentReason and specimen and component MS

Profile: GdxDiagnosticImplication
Parent: CGDiagnosticImplication
Title: "GDX Diagnostic Implication"
Description: "GenomeX subset of genomic diagnostic implication profile."
* subject 1..1 
* subject only Reference(GdxPatient)

Profile: GdxTherapeuticImplication
Parent: CGTherapeuticImplication
Title: "GDX Therapeutic Implication"
Description: "GenomeX subset of genomic therapeutic implication profile."
* subject 1..1 
* subject only Reference(GdxPatient)
