Instance: PrenatalReproductivePostRiskFactorXiDeficiencyCouple
InstanceOf: RiskAssessment
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-09-25T00:02:13.030+00:00"
* meta.source = "#mzuK1EHcvMPipAda"
* status = #final
* subject = Reference(PrenatalGroupPatientFemaleandPatientMale)
* occurrenceDateTime = "2024-06-26"
* basis[0] = Reference(PrenatalResidualRiskFactorXiDeficiencyPatientFemale)
* basis[+] = Reference(PatientFemale)
* basis[+] = Reference(PrenatalResidualRiskFactorXiDeficiencyPatientMale)
* basis[+] = Reference(PatientMale)
* prediction.outcome.text = "Reproductive risk for inheriting a disease-causing mutation for factor XI deficiency after Prenatal test"
* prediction.probabilityDecimal = 0.0000050050050045035165
* note.text = "Residual risk is an estimate of each patient's post-test likelihood of being a carrier, while the reproductive risk represents an estimated likelihood that the patients' future children could inherit each disease. These risks are inherent to all carrier-screening tests, may vary by ethnicity, are predicated on a negative family history, and are present even given a negative test result. Inaccurate reporting of ethnicity may cause errors in risk calculation. In addition, average carrier rates are estimated using incidence or prevalence data from published scientific literature and/or reputable databases, where available, and are incorporated into residual risk calculations for each population/ethnicity. When population-specific data is not available for a condition, average worldwide incidence or prevalence is used. Further, incidence and prevalence data are only collected for the specified phenotypes (which include primarily the classic or severe forms of disease) and may not include alternate or milder disease manifestations associated with the gene. Actual incidence rates, prevalence rates, and carrier rates, and therefore actual residual risks, may be higher or lower than the estimates provided. Carrier rates, incidence/prevalence, and/or residual risks are not provided for some genes with biological or heritable properties that would make these estimates inaccurate. See the full clinical report for interpretation and details."