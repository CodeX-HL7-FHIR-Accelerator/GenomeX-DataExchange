Instance: Organization
InstanceOf: Organization
Usage: #example
* identifier.use = #official
* identifier.system = "urn:oid:2.16.840.1.113883.4.7"
* identifier.value = "12A4567890"
* type = $organization-type#prov "Healthcare Provider"
* name = "Generic Laboratories, Inc."
* contact.telecom[0].system = #phone
* contact.telecom[=].value = "(800) 876-5309"
* contact.telecom[+].system = #fax
* contact.telecom[=].value = "(781) 876-5305"
* contact.telecom[+].system = #url
* contact.telecom[=].value = "http://www.genericlaboratoriesinc.com"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "info@genericlaboratoriesinc.com"
* contact.address.text = "321 Laboratory Court, Anytown, MA, 12345, USA"
* contact.address.line = "321 Laboratory Court"
* contact.address.city = "Anytown"
* contact.address.state = "MA"
* contact.address.postalCode = "12345"
* contact.address.country = "USA"