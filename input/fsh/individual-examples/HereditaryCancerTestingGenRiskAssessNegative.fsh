Instance: HereditaryCancerTestingGenRiskAssessNegative
InstanceOf: RiskAssessment
Usage: #example
* status = #final
* method.coding.code = #BRCAPRO
* subject = Reference(PatientFemale)
* occurrenceDateTime = "2021-12-03T01:01:01Z"
* basis = Reference(HereditaryCancerTestingOverInterNegative)
* prediction[0].outcome.text = "Prostate"
* prediction[=].probabilityDecimal = 0.16
* prediction[=].whenRange.high = 70 'a' "years"
* prediction[+].outcome.text = "Male Breast"
* prediction[=].probabilityDecimal = 0.012
* prediction[=].whenRange.high = 70 'a' "years"
* prediction[+].outcome.text = "Pancreatic"
* prediction[=].rationale = "Elevated risk"
* prediction[=].whenRange.high = 70 'a' "years"