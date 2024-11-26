### Building a Single-Parent Prenatal Carrier Screening Report: An Example

Carrier screening reports introduce additional complexity to genomics reporting. Carrier screening for a single parent may report variant, zygosity, genetic disease diagnosis, and reproductive risk results.

A single-parent carrier screening report focuses on the risk that the hypothetical child of that parent inherits certain germline genetic diseases. When representing a single patient’s carrier status, the report is represented as a single Genomic Report resource. This section introduces the challenges of carrier screening reporting and outlines measures to address them. 

#### Example Single Patient Report PDF

Here is a sample prenatal carrier screening report for a single patient.

<img src="PrenatalReport.pdf" alt="Carrier Screening Report PDF" style="max-width: 100%; height: auto;">

##### Example FHIR Single Prenatal Carrier Screening Report

The following entity relationship diagram (ERD) gives a visual representation for how FHIR resources based on the above sample report relate to each other. Note that only one genomic report is created—while this report contains resources pertaining both to the prospective parent and hypothetical child, the parent is the subject of all resources. This is because any risk assessments or diagnostic implications are considered here in a 'reproductive' context and thus pertain to the parent. Additionally, health systems do not typically store data for hypothetical patients. This implementation follows that principle. All 'reproductive' diagnostic implications include inheritance codes under the 'component' field to indicate that they refer to a reproductive context. They are further differentiated in this example by the abbreviation "Repr" within each id and filename.

This test also distinguishes between multiple types of risk assessments:
- *Residual Risk Assessments* estimate the "residual" risk that the patient in fact does have the variant, given the test performed. For example, if the test came back positive, the residual risk will be 1. If the test instead came back negative, there is a small risk that the test's result was a false negative. 
- *Pre-test Reproductive Risk Assessments* estimate the risk of passing a given disease to a hypothetical child _prior_ to the genetic test being performed. This is based off of allelic population frequencies.
- *Post-test Reproductive Risk Assessments* estimate the risk of passing a given disease to a hypothetical child _after_ the genetic test has been performed. This is functionally the most diagnostically relevant risk estimate in the prenatal carrier screening.
  - Risk Assessments associated with detected _absent_ variants will be grouped into a single resource as they are less important to highlight than risk assessments for positive variants.

<img src="SinglePrenatalReportERD.pdf" alt="Carrier Screening Report ERD" style="max-width: 100%; height: auto;">

##### Example FHIR Single Prenatal Carrier Screening Instances

The germline Genomic Report which connects to all the FHIR Genomic instances for this detailed germline example is found [here](DiagnosticReport-PrenatalGenomicReportPatientMale.html). The table below relates FHIR resource examples for a single-parent prenatal carrier screening report to the report in the ERD above (the numbers in the 'Label' column correspond to the numbers in the ERD).

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
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-report.html">Genomic Report</a></td>
      <td>Primary container of the overall report, including a report conclusion. Because this is a single-parent prenatal carrier screening report, one single genomic report will encompass all reported results.</td>
      <td><a href="DiagnosticReport-PrenatalGenomicReportPatientMale.html">PrenatalGenomicReportPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>2</td>
      <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
      <td>The genomic report references the subject of the report, invariably the patient. Although a carrier screening report may pertain to a patient's hypothetical future child, as a rule, health systems store results for concrete patients. Thus the most appropriate subject for genomics reporting remains the prospective parent.</td>
      <td><a href="Patient-PatientMale.html">PatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>3</td>
      <td><a href="http://hl7.org/fhir/R4/specimen.html">Specimen</a></td>
      <td>The genomic report references specimens that this report is based on.</td>
      <td><a href="Specimen-PrenatalSpecimenPatientMale.html">PrenatalSpecimenPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>4</td>
      <td><a href="http://hl7.org/fhir/R4/task.html">Task</a></td>
      <td>The genomic report references follow up recommendations for the patient(s).</td>
      <td><a href="Task-PrenatalRecommendedFollowup1PatientMale.html">PrenatalRecommendedFollowup1PatientMale</a>, <a href="Task-PrenatalRecommendedFollowup2PatientMale.html">PrenatalRecommendedFollowup2PatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>5</td>
      <td><a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></td>
      <td>The genomic report refers to the medical professional that ordered the reported test.</td>
      <td><a href="Practitioner-PractitionerOrderingProvider.html">OrderingPractitioner</a></td>
      <td></td>
    </tr>
    <tr>
      <td>6</td>
      <td><a href="http://hl7.org/fhir/R4/organization.html">Organization</a></td>
      <td>The genomic report refers to the organization that performed the reported test.</td>
      <td><a href="Organization.html">Organization</a></td>
      <td></td>
    </tr>
    <tr>
      <td>7</td>
      <td><a href="https://www.hl7.org/fhir/r4/riskassessment.html">RiskAssessment</a></td>
      <td><b>Post-test Reproductive Risk Assessments</b> estimate the risk of passing a given disease to a hypothetical child <i>after</i> the genomic test has been performed. This is the most diagnostically relevant risk estimate in the prenatal carrier screening. These risk assessments are each linked from a diagnostic implication resource using the 'Genomic Risk Assessment' extension.</td>
      <td><a href="RiskAssessment-PrenatalReproductivePostRiskAlpha1ADPatientMale.html">PrenatalReproductivePostRiskAlpha1ADPatientMale</a>, <a href="RiskAssessment-PrenatalReproductivePostRiskAutosomalRecessiveSAoCSPatientMale.html">PrenatalReproductivePostRiskAutosomalRecessiveSAoCSPatientMale</a>, <a href="RiskAssessment-PrenatalReproductivePostRiskFamilialHyperinsulinismPatientMale.html">PrenatalReproductivePostRiskFamilialHyperinsulinismPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>8</td>
      <td><a href="https://www.hl7.org/fhir/r4/riskassessment.html">RiskAssessment</a></td>
      <td><b>Pre-test Reproductive Risk Assessments</b> estimate the risk of passing a given disease to a hypothetical child <i>prior</i> to the genomic test being performed. This is based off of allelic population frequencies.</td>
      <td><a href="RiskAssessment-PrenatalReproductivePreRiskAlpha1ADPatientMale.html">PrenatalReproductivePreRiskAlpha1ADPatientMale</a>, <a href="RiskAssessment-PrenatalReproductivePreRiskAutosomalRecessiveSAoCSPatientMale.html">PrenatalReproductivePreRiskAutosomalRecessiveSAoCSPatientMale</a>, <a href="RiskAssessment-PrenatalReproductivePreRiskFamilialHyperinsulinismPatientMale.html">PrenatalReproductivePreRiskFamilialHyperinsulinismPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>9</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-diagnostic-implication.html">Diagnostic Implication</a></td>
      <td>The genomic report can include various types of genomic annotations such as diagnostic implications related to identified variants. These Diagnostic Implications represent a diagnosis of the given patient as a carrier of a given disease.</td>
      <td><a href="Observation-PrenatalDiagImpAlpha1ADPatientMale.html">PrenatalDiagImpAlpha1ADPatientMale</a>, <a href="Observation-PrenatalDiagImpAutosomalRecessiveSAoCSPatientMale.html">PrenatalDiagImpAutosomalRecessiveSAoCSPatientMale</a>, <a href="Observation-PrenatalDiagImpFamilialHyperinsulinismPatientMale.html">PrenatalDiagImpFamilialHyperinsulinismPatientMale</a></td>
      <td>Variant annotation knowledgebases generally differ in the types of annotations they supply. Different labs can potentially report different annotations. Annotations such as 'variants of unknown significance' can be updated in the future through reanalysis.</td>
    </tr>
    <tr>
      <td>10</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-variant.html">Variant</a></td>
      <td>The genomic report can reference variants and other findings identified via testing.</td>
      <td><a href="Observation-PrenatalVariant1SNPAlpha1ADPatientMale.html">PrenatalVariant1SNPAlpha1ADPatientMale</a>, <a href="Observation-PrenatalVariantAutosomalRecessiveSAoCSPatientMale.html">PrenatalVariantAutosomalRecessiveSAoCSPatientMale</a>, <a href="Observation-PrenatalVariantFamilialHyperinsulinismPatientMale.html">PrenatalVariantFamilialHyperinsulinismPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>11</td>
      <td><a href="https://www.hl7.org/fhir/r4/riskassessment.html">RiskAssessment</a></td>
      <td><b>Residual Risk Assessments</b> estimate the "residual" risk that the patient in fact does have the variant, given the test performed. For example, if the test came back positive, the residual risk will be 1. If the test instead came back negative, there is a small risk that the test's result was a false negative.</td>
      <td><a href="RiskAssessment-PrenatalResidualRiskAlpha1ADPatientMale.html">PrenatalResidualRiskAlpha1ADPatientMale</a>, <a href="RiskAssessment-PrenatalResidualRiskAutosomalRecessiveSAoCSPatientMale.html">PrenatalResidualRiskAutosomalRecessiveSAoCSPatientMale</a>, <a href="RiskAssessment-PrenatalResidualRiskFamilialHyperinsulinismPatientMale.html">PrenatalResidualRiskFamilialHyperinsulinismPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>12</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-diagnostic-implication.html">Diagnostic Implication</a></td>
      <td>The genomic report also references Reproductive Diagnostic Implications, representing a conceptual reproductive diagnosis of a future child with a given disease. This resource is important to represent because it is tied to a Risk Assessment resource which quantifies hypothetical child's risk of inheriting the disease.</td>
      <td><a href="Observation-PrenatalReprDiagImpAlpha1ADPatientMale.html">PrenatalReprDiagImpAlpha1ADPatientMale</a>, <a href="Observation-PrenatalReprDiagImpAutosomalRecessiveSAoCSPatientMale.html">PrenatalReprDiagImpAutosomalRecessiveSAoCSPatientMale</a>, <a href="Observation-PrenatalReprDiagImpFamilialHyperinsulinismPatientMale.html">PrenatalReprDiagImpFamilialHyperinsulinismPatientMale</a></td>
      <td>Variant annotation knowledgebases generally differ in the types of annotations they supply. Different labs can potentially report different annotations. Annotations such as 'variants of unknown significance' can be updated in the future through reanalysis.</td>
    </tr>
    <tr>
      <td>13</td>
      <td><a href="http://hl7.org/fhir/R4/servicerequest.html">Service Request</a></td>
      <td>The genomic report references orders that lead to the testing being reported.</td>
      <td><a href="ServiceRequest-PrenatalServiceRequestPatientMale.html">PrenatalServiceRequestPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>14</td>
      <td><a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></td>
      <td>The genomic report references a results interpreter / lab director.</td>
      <td><a href="Practitioner-KarlaBowles.html">PractionerKarlaBowles</a></td>
      <td></td>
    </tr>
    <tr>
      <td>15</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-study-analysis.html">Genomic Study Analysis</a></td>
      <td>Each genomic report's single referenced genomic study can be comprised of one or more (but typically many) genomic study analyses that detail the testing procedures performed. Each of these genomic analyses represents a single disease, reflecting a disease-level reporting design.</td>
      <td><a href="Procedure-PrenatalGenomicStudyAnalysisAlpha1ADPatientMale.html">PrenatalGenomicStudyAnalysisAlpha1ADPatientMale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisAutosomalRecessiveSAoCSPatientMale.html">PrenatalGenomicStudyAnalysisAutosomalRecessiveSAoCSPatientMale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisFamilialHyperinsulinismPatientMale.html">PrenatalGenomicStudyAnalysisFamilialHyperinsulinismPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>16</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-study.html">Genomic Study</a></td>
      <td>The genomic report can reference details of the genomic study that was performed in order to identify variants / haplotypes / genotypes / biomarkers. There will typically be a single genomic study resource per report—each of these genomic study resources will reference all &lt;i&gt;derivative&lt;/i&gt; genomic study analysis resources.</td>
      <td><a href="Procedure-PrenatalGenomicStudyPatientMale.html">PrenatalGenomicStudyPatientMale</a></td>
      <td>Raw genomic data files such as VCF generally contain far more data than that communicated in the report. BED files can precisely define regions of the genome that were studied or deemed uncallable.</td>
    </tr>
  </tbody>
</table>

--------------------------------------------------------


### Building a Partnered Prenatal Carrier Screening Report: An Example

Carrier screening reports may also surface a report for two prospective parents or reproductive partners jointly. When representing two patients in a partnership, this report consists of one Genomic Report for each respective parent, as well as one _additional_ shared Genomic Report which extends the other two. This shared Genomic Report also surfaces results deriving from the base results of both prospective parents. There are multiple reasons for this design. One is to avoid surfacing observations from multiple patients under a single report. As a principle, each FHIR resource should unambiguously belong to a single patient. Furthermore, many health systems cannot store private data for patients outside their own system. In this case, the reproductive partner's personally identifiable information may be anonymized. This design also allows the reports to be split in the case of the reproductive partners' separation.

#### Example Partnered Prenatal Carrier Screening Report PDF

<img src="PrenatalReport.pdf" alt="Carrier Screening Report PDF" style="max-width: 100%; height: auto;">

Many of the fields used in single-parent carrier screening reports are also applicable in a partnered report. As you will see in the following entity relationship diagram (ERD), the differences between single and partnered reports lie mostly in the arrangement, organization, and interdependencies of the FHIR resources. Keep in mind that one single overarching report is sent to a hospital system as the definitive report signed off by the lab. That single report will include three Genomic Report resource instances that have been created for each subject: one for each partner and one combined report for representing their joint reproductive risk assessments. 

<img src="PartneredPrenatalReportERD.pdf" alt="Carrier Screening Report" style="max-width: 100%; height: auto;">

##### Example FHIR Partnered Prenatal Carrier Screening Instances

The germline Genomic Report which connects to all the FHIR Genomic instances for this detailed germline example is [here](DiagnosticReport-PrenatalGenomicReportCouple.html). The table below relates FHIR resource examples for single prenatal carrier screening to the ERD above (the numbers in the 'Label' column correspond to the numbers in the ERD).

In this example, [PatientFemale](Patient-PatientFemale.html) and [PatientMale](Patient-PatientMale.html) are the subjects of the report. As discussed, each has their own genomic report and a set of results which points to them and only them as subject. Each of these results includes either 'PatientFemale' or 'PatientMale' in its filename and FHIR resource ID. In addition, a [third, overarching report](DiagnosticReport-PrenatalGenomicReportCouple.html) extends both of these patients' individual genomic reports. This overarching report also contains results pertaining to both patients—these results will reference a Reproductive Group resource as subject, representing both PatientFemale and PatientMale. All joint resources belonging to both reproductive partners include 'Couple' in their filename and FHIR resource ID.

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
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-report.html">Genomic Report</a></td>
      <td>Primary container of the overall report, including a report conclusion. In a partnered report, one overarching genomic report will "extend" two derivative genomic reports—one for each patient / partner. In a single report, one single genomic report will encompass all reported results.</td>
      <td><a href="DiagnosticReport-PrenatalGenomicReportCouple.html">PrenatalGenomicReportCouple</a>, <a href="DiagonistcReport-PrenatalGenomicReportCouple.html">PrenatalGenomicReportCouple</a>, <a href="DiagnosticReport-PrenatalGenomicReportPatientMale.html">PrenatalGenomicReportPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>2</td>
      <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
      <td>All resources based solely on the results of one of the parents will reference that patient alone as the subject. Reproductive results based on both parents will instead reference a Group resource as the subject.</td>
      <td><a href="Patient-PatientFemale.html">PatientFemale</a>, <a href="Patient-PatientMale.html">PatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>3</td>
      <td><a href="http://hl7.org/fhir/R4/specimen.html">Specimen</a></td>
      <td>The genomic report references specimens that this report is based on.</td>
      <td><a href="Specimen-PrenatalSpecimenPatientFemale.html">PrenatalSpecimenPatientFemale</a>, <a href="Specimen-PrenatalSpecimenPatientMale.html">PrenatalSpecimenPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>4</td>
      <td><a href="http://hl7.org/fhir/R4/task.html">Task</a></td>
      <td>The genomic report references follow up recommendations for the patient(s).</td>
      <td><a href="Task-PrenatalRecommendedFollowup1PatientFemale.html">PrenatalRecommendedFollowup1PatientFemale</a>, <a href="Task-PrenatalRecommendedFollowup1PatientMale.html">PrenatalRecommendedFollowup1PatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>5</td>
      <td><a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></td>
      <td>The genomic report refers to the medical professional that ordered the reported test.</td>
      <td><a href="Practitioner-PractitionerOrderingProvider.html">OrderingPractitioner</a></td>
      <td></td>
    </tr>
    <tr>
      <td>6</td>
      <td><a href="http://hl7.org/fhir/R4/organization.html">Organization</a></td>
      <td>The genomic report refers to the organization that performed the reported test.</td>
      <td><a href="Organization.html">Organization</a></td>
      <td></td>
    </tr>
    <tr>
      <td>7</td>
      <td><a href="https://www.hl7.org/fhir/r4/riskassessment.html">RiskAssessment</a></td>
      <td><b>Post-test Reproductive Risk Assessments</b> estimate the risk of passing a given disease to a hypothetical child <i>after</i> the genetic test has been performed. This is functionally the most diagnostically relevant risk estimate in the prenatal carrier screening. These risk assessments are each linked from a diagnostic implication resource using the 'Genomic Risk Assessment' extension. Risk Assessments associated with detected _absent_ variants will be grouped into a single resource as they are less important to highlight than risk assessments for positive variants.</td>
      <td><a href="RiskAssessment-PrenatalReproductivePostRiskFactorXiDeficiencyCouple.html">PrenatalReproductivePostRiskFactorXiDeficiencyCouple</a></td>
      <td></td>
    </tr>
    <tr>
      <td>8</td>
      <td><a href="https://www.hl7.org/fhir/r4/riskassessment.html">RiskAssessment</a></td>
      <td><b>Pre-test Reproductive Risk Assessments</b> estimate the risk of passing a given disease to a hypothetical child <i>prior</i> to the genetic test being performed. This is based off of allelic population frequencies.</td>
      <td><a href="RiskAssessment-PrenatalReproductivePreRiskFactorXiDeficiencyCouple.html">PrenatalReproductivePreRiskFactorXiDeficiencyCouple</a></td>
      <td></td>
    </tr>
    <tr>
      <td>9</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-diagnostic-implication.html">Diagnostic Implication</a></td>
      <td>The genomic report can include various types of genomic annotations such as diagnostic implications related to identified variants. These Diagnostic Implications represent a diagnosis of the given patient as a carrier of a given disease.</td>
      <td><a href="Observation-PrenatalDiagImpFactorXiDeficiencyPatientFemale.html">PrenatalDiagImpFactorXiDeficiencyPatientFemale</a>, <a href="Observation-PrenatalDiagImpFactorXiDeficiencyPatientMale.html">PrenatalDiagImpFactorXiDeficiencyPatientMale</a>, <a href="Observation-PrenatalDiagImpFragileXSyndromePatientFemale.html">PrenatalDiagImpFragileXSyndromePatientFemale</a>, <a href="Observation-PrenatalDiagImpGlycogenStorageDiseasePatientFemale.html">PrenatalDiagImpGlycogenStorageDiseasePatientFemale</a>, <a href="Observation-PrenatalDiagImpGlycogenStorageDiseasePatientMale.html">PrenatalDiagImpGlycogenStorageDiseasePatientMale</a>, <a href="Observation-PrenatalDiagImpHereditaryHemochromatoPatientFemale.html">PrenatalDiagImpHereditaryHemochromatoPatientFemale</a>, <a href="Observation-PrenatalDiagImpHereditaryHemochromatoPatientMale.html">PrenatalDiagImpHereditaryHemochromatoPatientMale</a>, <a href="Observation-PrenatalDiagImpPrimaryHyperoxaluriaPatientFemale.html">PrenatalDiagImpPrimaryHyperoxaluriaPatientFemale</a>, <a href="Observation-PrenatalDiagImpPrimaryHyperoxaluriaPatientMale.html">PrenatalDiagImpPrimaryHyperoxaluriaPatientMale</a></td>
      <td>Variant annotation knowledgebases generally differ in the types of annotations they supply. Different labs can potentially report different annotations. Annotations such as 'variants of unknown significance' can be updated in the future through reanalysis.</td>
    </tr>
    <tr>
      <td>10</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-variant.html">Variant</a></td>
      <td>The genomic report can reference variants and other findings identified via testing.</td>
      <td><a href="Observation-PrenatalVariant1CNVFactorXiDeficiencyPatientMale.html">PrenatalVariant1CNVFactorXiDeficiencyPatientMale</a>, <a href="Observation-PrenatalVariant1FragileXSyndromePatientFemale.html">PrenatalVariant1FragileXSyndromePatientFemale</a>, <a href="Observation-PrenatalVariant1SNPHereditaryHemochromatoPatientFemale.html">PrenatalVariant1SNPHereditaryHemochromatoPatientFemale</a>, <a href="Observation-PrenatalVariant1SNPHereditaryHemochromatoPatientMale.html">PrenatalVariant1SNPHereditaryHemochromatoPatientMale</a>, <a href="Observation-PrenatalVariant2FragileXSyndromePatientFemale.html">PrenatalVariant2FragileXSyndromePatientFemale</a>, <a href="Observation-PrenatalVariant2SNPHereditaryHemochromatoPatientFemale.html">PrenatalVariant2SNPHereditaryHemochromatoPatientFemale</a>, <a href="Observation-PrenatalVariantFactorXiDeficiencyPatientFemale.html">PrenatalVariantFactorXiDeficiencyPatientFemale</a>, <a href="Observation-PrenatalVariantGlycogenStorageDiseaseTypePatientFemale.html">PrenatalVariantGlycogenStorageDiseaseTypePatientFemale</a>, <a href="Observation-PrenatalVariantGlycogenStorageDiseaseTypePatientMale.html">PrenatalVariantGlycogenStorageDiseaseTypePatientMale</a>, <a href="Observation-PrenatalVariantPrimaryHyperoxaluriaPatientFemale.html">PrenatalVariantPrimaryHyperoxaluriaPatientFemale</a>, <a href="Observation-PrenatalVariantPrimaryHyperoxaluriaPatientMale.html">PrenatalVariantPrimaryHyperoxaluriaPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>11</td>
      <td><a href="https://www.hl7.org/fhir/r4/riskassessment.html">RiskAssessment</a></td>
      <td><b>Residual Risk Assessments</b> estimate the "residual" risk that the patient in fact does have the variant, given the test performed. For example, if the test came back positive, the residual risk will be 1. If the test instead came back negative, there is a small risk that the test's result was a false negative.</td>
      <td><a href="RiskAssessment-PrenatalResidualRiskFactorXiDeficiencyPatientFemale.html">PrenatalResidualRiskFactorXiDeficiencyPatientFemale</a>, <a href="RiskAssessment-PrenatalResidualRiskFactorXiDeficiencyPatientMale.html">PrenatalResidualRiskFactorXiDeficiencyPatientMale</a>, <a href="RiskAssessment-PrenatalResidualRiskGlycogenStorageDiseasePatientFemale.html">PrenatalResidualRiskGlycogenStorageDiseasePatientFemale</a>, <a href="RiskAssessment-PrenatalResidualRiskGlycogenStorageDiseasePatientMale.html">PrenatalResidualRiskGlycogenStorageDiseasePatientMale</a>, <a href="RiskAssessment-PrenatalResidualRiskPrimaryHyperoxaluriaPatientFemale.html">PrenatalResidualRiskPrimaryHyperoxaluriaPatientFemale</a>, <a href="RiskAssessment-PrenatalResidualRiskPrimaryHyperoxaluriaPatientMale.html">PrenatalResidualRiskPrimaryHyperoxaluriaPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>12</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-diagnostic-implication.html">Diagnostic Implication</a></td>
      <td>The genomic report also references Reproductive Diagnostic Implications, representing a conceptual reproductive diagnosis of a future child with a given disease. This resource is important to represent because it is tied to a Risk Assessment resource which quantifies hypothetical child's risk of inheriting the disease.</td>
      <td><a href="Observation-PrenatalReprDiagImpFactorXiDeficiencyCouple.html">PrenatalReprDiagImpFactorXiDeficiencyCouple</a>, <a href="Observation-PrenatalReprDiagImpFragileXSyndromeCouple.html">PrenatalReprDiagImpFragileXSyndromeCouple</a>, <a href="Observation-PrenatalReprDiagImpHereditaryHemochromatoCouple.html">PrenatalReprDiagImpHereditaryHemochromatoCouple</a></td>
      <td>Variant annotation knowledgebases generally differ in the types of annotations they supply. Different labs can potentially report different annotations. Annotations such as 'variants of unknown significance' can be updated in the future through reanalysis.</td>
    </tr>
    <tr>
      <td>13</td>
      <td><a href="http://hl7.org/fhir/R4/servicerequest.html">Service Request</a></td>
      <td>The genomic report references orders that lead to the testing being reported.</td>
      <td><a href="ServiceRequest-PrenatalServiceRequestCouple.html">PrenatalServiceRequestCouple</a></td>
      <td></td>
    </tr>
    <tr>
      <td>14</td>
      <td><a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></td>
      <td>The genomic report references a results interpreter / lab director.</td>
      <td><a href="Practitioner-KarlaBowles.html">PractionerKarlaBowles</a></td>
      <td></td>
    </tr>
    <tr>
      <td>15</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-study-analysis.html">Genomic Study Analysis</a></td>
      <td>Each genomic report's single referenced genomic study can be comprised of one or more (but typically many) genomic study analyses that detail the testing procedures performed. Each of these genomic analyses represents a single disease, reflecting a disease-level reporting design.</td>
      <td><a href="Procedure-PrenatalGenomicStudyAnalysisFactorXiDeficiencyCouple.html">PrenatalGenomicStudyAnalysisFactorXiDeficiencyCouple</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisFactorXiDeficiencyPatientFemale.html">PrenatalGenomicStudyAnalysisFactorXiDeficiencyPatientFemale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisFactorXiDeficiencyPatientMale.html">PrenatalGenomicStudyAnalysisFactorXiDeficiencyPatientMale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisFragileXSyndromePatientFemale.html">PrenatalGenomicStudyAnalysisFragileXSyndromePatientFemale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisGlycogenStorageDiseaseCouple.html">PrenatalGenomicStudyAnalysisGlycogenStorageDiseaseCouple</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisGlycogenStorageDiseasePatientFemale.html">PrenatalGenomicStudyAnalysisGlycogenStorageDiseasePatientFemale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisGlycogenStorageDiseasePatientMale.html">PrenatalGenomicStudyAnalysisGlycogenStorageDiseasePatientMale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisHereditaryHemochromatoCouple.html">PrenatalGenomicStudyAnalysisHereditaryHemochromatoCouple</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisHereditaryHemochromatoPatientFemale.html">PrenatalGenomicStudyAnalysisHereditaryHemochromatoPatientFemale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisHereditaryHemochromatoPatientMale.html">PrenatalGenomicStudyAnalysisHereditaryHemochromatoPatientMale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisPrimaryHyperoxaluriaCouple.html">PrenatalGenomicStudyAnalysisPrimaryHyperoxaluriaCouple</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisPrimaryHyperoxaluriaPatientFemale.html">PrenatalGenomicStudyAnalysisPrimaryHyperoxaluriaPatientFemale</a>, <a href="Procedure-PrenatalGenomicStudyAnalysisPrimaryHyperoxaluriaPatientMale.html">PrenatalGenomicStudyAnalysisPrimaryHyperoxaluriaPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>16</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-study.html">Genomic Study</a></td>
      <td>The genomic report can reference details of the genomic study that was performed in order to identify variants / haplotypes / genotypes / biomarkers. There will typically be a single genomic study resource per report—each of these genomic study resources will reference all &lt;i&gt;derivative&lt;/i&gt; genomic study analysis resources.</td>
      <td><a href="Procedure-PrenatalGenomicStudyCouple.html">PrenatalGenomicStudyCouple</a>, <a href="Procedure-PrenatalGenomicStudyPatientFemale.html">PrenatalGenomicStudyPatientFemale</a>, <a href="Procedure-PrenatalGenomicStudyPatientMale.html">PrenatalGenomicStudyPatientMale</a></td>
      <td>Raw genomic data files such as VCF generally contain far more data than that communicated in the report. BED files can precisely define regions of the genome that were studied or deemed uncallable.</td>
    </tr>
    <tr>
      <td>17</td>
      <td><a href="https://www.hl7.org/fhir/r4/group.html">Group</a></td>
      <td>For a partnered genomic report, the subject should reference a Group resource that includes both partners. The two genomics report resources for the partners should reference each subject respectively.</td>
      <td><a href="Group-PrenatalGroupPatientFemaleandPatientMale.html">GroupPatientFemaleAndPatientMale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>-</td>
      <td><a href="https://www.hl7.org/fhir/r4/relatedperson.html">RelatedPerson</a></td>
      <td>A genomic report representing a partnered report should include two additional RelatedPerson objects to represent the relationship between the reproductive partners</td>
      <td><a href="RelatedPerson-PrenatalRelatedPersonPatientFemale.html">RelatedPersonPatientFemale</a>, <a href="RelatedPerson-PrenatalRelatedPersonPatientMale.html">RelatedPersonPatientMale</a></td>
      <td></td>
    </tr>
  </tbody>
</table>
