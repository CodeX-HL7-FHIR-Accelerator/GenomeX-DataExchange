Instance: PrenatalReproductivePreRiskAutosomalRecessiveSAoCSPatientMale
InstanceOf: RiskAssessment
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-09-25T00:01:34.798+00:00"
* meta.source = "#hrQE3dHjuHuJ5zkf"
* status = #final
* subject = Reference(PatientMale)
* occurrenceDateTime = "2024-07-09"
* basis[0] = Reference(PrenatalResidualRiskAutosomalRecessiveSAoCSPatientMale)
* basis[+] = Reference(PatientMale)
* prediction.outcome.text = "Risk for inheriting a disease-causing mutation for autosomal recessive spastic ataxia of Charlevoix-Saguenay before Prenatal test"
* prediction.probabilityDecimal = 0.000001
* note.text = "Residual risk is an estimate of each patient's post- test likelihood of being a carrier, while the reproductive risk represents an estimated likelihood that the patients' future children could inherit each disease. These risks are inherent to all carrier-screening tests, may vary by ethnicity, are predicated on a negative family history, and are present even given a negative test result. Inaccurate reporting of ethnicity may cause errors in risk calculation. In addition, average carrier rates are estimated using incidence or prevalence data from published scientific literature and/or reputable databases, where available, and are incorporated into residual risk calculations for each population/ethnicity. When population-specific data is not available for a condition, average worldwide incidence or prevalence is used. Further, incidence and prevalence data are only collected for the specified phenotypes (which include primarily the classic or severe forms of disease) and may not include alternate or milder disease manifestations associated with the gene. Actual incidence rates, prevalence rates, and carrier rates, and therefore actual residual risks, may be higher or lower than the estimates provided. Carrier rates, incidence/prevalence, and/or residual risks are not provided for some genes with biological or heritable properties that would make these estimates inaccurate. See the full clinical report for interpretation and details. The reproductive risk presented is based on a hypothetical pairing with a partner of the same ethnic group."