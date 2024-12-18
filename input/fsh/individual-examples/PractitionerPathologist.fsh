Instance: PractitionerPathologist
InstanceOf: Practitioner
Usage: #example
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9123456789"
* active = true
* name.family = "Pathologist"
* name.given = "Pauline"
* name.prefix = "Dr."
* gender = #female
* qualification.code = $v2-0360#MD "Doctor of Medicine"
* qualification.code.text = "Doctor of Medicine - MD"
* address.text = "456 Laboratory Drive, Anytown, MA, 12345, USA"
* address.line = "456 Laboratory Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "USA"