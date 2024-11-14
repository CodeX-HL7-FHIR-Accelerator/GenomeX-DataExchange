Instance: PrenatalGenomicStudyPatientMale
InstanceOf: Procedure
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2024-10-02T03:41:29.698+00:00"
* meta.source = "#DEqMJP5Koyub2naR"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study"
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(PrenatalGenomicStudyAnalysisAutosomalRecessiveSAoCSPatientMale)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(PrenatalGenomicStudyAnalysisFamilialHyperinsulinismPatientMale)
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext"
* extension[=].valueReference = Reference(PrenatalGenomicStudyAnalysisAlpha1ADPatientMale)
* status = #completed
* category = $observation-category#laboratory
* subject = Reference(PatientMale)
* performedDateTime = "2024-07-09"
* reasonCode = $sct#169565003 "Pregnant - planned (finding)"
* note.text = "The <b>Organization Prenatal Carrier Screen</b> utilizes sequencing, maximizing coverage across all DNA regions tested, to help you learn about your chance to have a child with a genetic disease."