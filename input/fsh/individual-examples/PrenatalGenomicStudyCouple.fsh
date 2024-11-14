Instance: PrenatalGenomicStudyCouple
InstanceOf: Procedure
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2024-10-02T03:41:34.767+00:00"
* meta.source = "#JVN7S7CW0og8nwN0"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study"
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(PrenatalGenomicStudyAnalysisFactorXiDeficiencyCouple)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(PrenatalGenomicStudyAnalysisGlycogenStorageDiseaseCouple)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(PrenatalGenomicStudyAnalysisHereditaryHemochromatoCouple)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(PrenatalGenomicStudyAnalysisPrimaryHyperoxaluriaCouple)
* status = #completed
* category = $observation-category#laboratory
* subject = Reference(PrenatalGroupPatientFemaleandPatientMale)
* performedDateTime = "2024-06-26"
* reasonCode = $sct#169565003 "Pregnant - planned (finding)"
* note.text = "The <b>Organization Prenatal Carrier Screen</b> utilizes sequencing, maximizing coverage across all DNA regions tested, to help you learn about your chance to have a child with a genetic disease."