/*
 * Genomics-related profiles.
 */


Profile: GdxTherapeuticImplication
Parent: CGTherapeuticImplication
Title: "GDX Therapeutic Implication"
Description: "GenomeX subset of genomic therapeutic implication profile."
* subject 1..1 
* subject only Reference(GdxPatient)

* component[evidence-level] MS
* component[medication-assessed] MS
* derivedFrom MS 
