package org.itech.klinikav2.domain

/*
 * Author: Jonah
 * Date: October 9, 2013
 * This is the domain class of the Referral object
 */

class Referral {
	String address
	String doctorName
	Date date
	
	static belongsTo = [patient:Patient]
}
