Instance: HereditaryCancerTestingServiceRequest
InstanceOf: ServiceRequest
Usage: #example
* identifier.type = $v2-0203#LACSN
* identifier.type.text = "Laboratory Accession ID"
* identifier.system = "https://myriad.com/identifiers/serviceRequests"
* identifier.value = "1234567890"
* status = #active
* intent = #plan
* code.text = "HereditaryCancerTesting™ Hereditary Cancer Test"
* subject = Reference(PatientFemale)
* requester = Reference(PractitionerOrderingProvider)
* specimen = Reference(SpecimenBloodFemale)
* reasonCode = $sct#718220008 "Hereditary breast and ovarian cancer syndrome (disorder)"