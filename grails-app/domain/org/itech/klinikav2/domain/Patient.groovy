package org.itech.klinikav2.domain

/*
 * Author: Jonah
 * Date: October 9, 2013
 * This is the domain class of the Patient object
 */

import org.itech.klinikav2.enums.ActivityType
import org.itech.klinikav2.enums.Gender
import org.itech.klinikav2.enums.MaritalStatus

class Patient {
	String address_city
	String address_street
	String address_town
	String address_province
	Date birthDate
	Date dateOfRegistration
	String emailAddress
	String firstName
	Gender gender
	Boolean isActive
	Boolean isDeleted
	String lastName
	MaritalStatus maritalStatus
	String middleName
	String mobileNumber
	String telNumber
	
	static hasMany = [logs:Log, vitalSigns:VitalSigns, diagnoses:Diagnosis, prescriptions:Prescription, medicalHistories:MedicalHistory, referrals:Referral,
		laboratoryResults:LaboratoryResult]
	
	public void logActivity(ActivityType activityType)
	{
		LogCreator logCreator = new LogCreator();
		Log log = logCreator.requestLog(activityType);
		logs.add(log);
		
	}
	

}
