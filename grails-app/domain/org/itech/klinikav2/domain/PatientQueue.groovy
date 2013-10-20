package org.itech.klinikav2.domain
/**
 * 
 * @author Randy
 * 
 */


class PatientQueue {
	Date dateToday
	Date date
	
	static hasOne = Clinic
	static hasMany = [queueElements:QueueElement, dailyCounters:DailyCounter]
	
}
