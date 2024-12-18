Instance: PrenatalDiagImpHereditaryHemochromatoPatientFemale
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-09-25T00:02:13.030+00:00"
* meta.source = "#mzuK1EHcvMPipAda"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(PatientFemale)
* effectiveDateTime = "2024-06-26"
* performer = Reference(PractitionerLabDirector)
* note.text = "Risk not calculated for HFE-associated hereditary hemochromatosis"
* derivedFrom[0] = Reference(PrenatalVariant1SNPHereditaryHemochromatoPatientFemale)
* derivedFrom[+] = Reference(PrenatalVariant2SNPHereditaryHemochromatoPatientFemale)
* component[0].code = $loinc#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept = $sct#782964007 "Genetic disease (disorder)"
* component[+].code = $loinc#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept = $sct#1186847009 "Hemochromatosis type 1"
* component[+].code = $tbd-codes-cs#condition-inheritance
* component[=].valueCodeableConcept = #HP:0000007 "Autosomal recessive inheritance"