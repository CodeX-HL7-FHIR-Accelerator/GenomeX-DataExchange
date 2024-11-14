Instance: PrenatalGenomicReportPatientFemale
InstanceOf: DiagnosticReport
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-report"
* extension[0].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-reference"
* extension[=].valueReference = Reference(PrenatalGenomicStudyPatientFemale) "Genomic study"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-risk-assessment"
* extension[=].valueReference = Reference(PrenatalResidualRiskFactorXiDeficiencyPatientFemale) "Genomic study"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-risk-assessment"
* extension[=].valueReference = Reference(PrenatalResidualRiskGlycogenStorageDiseasePatientFemale) "Genomic study"
* extension[+].url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-risk-assessment"
* extension[=].valueReference = Reference(PrenatalResidualRiskPrimaryHyperoxaluriaPatientFemale) "Genomic study"
* basedOn = Reference(PrenatalServiceRequestCouple)
* status = #final
* category = $v2-0074#GE "Genetics"
* code = $loinc#51969-4 "Genetic analysis report"
* subject = Reference(PatientFemale)
* effectiveDateTime = "2024-06-26"
* performer[0] = Reference(Organization)
* performer[+] = Reference(PractitionerLabDirector)
* specimen = Reference(PrenatalSpecimenPatientFemale)
* result[0] = Reference(PrenatalVariantFactorXiDeficiencyPatientFemale)
* result[+] = Reference(PrenatalVariantGlycogenStorageDiseaseTypePatientFemale)
* result[+] = Reference(PrenatalVariant1SNPHereditaryHemochromatoPatientFemale)
* result[+] = Reference(PrenatalVariant2SNPHereditaryHemochromatoPatientFemale)
* result[+] = Reference(PrenatalVariantPrimaryHyperoxaluriaPatientFemale)
* result[+] = Reference(PrenatalVariant1FragileXSyndromePatientFemale)
* result[+] = Reference(PrenatalVariant2FragileXSyndromePatientFemale)
* result[+] = Reference(PrenatalDiagImpFactorXiDeficiencyPatientFemale) "Normal genetic findings (finding)"
* result[+] = Reference(PrenatalDiagImpGlycogenStorageDiseasePatientFemale) "Normal genetic findings (finding)"
* result[+] = Reference(PrenatalDiagImpHereditaryHemochromatoPatientFemale) "Genetic disease (disorder)"
* result[+] = Reference(PrenatalDiagImpPrimaryHyperoxaluriaPatientFemale) "Normal genetic findings (finding)"
* result[+] = Reference(PrenatalDiagImpFragileXSyndromePatientFemale) "Genetic disorder carrier (finding)"
* conclusionCode = $loinc#LA6576-8 "Positive"
* conclusion = "Subject's offspring are at increased risk for inheriting the following genetic diseases: HFE-associated hereditary hemochromatosis, and fragile X syndrome"