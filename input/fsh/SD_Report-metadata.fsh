// Profiles for FHIR resources considered metadata in a genomics report. These include patient, practitioner, and organization.

Profile: GdxPatient
Parent: Patient
Id: gdx-patient
Title: "GDX Patient"
Description: "The patient who has been diagnosed with or is receiving medical treatment for maligant growth or tumor. The patient is addressed  in a genetic/genomic report." 
* identifier 1..* MS
* birthDate MS
* gender MS

Profile: GdxLabOrganization
Parent: Organization
Id: gdx-lab-organization
Title: "GDX Lab Organization"
Description: "Genomic reference lab metadata found in a report."
* identifier 1..* MS
* name MS
* address.line