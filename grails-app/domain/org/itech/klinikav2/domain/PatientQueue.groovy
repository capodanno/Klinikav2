package org.itech.klinikav2.domain
/**
 * 
 * @author Randy
 * 
 */


class PatientQueue {
	Date date
	
	static hasOne = Clinic
	static hasMany = [queueElements:QueueElement]
}
