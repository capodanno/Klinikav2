package org.itech.klinikav2.domain

/*
 * Author: Jonah
 * Date: October 9, 2013
 * This is the domain class of the Patient object
 */

import org.itech.klinikav2.enums.ActivityType
import org.itech.klinikav2.enums.Gender
import org.itech.klinikav2.enums.MaritalStatus

import utils.LogCreator;

class Patient {
	String firstName
	String middleName
	String lastName
	Date birthDate
	Gender gender
	MaritalStatus maritalStatus
	Date dateOfRegistration = new Date()
	String emailAddress
	String address_city
	String address_street
	String address_town
	String address_province
	String mobileNumber
	String telNumber
	Boolean isActive
	Boolean isDeleted
	def logs= []
//	assert emptyList.size() == 0
//	emptyList.add(5)
		
	static hasMany = [vitalSigns:VitalSigns, diagnoses:Diagnosis, prescriptions:Prescription, medicalHistories:MedicalHistory, referrals:Referral,
		laboratoryResults:LaboratoryResult]
		
	public void logActivity(def activityType)
	{
		String logMsg= LogCreator.createLog(ActivityType.valueOf(activityType));
		String logSentence = "${new Date()} : ${logMsg}"
		logs.add(logSentence)		
	}
	

}
