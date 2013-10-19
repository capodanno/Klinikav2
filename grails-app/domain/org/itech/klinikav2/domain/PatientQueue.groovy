package org.itech.klinikav2.domain
/**
 * 
 * @author Randy
 * 
 */


class PatientQueue {
	Date dateToday
	Date date
	
	static hasMany = QueueElement
}
