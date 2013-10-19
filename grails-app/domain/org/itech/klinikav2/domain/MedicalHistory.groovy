package org.itech.klinikav2.domain

/*
 * Author: Jonah
 * Date: October 9, 2013
 * This is the domain class of the MedicalHistory object
 */

class MedicalHistory {
	String pastIllness
	String pastMedications

	static belongsTo = [patient:Patient]
}
