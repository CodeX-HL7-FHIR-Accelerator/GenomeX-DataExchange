Profile:    GdxServiceRequest
Parent:     ServiceRequest
Id:         gdx-service-request
Title:      "Genomic Service Request"
Description:    "Test ordering information related to the genomics report."

* subject 1..1 
* subject only Reference(GdxPatient)
* code MS
* identifier MS // mlt: should be added. This should be a filler order identifier.
* reasonCode and reasonReference MS
