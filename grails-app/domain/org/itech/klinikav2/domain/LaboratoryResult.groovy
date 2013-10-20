package org.itech.klinikav2.domain

/*
 * Author: Jonah
 * Date: October 9, 2013
 * This is the domain class of the LaboratoryResult
 */

class LaboratoryResult {
	Date date
	String details

	static scaffold= true
	static belongsTo = [patient:Patient]
}
