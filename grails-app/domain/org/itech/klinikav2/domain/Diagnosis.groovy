package org.itech.klinikav2.domain

/*
 * Author: Jonah
 * Date: October 9, 2013
 * This is the domain class of the Diagnosis object
 */

class Diagnosis {
	Date date
	String details
	
	static belongsTo = [patient:Patient]
}
