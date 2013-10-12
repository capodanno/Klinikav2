package org.itech.klinikav2.domain
/**
 * 
 * @author Randy
 *
 */

class Doctor extends Profile{
	
	String background
	String clinicHourEnd
	String clinicHourStart
	
	static hasMany = [receptionists: Receptionist]
	
	
    static constraints = {
    }
	
}
