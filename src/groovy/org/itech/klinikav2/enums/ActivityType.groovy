package org.itech.klinikav2.enums

enum ActivityType{
	
	PURCHASE('purchase'),
	CHECK_UP('check up'),
	FOLLOWUP_CHECKUP('follow-up check-up'),
	CHECKUP_PAYMENT('check-up payment'),
	FORMS_PRESCRIPTION('prescription form'),
	FORMS_LABREQUEST('lab request form'),
	LOG_IN('log in'),
	LOG_OUT('log out'),
	APPOINTMENT_BALANCE_PAYMENT('appointment balance payment')
	
	final String type;
	
	public ActivityType(String type){
		this.type = type
	}
	
	String type(){
		return type
	}


}
