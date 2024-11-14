Instance: PrenatalServiceRequestPatientMale
InstanceOf: ServiceRequest
Usage: #example
* subject = Reference(PatientMale)
* requester = Reference(PractitionerOrderingProvider)
* identifier.type = $v2-0203#LACSN
* identifier.type.text = "Laboratory Accession ID"
* identifier.system = "https://myriad.com/identifiers/serviceRequests"
* identifier.value = "GNV3VZQYKRPC"
* status = #active
* intent = #order
* code.text = "Prenatal Test"
* code = $tests#PrenatalCarrierScreening "Prenatal Test"
* reasonCode.text = "Planned pregnancy"
* reasonCode = $sct#169565003 "Pregnant - planned (finding)"