package org.itech.klinikav2.domain

class PatientRecord {

	static hasMany = [prescriptions: Prescription]
	
	String bloodPressure
	String height
	String weight
	String pulseRate
	Date LMP
	Date recordedDate
	
    static constraints = {
    }
}
