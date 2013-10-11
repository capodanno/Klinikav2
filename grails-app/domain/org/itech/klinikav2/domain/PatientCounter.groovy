package org.itech.klinikav2.domain

/**
 * PatientCounter
 * A domain class describes the data object and it's mapping to the database
 */
class PatientCounter {
	
	
	static hasMany = [dailyCounters: DailyCounter]
}
