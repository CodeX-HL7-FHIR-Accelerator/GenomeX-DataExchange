### Building a Hereditary Cancer Testing Report: An Example

It is important to report germline variants which carry important diagnostic implications for a patient's cancer risk later in life. This type of report is comparatively simple to put together relative to other germline applications. 

#### Example PDF HereditaryCancerTestingReport

Here is a sample HereditaryCancerTesting PDF report for a single patient.

<img src="HereditaryCancerTestingReport.pdf" alt="Carrier Screening Report PDF" style="max-width: 100%; height: auto;">

##### Example FHIR HereditaryCancerTesting Report

The following diagram gives a visual representation for how FHIR resources based on the above sample HereditaryCancerTesting report relate to each other. 

<img src="HereditaryCancerTestingERD.pdf" alt="Carrier Screening Report ERD" style="max-width: 100%; height: auto; display: block">

##### Example FHIR HereditaryCancerTestingInstances

The numbers in the following table correspond to indices on the ERD pictured above.

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
      <td>Primary container of the overall report. This report will encompass all reported results.</td>
      <td><a href="DiagnosticReport-HereditaryCancerTestingDiagnosticReportNegative.html">HereditaryCancerTestingDiagnosticReportNegative</a></td>
      <td></td>
    </tr>
    <tr>
      <td>2a</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-study.html">Genomic Study</a></td>
      <td>The genomics report can reference details of the genomic study that was performed in order to identify variants / haplotypes / genotypes / biomarkers.</td>
      <td><a href="Producure-HereditaryCancerTestingGenomicStudy.html">HereditaryCancerTestingGenomicStudy</a></td>
      <td>Raw genomic data files such as VCF generally contain far more data than that communicated in the report. BED files can precisely define regions of the genome that were studied or deemed uncallable.</td>
    </tr>
    <tr>
      <td>2b</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-study-analysis.html">Genomic Study Analysis</a></td>
      <td>Each genomics report's referenced genomic study can be comprised of one or more genomic study analyses that detail the testing procedures performed.</td>
      <td><a href="Procedure-HereditaryCancerTestingGenomicStudyAnalysis.html">HereditaryCancerTestingGenomicStudyAnalysis</a></td>
      <td></td>
    </tr>
    <tr>
      <td>3</td>
      <td><a href="http://hl7.org/fhir/R4/patient.html">Patient</a></td>
      <td>The genomics report references the subject of the report, invariably the patient.</td>
      <td><a href="Patient-PatientFemale.html">PatientFemale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>4</td>
      <td><a href="http://hl7.org/fhir/R4/specimen.html">Specimen</a></td>
      <td>The genomics report references specimens that this report is based on.</td>
      <td><a href="Specimen-SpecimenBloodFemale.html">SpecimenBloodFemale</a></td>
      <td></td>
    </tr>
    <tr>
      <td>5a</td>
      <td><a href="http://hl7.org/fhir/R4/servicerequest.html">Service Request</a></td>
      <td>The genomics report references orders that led to the results for the reported test.</td>
      <td><a href="ServiceRequest-HereditaryCancerTestingServiceRequest.html">HereditaryCancerTestingServiceRequest</a></td>
      <td></td>
    </tr>
    <tr>
      <td>5b</td>
      <td><a href="http://hl7.org/fhir/R4/practitioner.html">Ordering Provider</a></td>
      <td>The genomics report refers to the medical professional that ordered the reported test.</td>
      <td><a href="Practitioner-PractitionerOrderingProvider.html">OrderingProvider</a></td>
      <td></td>
    </tr>
    <tr>
      <td>6</td>
      <td><a href="http://hl7.org/fhir/R4/organization.html">Organization</a></td>
      <td>The genomics report refers to the organization that performed the reported test.</td>
      <td><a href="Organization-Organization.html">OrganizationMyriad</a></td>
      <td></td>
    </tr>
    <tr>
      <td>7</td>
      <td><a href="http://hl7.org/fhir/R4/practitioner.html">Practitioner</a></td>
      <td>The genomics report references a results interpreter / lab director.</td>
      <td><a href="Practitioner-PractitionerPathologist.html">PractitionerPathologist</a></td>
      <td></td>
    </tr>
    <tr>
      <td>8</td>
      <td><a href="http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/overall-interpretation">Overall Interpretation</a></td>
      <td>The genomics report references an overall interpretation for the testing.</td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>9</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-variant.html">Variant</a></td>
      <td>The genomics report can reference variants and other findings identified via testing.</td>
      <td><a href="Observation-HereditaryCancerTestingVarNegative.html">HereditaryCancerTestingVarNegative</a></td>
      <td></td>
    </tr>
    <tr>
      <td>10</td>
      <td><a href="https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-diagnostic-implication.html">Diagnostic Implication</a></td>
      <td>The genomics report can include various types of genomic annotations such as diagnostic implications related to identified variants.</td>
      <td></td>
      <td>Variant annotation knowledgebases generally differ in the types of annotations they supply. Different labs can potentially report different annotations. Annotations such as 'variants of unknown significance' can be updated in the future through reanalysis.</td>
    </tr>
    <tr>
      <td>11</td>
      <td><a href="https://www.hl7.org/fhir/r4/riskassessment.html">RiskAssessment</a></td>
      <td>The genomics report references risk assessments, which represent the patient's risk for developing a given condition.</td>
      <td><a href="RiskAssessment-HereditaryCancerTestingGenRiskAssessNegative.html">HereditaryCancerTestingGenRiskAssessNegative</a></td>
      <td></td>
    </tr>
    <tr>
      <td>12</td>
      <td><a href="https://build.fhir.org/questionnaireresponse.html">QuestionnaireResponse</a></td>
      <td></td>
      <td><a href="QuestionnaireResponse-HereditaryCancerTestingQuestionnaireResponseNegative.html">HereditaryCancerTestingQuestionnaireResponseNegative</a></td>
      <td></td>
    </tr>
    <tr>
      <td>13</td>
      <td><a href="https://build.fhir.org/familymemberhistory.html">FamilyMemberHistory</a></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>14</td>
      <td><a href="http://hl7.org/fhir/R4/task.html">Task</a></td>
      <td>The genomics report references follow up recommendations for the patient.</td>
      <td><a href="Task-HereditaryCancerTestingRecommendedFollowupNegative.html">HereditaryCancerTestingRecommendedFollowupNegative</a></td>
      <td></td>
    </tr>
  </tbody>
</table>
