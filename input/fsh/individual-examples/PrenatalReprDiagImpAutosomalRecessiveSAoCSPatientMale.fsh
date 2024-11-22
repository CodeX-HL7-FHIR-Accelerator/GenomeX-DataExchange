Instance: PrenatalReprDiagImpAutosomalRecessiveSAoCSPatientMale
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2024-09-25T00:01:34.798+00:00"
* meta.source = "#hrQE3dHjuHuJ5zkf"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* extension.url = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-risk-assessment"
* extension.valueReference = Reference(PrenatalReproductivePostRiskAutosomalRecessiveSAoCSPatientMale) "autosomal recessive spastic ataxia of Charlevoix-Saguenay Reproductive Risk"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#GE
* code = $tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(PatientMale)
* effectiveDateTime = "2024-07-09"
* performer = Reference(PractitionerLabDirector)
* note[0].text = "## What Is Autosomal Recessive Spastic Ataxia of Charlevoix-Saguenay?\n\nAutosomal recessive spastic ataxia of Charlevoix-Saguenay (ARSACS) is a progressive inherited condition that affects the body's ability to create a protein called sacsin, normally found in the brain, skin, and muscles. ARSACS is caused by mutations in the _SACS_ gene.\n\nThe first symptom, unsteady gait, typically appears between 12 and 18 months of age, as toddlers begin to walk. Children also develop speech problems due to weak neck and facial muscles. The condition becomes increasingly worse over time, with muscle tension and spasms, difficulty coordinating movements, involuntary eye movements, and muscle wasting. Some people with ARSACS also lose sensation in their arms and legs as the nerves degenerate.\n\nOther symptoms include incontinence, deformities of the fingers and feet, and buildup of fatty tissue on the retina leading to vision problems. Occasionally, the disease also causes leaks in one of the valves that control blood flow through the heart.\n\nMost people with the condition are of normal intelligence and are able to live independently well into adulthood, although they eventually lose the ability to walk.\n\n## How Common Is Autosomal Recessive Spastic Ataxia of Charlevoix-Saguenay?\n\nThe majority of people with ARSACS have ancestry in the Charlevoix-Saguenay region of Quebec, Canada, where the condition affects approximately 1 in 1,500 to 2,000 people. While patients with ARSACS have been reported in other populations, the worldwide incidence is unknown.\n\n## How Is Autosomal Recessive Spastic Ataxia of Charlevoix-Saguenay Treated?\n\nThere is no cure for ARSACS. Treatment focuses on easing the symptoms and postponing major functional disabilities. Physical therapy and anti-spasmodic oral medications can help control muscle spasms, prevent joint and tendon deformities, and preserve muscle function for some time. Low doses of medication can control incontinence. Occupational therapy and adaptive tools such as leg braces can support people with ARSACS in daily tasks such as driving. As the disease progresses, however, people with ARSACS typically lose the ability to perform these tasks. Children with the condition may benefit from speech therapy and other forms of support in school.\n\n## What Is the Prognosis for a Person with Autosomal Recessive Spastic Ataxia of Charlevoix-Saguenay?\n\nPeople with ARSACS become wheelchair-bound at an average age of 41 and commonly die in their fifties."
* note[+].text = "Autosomal recessive spastic ataxia of Charlevoix-Saguenay (ARSACS) affects muscle movement. It causes abnormal tensing of the muscles, difficulty with coordination, muscle wasting, involuntary eye movements, and speech difficulties. The symptoms can begin as early as 12 to 18 months of age and become increasingly worse over time. Most people with the condition require a wheelchair in adulthood and die in their fifties."
* derivedFrom = Reference(PrenatalVariantAutosomalRecessiveSAoCSPatientMale)
* component[0].code = $loinc#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept = $sct#702445005 "ARSACS - autosomal recessive spastic ataxia of Charlevoix-Saguenay"
* component[+].code = $tbd-codes-cs#condition-inheritance
* component[=].valueCodeableConcept = #HP:0000007 "Autosomal recessive inheritance"