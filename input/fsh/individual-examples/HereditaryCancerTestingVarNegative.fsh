Instance: HereditaryCancerTestingVarNegative
InstanceOf: Observation
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* code = $loinc#69548-6 "Genetic variant assessment"
* code.text = "Where testing scenarios are intended to assess the presence or absence of a known set of DNA variants (e.g. tumor profiling using genotyping technology), then the Genetic Variant Assessment is used in conjunction with answer list supports structured communication of these findings. Of note, 'No Call' is different from 'Absent', because 'No Call' did not result in the determination of the marker's presents or absents. This may be due to test failure or specimen specific context which renders the test ineffective."
* status = #final
* category[0] = $observation-category#laboratory "Laboratory"
* category[+] = $v2-0074#GE "Genetics"
* basedOn = Reference(HereditaryCancerTestingServiceRequest)
* partOf = Reference(HereditaryCancerTestingGenomicStudy)
* subject = Reference(PatientFemale)
* performer = Reference(PractitionerPathologist)
* effectiveDateTime = "2021-12-03"
* valueCodeableConcept = $loinc#LA11884-6 "Indeterminate"
* valueCodeableConcept.text = "Variant Assess: Indeterminate"
* method = $loinc#LA26398-0 "Sequencing"
* method.text = "Usually refers to high-throughput, next-generation sequencing methods, although can also refer to traditional capillary-based Sanger sequencing. Advantages: a lot of data at little cost. Disadvantages: short read length; high error rates. Next-Gen Sequencing is currently the most popular method for generating genetic data in general, and for detecting both single-nucleotide and structural variation."
* component[0].code = $tbd-codes-cs#conclusion-string
* component[=].valueString = "Details About Non-Clinically Significant Variants:</b> All individuals carry DNA changes (i.e., variants), and most variants do not increase an individual's risk of cancer or other diseases. When identified, variants of uncertain significance (VUS) are reported. Likely benign variants (Favor Polymorphisms) and benign variants (Polymorphisms) are not reported and available data indicate that these variants most likely do not cause increased cancer risk. Present evidence does not suggest that non-clinically significant variant findings be used to modify patient medical management beyond what is indicated by the personal and family history and any other clinically significant findings."
* component[=].interpretation = $v3-ObservationInterpretation#NEG "Negative"
* component[=].interpretation.text = "An absence finding of the specified component / analyte, organism or clinical sign based on the established threshold of the performed test or procedure."
* component[+].code = $loinc#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept = $genenames#HGNC:11389 "STK11"
* component[+].code = $loinc#48002-0 "Genomic source class [Type]"
* component[=].valueCodeableConcept = $loinc#LA6683-2 "Germline"