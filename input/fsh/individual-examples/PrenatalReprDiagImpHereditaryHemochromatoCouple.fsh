Instance: PrenatalReprDiagImpHereditaryHemochromatoCouple
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
* subject = Reference(PrenatalGroupPatientFemaleandPatientMale)
* effectiveDateTime = "2024-06-26"
* performer = Reference(PractitionerLabDirector)
* note[0].text = "Risk not calculated for HFE-associated hereditary hemochromatosis"
* note[+].text = "###What Is HFE-Associated Hereditary Hemochromatosis (HFE-HHC)?\\n\\nHFE-HHC is a common and treatable inherited disease in which the body absorbs and stores too much iron, potentially damaging organs such as the liver, heart, and pancreas. If the disease is diagnosed and treated before symptoms develop, individuals with HFE-HHC typically have a normal lifespan. If the disease is untreated, however, it can lead to fatal liver and heart failure. HFE-HHC is caused by mutations in the _HFE_ gene. \\n\\nThe most common mutations that cause HFE-HHC are C282Y and H63D. Up to 90% of individuals with HFE-HHC have two copies of the C282Y mutation, while up to 8% of patients have C282Y and H63D. Other mutations very rarely cause HFE-HHC.   \\n\\nFor reasons not well understood, the majority of individuals with the genetic mutations that cause HFE-HHC do not develop symptoms of the disease at any point in their lives. For these individuals, simple blood tests can determine whether or not the body is storing too much iron. If iron levels are too high, beginning treatment early can leave a person virtually symptom-free for life.\\n\\nStudies have found that men are more likely to develop symptoms of iron overload than women, perhaps because women\\'s menstrual cycles regularly lower their iron levels. In men who have not been treated for HFE-HHC, the first symptoms of the disease typically begin between the ages of 30 to 50; for untreated women, symptoms usually begin later, after menopause.\\n\\nEarly symptoms often include weakness, abdominal pain, joint pain, weight loss, loss of interest in sex, chest pain, and a gray or bronze coloring to the skin that gets worse over time. Liver disease (either fibrosis or the more serious cirrhosis) is a common problem associated with HFE-HHC. Cirrhosis can lead to fatal liver failure and/or an increased likelihood of developing cancer of the liver.\\n\\nThe heart can also be affected by HFE-HHC, seen as an irregular heartbeat and/or congestive heart failure. Other problems caused by HFE-HHC can include diabetes, arthritis, impotence (in men), early menopause (in women), thyroid problems, and adrenal-gland problems.\\n\\n###How Common Is HFE-HHC?\\n\\nHFE-HHC mutations are extremely common, particularly among Caucasians. Approximately 11% of Caucasians are carriers of the condition. In the general population, 1 in 200 to 1 in 300 has two copies of the C282Y genetic mutation. It is important to note that most individuals who have these genetic mutations do not develop the disease.\\n\\nThe disease is less common among Hispanics, African Americans, Asians, and Native Americans. Roughly 13% of Hispanics, 8.5% of Asians, and 6% of African Americans are carriers for the mild mutation, H63D. An additional 3% of Hispanics, 2.3% of African Americans are carriers of the potentially disease-causing C282Y mutation.\\n\\n## How Is HFE-HHC Treated?\\n\\nIdeally HFE-HHC is treated before the organs of the body are damaged. However, not everyone who has the mutations that cause HFE-HHC develops symptoms or requires treatment. A simple blood test (serum ferritin concentration and transferrin-iron saturation levels) can determine whether the body is absorbing too much iron. When iron reaches a certain threshold, treatment is recommended. If iron levels have not reached that threshold, no treatment is necessary. Blood tests must be repeated periodically to check these iron levels. Early treatment is important to prevent long-term effects of the disease.\\n\\nIf a person has a high level of iron, treatment involves removing a certain quantity of blood at regular intervals. This is known as phlebotomy. Typically phlebotomy is performed frequently, perhaps weekly or twice a week, until certain iron levels are reached. After that, it is performed less frequently, often two to four times a year, indefinitely. This treatment is simple, inexpensive, and safe. An alternative to phlebotomy is removing iron-rich red-blood cells from the blood (erythrocytapheresis) and returning other important components of the blood back to the body. This form of treatment may be helpful for patients who have side effects from phlebotomy or who have heart disease. \\n\\nIf a person is already suffering from symptoms of HFE-HHC, treatment can lessen or relieve some of the symptoms. However, treatment cannot reverse damage to organs such as the heart, liver, or pancreas. Cirrhosis of the liver is unlikely to improve with treatment, although treatment may slow its progression. If liver disease has reached severe levels, liver transplantation may be an option. Those who have any amount of liver damage are advised to avoid alcohol.\\n\\nAll individuals with symptoms of HFE-HHC are advised to avoid taking iron or vitamin C supplements. They are also advised not to eat uncooked shellfish, as they are highly susceptible to a particular kind of bacterial infection.\\n\\n## What Is the Prognosis for a Person with HFE-HHC?\\n\\nThe prognosis for a person with the genetic mutations that cause HFE-HHC is generally good, as the majority of individuals in that situation do not develop symptoms of the disease. Most will not have dangerously elevated levels of iron in their blood, and therefore will not have any iron-overload problems.\\n\\nFor those that do have high iron levels in their blood, beginning treatment before symptoms appear is a critical part of ensuring a long, healthy life. Nearly all symptoms of the disease can be prevented with early and ongoing treatment. If a person with HFE-HHC is treated before he or she develops cirrhosis of the liver, he or she can expect a normal lifespan. Among individuals who already have cirrhosis associated with HFE-HHC, 72% will survive at least five more years and 62% will survive at least 10 more years. Those who already have cirrhosis are at an increased risk for developing a type of liver cancer."
* note[+].text = "HFE-HHC is an adult-onset condition that causes the body to absorb and store too much iron, potentially damaging organs such as the liver, heart, and pancreas. However, the majority of people with the condition do not develop symptoms of the disease at any point in their lives. For those with symptoms, effective treatment is available and can allow for a normal lifespan."
* derivedFrom[0] = Reference(PrenatalVariant1SNPHereditaryHemochromatoPatientFemale)
* derivedFrom[+] = Reference(PrenatalVariant2SNPHereditaryHemochromatoPatientFemale)
* derivedFrom[+] = Reference(PrenatalVariant1SNPHereditaryHemochromatoPatientMale)
* component[0].code = $loinc#81259-4 "Associated phenotype"
* component[=].valueCodeableConcept = $sct#1186847009 "Hemochromatosis type 1"
* component[+].code = $tbd-codes-cs#condition-inheritance
* component[=].valueCodeableConcept = #HP:0000007 "Autosomal recessive inheritance"