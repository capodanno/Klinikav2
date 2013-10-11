package org.itech.klinika

class Doctor extends Profile{
	
	String background
	String clinicHourEnd
	String clinicHourStart
	
	static hasMany = [receptionists: Receptionist]
	
	
    static constraints = {
    }
	
}
