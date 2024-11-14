### Building a Prenatal Carrier Screening Report: An Example

Carrier screening reports introduce additional complexity to genomics reporting. Carrier screening may report variant, zygosity, and reproductive risk results for a single prospective parent, or for two reproductive partners jointly. A carrier screening report focuses on the risk that the hypothetical child of a single parent or partnership inherits certain germline genetic diseases. If representing a single patient’s carrier status, the report is represented as a single Genomics Report. However, if representing two patients in a partnership, the report consists of one Genomics Report for each respective parent, as well as one additional shared Genomics Report which extends the other two in addition to surfacing results deriving from the base results of both prospective parents. There are multiple reasons for this design. One is to avoid surfacing observations from multiple patients under a single report. As a principle, each FHIR resource should unambiguously belong to a single patient. This section introduces the challenges of joint carrier screening reporting and outlines measures to address them. Furthermore, many health systems cannot store data for patients outside their own system. In this case, the reproductive partner's personally identifiable information may be anonymized. Additionally, this design allows the reports to be split in the case of the reproductive partners' separation.

#### Example Single Patient Report

Here is a sample prenatal carrier screening report for a single patient.

<img src="PrenatalReport.pdf" alt="Carrier Screening Report" style="max-width: 100%; height: auto;">

##### Example FHIR Single Prenatal Carrier Screening Report

The following diagram gives a visual representation for how FHIR resources based on the above sample report relate to each other. Note that only one genomic report is created—while this report contains resources pertaining both to the prospective parent and a hypothetical child, the patient is the subject of all resources. This is because any risk assessments or diagnostic implications are considered here in a 'reproductive' context.

<img src="SinglePrenatalERD.pdf" alt="Carrier Screening Report" style="max-width: 100%; height: auto;">

##### Example FHIR Single Prenatal Carrier Screening Instances

The germline GenomicsReport which connects to all the FHIR Genomics instances for this detailed germline example is [here](DiagnosticReport-PrenatalGenomicReportPatientMale.html). Look in the table below for just those profiles of interest. (The numbers in the 'Label' column correspond to the numbers in the figures up above).

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th>Label</th>
      <th>Resource/Profile</th>
      <th>Description of germline usage</th>
      <th>Example(s)</th>
      <th>Example Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-report.html">Genomics Report</a></td>
      <td>Primary container of the overall report, including a report conclusion. In a partnered report, one overarching genomics report will "extent" two derivative genomics reports—one for each patient / partner. In a single report, one single genomics report will encompass all reported results.</td>
      <td><a href="DiagnosticReport-PrenatalGenomicReportPatientMale.html">PrenatalGenomicReportPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>2</td>
      <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
      <td>The genomics report references the subject of the report, invariably the patient. Although a carrier screening report may pertain to a patient's hypothetical future child, as a rule, hospital systems store results for concrete patients. Thus the most appropriate subject for genomics reporting remains the prospective parent.</td>
      <td><a href="Patient-PatientMale.html">PatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>3</td>
      <td><a href="http://hl7.org/fhir/R4/specimen.html">Specimen</a></td>
      <td>The genomics report references specimens that this report is based on.</td>
      <td><a href="Specimen-PrenatalSpecimenPatientMale.html">PrenatalSpecimenPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>4</td>
      <td><a href="http://hl7.org/fhir/R4/task.html">Task</a></td>
      <td>The genomics report references follow up recommendations for the patient(s).</td>
      <td><a href="Task-PrenatalRecommendedFollowup1PatientMale.html">PrenatalRecommendedFollowup1PatientMale</a>, <a href="Task-PrenatalRecommendedFollowup2PatientMale.html">PrenatalRecommendedFollowup2PatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>5</td>
      <td><a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></td>
      <td>The genomics report refers to the medical professional that ordered the reported test.</td>
      <td><a href="Practitioner-PractitionerOrderingProvider.html">OrderingPractitioner</a></td>
      <td></td>
    </tr>
    <tr>
      <td>6</td>
      <td><a href="http://hl7.org/fhir/R4/organization.html">Organization</a></td>
      <td>The genomics report refers to the organization that performed the reported test.</td>
      <td><a href="Organization.html">Organization</a></td>
      <td></td>
    </tr>
    <tr>
      <td>7</td>
      <td><a href="https://www.hl7.org/fhir/r4/riskassessment.html">RiskAssessment</a></td>
      <td>The genomics report references reproductive risk assessments, which represent the likelihood the patient's (or patients') future children could inherit a given disease. These risk assessments are each linked from a diagnostic implication resource using the 'Genomic Risk Assessment' extension.</td>
      <td><a href="RiskAssessment-PrenatalReproductivePostRiskAlpha1ADPatientMale.html">PrenatalReproductivePostRiskAlpha1ADPatientMale</a>, <a href="RiskAssessment-PrenatalReproductivePostRiskAutosomalRecessiveSAoCSPatientMale.html">PrenatalReproductivePostRiskAutosomalRecessiveSAoCSPatientMale</a>, <a href="RiskAssessment-PrenatalReproductivePostRiskFamilialHyperinsulinismPatientMale.html">PrenatalReproductivePostRiskFamilialHyperinsulinismPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>8</td>
      <td><a href="https://www.hl7.org/fhir/r4/riskassessment.html">RiskAssessment</a></td>
      <td>The genomics report also references <i>before testing</i> reproductive risk assessments, which represent the prior likelihood that the patient's (or patients') future children could have inherited a given disease before the given test's results had been evaluated.</td>
      <td><a href="RiskAssessment-PrenatalReproductivePreRiskAlpha1ADPatientMale.html">PrenatalReproductivePreRiskAlpha1ADPatientMale</a>, <a href="RiskAssessment-PrenatalReproductivePreRiskAutosomalRecessiveSAoCSPatientMale.html">PrenatalReproductivePreRiskAutosomalRecessiveSAoCSPatientMale</a>, <a href="RiskAssessment-PrenatalReproductivePreRiskFamilialHyperinsulinismPatientMale.html">PrenatalReproductivePreRiskFamilialHyperinsulinismPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>9</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-diagnostic-implication.html">Diagnostic Implication</a></td>
      <td>The genomics report can include various types of genomic annotations such as diagnostic implications related to identified variants. These Diagnostic Implications represent a diagnosis of the given patient as a carrier of a given disease.</td>
      <td><a href="Observation-PrenatalDiagImpAlpha1ADPatientMale.html">PrenatalDiagImpAlpha1ADPatientMale</a>, <a href="Observation-PrenatalDiagImpAutosomalRecessiveSAoCSPatientMale.html">PrenatalDiagImpAutosomalRecessiveSAoCSPatientMale</a>, <a href="Observation-PrenatalDiagImpFamilialHyperinsulinismPatientMale.html">PrenatalDiagImpFamilialHyperinsulinismPatientMale</a></td>
      <td>Variant annotation knowledgebases generally differ in the types of annotations they supply. Different labs can potentially report different annotations. Annotations supplied by a lab can become out of date as genomics knowledge advances.</td>
    </tr>
    <tr>
      <td>10</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-variant.html">Variant</a></td>
      <td>The genomics report can reference variants and other findings identified via testing.</td>
      <td><a href="Observation-PrenatalVariant1SNPAlpha1AntitrypsinDeficiePatientMale.html">PrenatalVariant1SNPAlpha1AntitrypsinDeficiePatientMale</a>, <a href="Observation-PrenatalVariantAutosomalRecessiveSAoCSPatientMale.html">PrenatalVariantAutosomalRecessiveSAoCSPatientMale</a>, <a href="Observation-PrenatalVariantFamilialHyperinsulinismAbPatientMale.html">PrenatalVariantFamilialHyperinsulinismAbPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>11</td>
      <td><a href="https://www.hl7.org/fhir/r4/riskassessment.html">RiskAssessment</a></td>
      <td>The genomics report references residual risk assessments, which represent the patient's post-test likelihood of being a carrier of a given disease.</td>
      <td><a href="RiskAssessment-PrenatalResidualRiskAlpha1ADPatientMale.html">PrenatalResidualRiskAlpha1ADPatientMale</a>, <a href="RiskAssessment-PrenatalResidualRiskAutosomalRecessiveSAoCSPatientMale.html">PrenatalResidualRiskAutosomalRecessiveSAoCSPatientMale</a>, <a href="RiskAssessment-PrenatalResidualRiskFamilialHyperinsulinismPatientMale.html">PrenatalResidualRiskFamilialHyperinsulinismPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>12</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-diagnostic-implication.html">Diagnostic Implication</a></td>
      <td>The genomics report also references Reproductive Diagnostic Implications, representing a conceptual reproductive diagnosis of a future child with a given disease. This resource is important to represent because it is tied to a Risk Assessment resource which quantifies hypothetical offspring's risk of inheriting the disease.</td>
      <td><a href="Observation-PrenatalReprDiagImpAlpha1ADPatientMale.html">PrenatalReprDiagImpAlpha1ADPatientMale</a>, <a href="Observation-PrenatalReprDiagImpAutosomalRecessiveSAoCSPatientMale.html">PrenatalReprDiagImpAutosomalRecessiveSAoCSPatientMale</a>, <a href="Observation-PrenatalReprDiagImpFamilialHyperinsulinismPatientMale.html">PrenatalReprDiagImpFamilialHyperinsulinismPatientMale</a></td>
      <td>Variant annotation knowledgebases generally differ in the types of annotations they supply. Different labs can potentially report different annotations. Annotations supplied by a lab can become out of date as genomics knowledge advances.</td>
    </tr>
    <tr>
      <td>13</td>
      <td><a href="http://hl7.org/fhir/R4/servicerequest.html">Service Request</a></td>
      <td>The genomics report references orders that lead to the testing being reported.</td>
      <td><a href="ServiceRequest-PrenatalServiceRequestPatientMale.html">PrenatalServiceRequestPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>14</td>
      <td><a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></td>
      <td>The genomics report references a results interpreter / lab director.</td>
      <td><a href="Practitioner-KarlaBowles.html">PractionerKarlaBowles</a></td>
      <td></td>
    </tr>
    <tr>
      <td>15</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-study-analysis.html">Genomic Study Analysis</a></td>
      <td>Each genomics report's referenced genomic study can be comprised of one or more (typically many) genomic study analyses that detail the testing procedures performed. Each of these genomic analyses represents a single disease, conserving the disease-level reporting inherent in the reporting payload.</td>
      <td><a href="Procedure-PrenatalGenomicStudyAnalysisAlpha1ADPatientMale.html">PrenatalGenomicStudyAnalysisAlpha1ADPatientMale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisAutosomalRecessiveSAoCSPatientMale.html">PrenatalGenomicStudyAnalysisAutosomalRecessiveSAoCSPatientMale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisFamilialHyperinsulinismPatientMale.html">PrenatalGenomicStudyAnalysisFamilialHyperinsulinismPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>16</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-study.html">Genomics Study</a></td>
      <td>The genomics report can reference details of the genomic study that was performed in order to identify variants / haplotypes / genotypes / biomarkers. There will typically be a single genomic study resource per report—each of these genomic study resources will reference all &lt;i&gt;derivative&lt;/i&gt; genomic study analysis resources.</td>
      <td><a href="Procedure-PrenatalGenomicStudyPatientMale.html">PrenatalGenomicStudyPatientMale</a></td>
      <td>Raw genomic data files such as VCF generally contain far more data than that communicated in the report. BED files can precisely define regions of the genome that were studied or deemed uncallable.</td>
    </tr>
  </tbody>
</table>

--------------------------------------------------------

#### Example Partnered Patient Report

Although the example prenatal carrier screening report above shows a single report, the fields used are still applicable in a partnered report. As you will see in the following entity relationship diagram (ERD), the differences between single and partnered reports lie mostly in the arrangement, organization, and interdependencies of the FHIR resources. Keep in mind that although three Genomic Report resource instances are created for each partnered report (one for each partner and one for their combined results), the prenatal report hierarchy allows for one single overarching report to be sent to a hospital system as the definitive report signed off by the lab.

<img src="PartneredPrenatalERD.pdf" alt="Carrier Screening Report" style="max-width: 100%; height: auto;">

##### Example FHIR Partnered Prenatal Carrier Screening Instances

The germline GenomicsReport which connects to all the FHIR Genomics instances for this detailed germline example is [here](DiagnosticReport-PrenatalGenomicReportCouple.html). Look in the table below for just those profiles of interest. (The numbers in the 'Label' column correspond to the numbers in the figures up above).

<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th>Label</th>
      <th>Resource/Profile</th>
      <th>Description of germline usage</th>
      <th>Example(s)</th>
      <th>Example Notes</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-report.html">Genomics Report</a></td>
      <td>Primary container of the overall report, including a report conclusion. In a partnered report, one overarching genomics report will "extend" two derivative genomics reports—one for each patient / partner. In a single report, one single genomics report will encompass all reported results.</td>
      <td><a href="DiagnosticReport-PrenatalGenomicReportCouple.html">PrenatalGenomicReportCouple</a>, <a href="DiagonistcReport-PrenatalGenomicReportCouple.html">PrenatalGenomicReportCouple</a>, <a href="DiagnosticReport-PrenatalGenomicReportPatientMale.html">PrenatalGenomicReportPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>2</td>
      <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
      <td>The genomics report references the subject of the report, invariably the patient. Although a carrier screening report may pertain to a patient's hypothetical future child, as a rule, hospital systems store results for concrete patients. Thus the most appropriate subject for genomics reporting remains the prospective parent.</td>
      <td><a href="Patient-PatientFemale.html">PatientFemale</a>, <a href="Patient-PatientMale.html">PatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>3</td>
      <td><a href="http://hl7.org/fhir/R4/specimen.html">Specimen</a></td>
      <td>The genomics report references specimens that this report is based on.</td>
      <td><a href="Specimen-PrenatalSpecimenPatientFemale.html">PrenatalSpecimenPatientFemale</a>, <a href="Specimen-PrenatalSpecimenPatientMale.html">PrenatalSpecimenPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>4</td>
      <td><a href="http://hl7.org/fhir/R4/task.html">Task</a></td>
      <td>The genomics report references follow up recommendations for the patient(s).</td>
      <td><a href="Task-PrenatalRecommendedFollowup1PatientFemale.html">PrenatalRecommendedFollowup1PatientFemale</a>, <a href="Task-PrenatalRecommendedFollowup1PatientMale.html">PrenatalRecommendedFollowup1PatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>5</td>
      <td><a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></td>
      <td>The genomics report refers to the medical professional that ordered the reported test.</td>
      <td><a href="Practitioner-PractitionerOrderingProvider.html">OrderingPractitioner</a></td>
      <td></td>
    </tr>
    <tr>
      <td>6</td>
      <td><a href="http://hl7.org/fhir/R4/organization.html">Organization</a></td>
      <td>The genomics report refers to the organization that performed the reported test.</td>
      <td><a href="Organization.html">Organization</a></td>
      <td></td>
    </tr>
    <tr>
      <td>7</td>
      <td><a href="https://www.hl7.org/fhir/r4/riskassessment.html">RiskAssessment</a></td>
      <td>The genomics report references reproductive risk assessments, which represent the likelihood the patient's (or patients') future children could inherit a given disease. These risk assessments are each linked from a diagnostic implication resource using the 'Genomic Risk Assessment' extension.</td>
      <td><a href="RiskAssessment-PrenatalReproductivePostRiskFactorXiDeficiencyCouple.html">PrenatalReproductivePostRiskFactorXiDeficiencyCouple</a></td>
      <td></td>
    </tr>
    <tr>
      <td>8</td>
      <td><a href="https://www.hl7.org/fhir/r4/riskassessment.html">RiskAssessment</a></td>
      <td>The genomics report also references <i>before testing</i> reproductive risk assessments, which represent the prior likelihood that the patient's (or patients') future children could have inherited a given disease before the given test's results had been evaluated.</td>
      <td><a href="RiskAssessment-PrenatalReproductivePreRiskFactorXiDeficiencyCouple.html">PrenatalReproductivePreRiskFactorXiDeficiencyCouple</a></td>
      <td></td>
    </tr>
    <tr>
      <td>9</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-diagnostic-implication.html">Diagnostic Implication</a></td>
      <td>The genomics report can include various types of genomic annotations such as diagnostic implications related to identified variants. These Diagnostic Implications represent a diagnosis of the given patient as a carrier of a given disease.</td>
      <td><a href="Observation-PrenatalDiagImpFactorXiDeficiencyPatientFemale.html">PrenatalDiagImpFactorXiDeficiencyPatientFemale</a>, <a href="Observation-PrenatalDiagImpFactorXiDeficiencyPatientMale.html">PrenatalDiagImpFactorXiDeficiencyPatientMale</a>, <a href="Observation-PrenatalDiagImpFragileXSyndromePatientFemale.html">PrenatalDiagImpFragileXSyndromePatientFemale</a>, <a href="Observation-PrenatalDiagImpGlycogenStorageDiseasePatientFemale.html">PrenatalDiagImpGlycogenStorageDiseasePatientFemale</a>, <a href="Observation-PrenatalDiagImpGlycogenStorageDiseasePatientMale.html">PrenatalDiagImpGlycogenStorageDiseasePatientMale</a>, <a href="Observation-PrenatalDiagImpHereditaryHemochromatoPatientFemale.html">PrenatalDiagImpHereditaryHemochromatoPatientFemale</a>, <a href="Observation-PrenatalDiagImpHereditaryHemochromatoPatientMale.html">PrenatalDiagImpHereditaryHemochromatoPatientMale</a>, <a href="Observation-PrenatalDiagImpPrimaryHyperoxaluriaPatientFemale.html">PrenatalDiagImpPrimaryHyperoxaluriaPatientFemale</a>, <a href="Observation-PrenatalDiagImpPrimaryHyperoxaluriaPatientMale.html">PrenatalDiagImpPrimaryHyperoxaluriaPatientMale</a></td>
      <td>Variant annotation knowledgebases generally differ in the types of annotations they supply. Different labs can potentially report different annotations. Annotations supplied by a lab can become out of date as genomics knowledge advances.</td>
    </tr>
    <tr>
      <td>10</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-variant.html">Variant</a></td>
      <td>The genomics report can reference variants and other findings identified via testing.</td>
      <td><a href="Observation-PrenatalVariant1CNVFactorXiDeficiencyPatientMale.html">PrenatalVariant1CNVFactorXiDeficiencyPatientMale</a>, <a href="Observation-PrenatalVariant1FragileXSyndromePatientFemale.html">PrenatalVariant1FragileXSyndromePatientFemale</a>, <a href="Observation-PrenatalVariant1SNPHereditaryHemochromatoPatientFemale.html">PrenatalVariant1SNPHereditaryHemochromatoPatientFemale</a>, <a href="Observation-PrenatalVariant1SNPHereditaryHemochromatoPatientMale.html">PrenatalVariant1SNPHereditaryHemochromatoPatientMale</a>, <a href="Observation-PrenatalVariant2FragileXSyndromePatientFemale.html">PrenatalVariant2FragileXSyndromePatientFemale</a>, <a href="Observation-PrenatalVariant2SNPHereditaryHemochromatoPatientFemale.html">PrenatalVariant2SNPHereditaryHemochromatoPatientFemale</a>, <a href="Observation-PrenatalVariantFactorXiDeficiencyPatientFemale.html">PrenatalVariantFactorXiDeficiencyPatientFemale</a>, <a href="Observation-PrenatalVariantGlycogenStorageDiseaseTypePatientFemale.html">PrenatalVariantGlycogenStorageDiseaseTypePatientFemale</a>, <a href="Observation-PrenatalVariantGlycogenStorageDiseaseTypePatientMale.html">PrenatalVariantGlycogenStorageDiseaseTypePatientMale</a>, <a href="Observation-PrenatalVariantPrimaryHyperoxaluriaPatientFemale.html">PrenatalVariantPrimaryHyperoxaluriaPatientFemale</a>, <a href="Observation-PrenatalVariantPrimaryHyperoxaluriaPatientMale.html">PrenatalVariantPrimaryHyperoxaluriaPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>11</td>
      <td><a href="https://www.hl7.org/fhir/r4/riskassessment.html">RiskAssessment</a></td>
      <td>The genomics report references residual risk assessments, which represent the patient's post-test likelihood of being a carrier of a given disease.</td>
      <td><a href="RiskAssessment-PrenatalResidualRiskFactorXiDeficiencyPatientFemale.html">PrenatalResidualRiskFactorXiDeficiencyPatientFemale</a>, <a href="RiskAssessment-PrenatalResidualRiskFactorXiDeficiencyPatientMale.html">PrenatalResidualRiskFactorXiDeficiencyPatientMale</a>, <a href="RiskAssessment-PrenatalResidualRiskGlycogenStorageDiseasePatientFemale.html">PrenatalResidualRiskGlycogenStorageDiseasePatientFemale</a>, <a href="RiskAssessment-PrenatalResidualRiskGlycogenStorageDiseasePatientMale.html">PrenatalResidualRiskGlycogenStorageDiseasePatientMale</a>, <a href="RiskAssessment-PrenatalResidualRiskPrimaryHyperoxaluriaPatientFemale.html">PrenatalResidualRiskPrimaryHyperoxaluriaPatientFemale</a>, <a href="RiskAssessment-PrenatalResidualRiskPrimaryHyperoxaluriaPatientMale.html">PrenatalResidualRiskPrimaryHyperoxaluriaPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>12</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-diagnostic-implication.html">Diagnostic Implication</a></td>
      <td>The genomics report also references Reproductive Diagnostic Implications, representing a conceptual reproductive diagnosis of a future child with a given disease. This resource is important to represent because it is tied to a Risk Assessment resource which quantifies hypothetical offspring's risk of inheriting the disease.</td>
      <td><a href="Observation-PrenatalReprDiagImpFactorXiDeficiencyCouple.html">PrenatalReprDiagImpFactorXiDeficiencyCouple</a>, <a href="Observation-PrenatalReprDiagImpFragileXSyndromeCouple.html">PrenatalReprDiagImpFragileXSyndromeCouple</a>, <a href="Observation-PrenatalReprDiagImpHereditaryHemochromatoCouple.html">PrenatalReprDiagImpHereditaryHemochromatoCouple</a></td>
      <td>Variant annotation knowledgebases generally differ in the types of annotations they supply. Different labs can potentially report different annotations. Annotations supplied by a lab can become out of date as genomics knowledge advances.</td>
    </tr>
    <tr>
      <td>13</td>
      <td><a href="http://hl7.org/fhir/R4/servicerequest.html">Service Request</a></td>
      <td>The genomics report references orders that lead to the testing being reported.</td>
      <td><a href="ServiceRequest-PrenatalServiceRequestCouple.html">PrenatalServiceRequestCouple</a></td>
      <td></td>
    </tr>
    <tr>
      <td>14</td>
      <td><a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></td>
      <td>The genomics report references a results interpreter / lab director.</td>
      <td><a href="Practitioner-KarlaBowles.html">PractionerKarlaBowles</a></td>
      <td></td>
    </tr>
    <tr>
      <td>15</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-study-analysis.html">Genomic Study Analysis</a></td>
      <td>Each genomics report's referenced genomic study can be comprised of one or more (typically many) genomic study analyses that detail the testing procedures performed. Each of these genomic analyses represents a single disease, conserving the disease-level reporting inherent in the reporting payload.</td>
      <td><a href="Procedure-PrenatalGenomicStudyAnalysisFactorXiDeficiencyCouple.html">PrenatalGenomicStudyAnalysisFactorXiDeficiencyCouple</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisFactorXiDeficiencyPatientFemale.html">PrenatalGenomicStudyAnalysisFactorXiDeficiencyPatientFemale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisFactorXiDeficiencyPatientMale.html">PrenatalGenomicStudyAnalysisFactorXiDeficiencyPatientMale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisFragileXSyndromePatientFemale.html">PrenatalGenomicStudyAnalysisFragileXSyndromePatientFemale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisGlycogenStorageDiseaseCouple.html">PrenatalGenomicStudyAnalysisGlycogenStorageDiseaseCouple</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisGlycogenStorageDiseasePatientFemale.html">PrenatalGenomicStudyAnalysisGlycogenStorageDiseasePatientFemale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisGlycogenStorageDiseasePatientMale.html">PrenatalGenomicStudyAnalysisGlycogenStorageDiseasePatientMale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisHereditaryHemochromatoCouple.html">PrenatalGenomicStudyAnalysisHereditaryHemochromatoCouple</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisHereditaryHemochromatoPatientFemale.html">PrenatalGenomicStudyAnalysisHereditaryHemochromatoPatientFemale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisHereditaryHemochromatoPatientMale.html">PrenatalGenomicStudyAnalysisHereditaryHemochromatoPatientMale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisPrimaryHyperoxaluriaCouple.html">PrenatalGenomicStudyAnalysisPrimaryHyperoxaluriaCouple</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisPrimaryHyperoxaluriaPatientFemale.html">PrenatalGenomicStudyAnalysisPrimaryHyperoxaluriaPatientFemale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisPrimaryHyperoxaluriaPatientMale.html">PrenatalGenomicStudyAnalysisPrimaryHyperoxaluriaPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>16</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-study.html">Genomics Study</a></td>
      <td>The genomics report can reference details of the genomic study that was performed in order to identify variants / haplotypes / genotypes / biomarkers. There will typically be a single genomic study resource per report—each of these genomic study resources will reference all &lt;i&gt;derivative&lt;/i&gt; genomic study analysis resources.</td>
      <td><a href="Procedure-PrenatalGenomicStudyCouple.html">PrenatalGenomicStudyCouple</a>, <a href="Procedure-PrenatalGenomicStudyPatientFemale.html">PrenatalGenomicStudyPatientFemale</a>, <a href="Procedure-PrenatalGenomicStudyPatientMale.html">PrenatalGenomicStudyPatientMale</a></td>
      <td>Raw genomic data files such as VCF generally contain far more data than that communicated in the report. BED files can precisely define regions of the genome that were studied or deemed uncallable.</td>
    </tr>
    <tr>
      <td>17</td>
      <td><a href="https://www.hl7.org/fhir/r4/group.html">Group</a></td>
      <td>If the overarching genomics report represents a partnered report, its referenced subject should be group object representing both patients. The two genomics report resources it extends should each reference each patient as their respective subjects.</td>
      <td><a href="Group-PrenatalGroupPatientFemaleandPatientMale.html">GroupPatientFemaleAndPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>-</td>
      <td><a href="https://www.hl7.org/fhir/r4/relatedperson.html">RelatedPerson</a></td>
      <td>If the overarching genomics report represents a partnered report, two additional RelatedPerson objects should be created to represent the relationship between the reproductive partners</td>
      <td><a href="RelatedPerson-PrenatalRelatedPersonPatientFemale.html">RelatedPersonPatientFemale</a>, <a href="RelatedPerson-PrenatalRelatedPersonPatientMale.html">RelatedPersonPatientMale</a></td>
      <td></td>
    </tr>
  </tbody>
</table>
