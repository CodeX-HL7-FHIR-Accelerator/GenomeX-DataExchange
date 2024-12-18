Instance: HereditaryCancerTestingGenomicStudy
InstanceOf: Procedure
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study"
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension.valueReference = Reference(HereditaryCancerTestingGenomicStudyAnalysis)
* status = #completed
* category = $observation-category#laboratory "Laboratory"
* code = $genomic-study-type-cs#struc-var "Structural variation detection"
* code.text = "HereditaryCancerTesting™ Hereditary Cancer Test"
* subject = Reference(PatientFemale)
* performedDateTime = "2023-02-02"
* reasonCode = $sct#718220008 "Hereditary breast and ovarian cancer syndrome (disorder)"
* note[0].text = "Details About Non-Clinically Significant Variants: All individuals carry DNA changes (i.e., variants), and most variants do not increase an individual's risk of cancer or other diseases. When identified, variants of uncertain significance (VUS) are reported. Likely benign variants (Favor Polymorphisms) and benign variants (Polymorphisms) are not reported and available data indicate that these variants most likely do not cause increased cancer risk. Present evidence does not suggest that non-clinically significant variant findings be used to modify patient medical management beyond what is indicated by the personal and family history and any other clinically significant findings."
* note[+].text = "Variant Classification: Organization's myVisionTM Variant Classification Program performs ongoing evaluations of variant classifications. In certain cases, healthcare providers may be contacted for more clinical information or to arrange family testing to aid in variant classification. When new evidence about a variant is identified and determined to result in clinical significance and management change, that information will automatically be made available to the healthcare provider through an amended report."