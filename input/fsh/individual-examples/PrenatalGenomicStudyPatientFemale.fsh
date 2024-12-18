Instance: PrenatalGenomicStudyPatientFemale
InstanceOf: Procedure
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2024-10-02T03:41:34.767+00:00"
* meta.source = "#JVN7S7CW0og8nwN0"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study"
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(PrenatalGenomicStudyAnalysisPrimaryHyperoxaluriaPatientFemale)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(PrenatalGenomicStudyAnalysisGlycogenStorageDiseasePatientFemale)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(PrenatalGenomicStudyAnalysisHereditaryHemochromatoPatientFemale)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(PrenatalGenomicStudyAnalysisFactorXiDeficiencyPatientFemale)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(PrenatalGenomicStudyAnalysisFragileXSyndromePatientFemale)
* status = #completed
* category = $observation-category#laboratory
* subject = Reference(PatientFemale)
* performedDateTime = "2024-06-26"
* reasonCode = $sct#169565003 "Pregnant - planned (finding)"
* note.text = "The <b>Organization Prenatal Carrier Screen</b> utilizes sequencing, maximizing coverage across all DNA regions tested, to help you learn about your chance to have a child with a genetic disease."