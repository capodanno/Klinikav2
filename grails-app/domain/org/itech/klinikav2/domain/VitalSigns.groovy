package org.itech.klinikav2.domain

/*
 * Author: Jonah
 * Date: October 9, 2013
 * This is the domain class of the VitalSigns object
 */

class VitalSigns {

	Date lastMenstruationPeriod
	String bloodPressure
	Date date
	Double height //in cm
	String pulseRate
	Double weight //in kg
	
	static belongsTo = [patient:Patient]
}
