package org.itech.klinikav2.domain

/*
 * Author: Jonah
 * Date: October 9, 2013
 * This is the domain class of the Patient object
 */

import java.util.Date;

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
		
	static constraints = 
	{
		firstName blank:false
		middleName blank: false
		lastName blank:false
		birthDate blank:false
		gender blank:false
		maritalStatus blank:false
		emailAddress email:true
		address_city blank:true
		address_street blank:true
		address_town blank:false
		address_province blank: false
		mobileNumber maxSize:11, validator:{val, obj->
			if(val.substring(0,2) != "09")
			{
				return 'item.wrongStart.mobileNum'
			}			 
		}
		telNumber blank:true
	}
	
	static hasMany = [vitalSigns:VitalSigns, diagnoses:Diagnosis, prescriptions:Prescription, medicalHistories:MedicalHistory, referrals:Referral,
		laboratoryResults:LaboratoryResult]
		
	public void logActivity(def activityType)
	{
		String logMsg= LogCreator.createLog(ActivityType.valueOf(activityType));
		String logSentence = "${new Date()} : ${logMsg}"
		logs.add(logSentence)		
	}	

	public Patient(String firstName, String middleName, String lastName,
			Date birthDate, Gender gender, MaritalStatus maritalStatus,
			Date dateOfRegistration, String emailAddress, String address_city,
			String address_street, String address_town,
			String address_province, String mobileNumber, String telNumber) {
		super();
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.birthDate = birthDate;
		this.gender = gender;
		this.maritalStatus = maritalStatus;
		this.dateOfRegistration = dateOfRegistration;
		this.emailAddress = emailAddress;
		this.address_city = address_city;
		this.address_street = address_street;
		this.address_town = address_town;
		this.address_province = address_province;
		this.mobileNumber = mobileNumber;
		this.telNumber = telNumber;
		this.isActive = true;
		this.isDeleted = false;
	}

	
}
