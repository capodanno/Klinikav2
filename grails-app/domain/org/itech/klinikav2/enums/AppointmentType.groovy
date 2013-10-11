package org.itech.klinikav2.enums

enum AppointmentType {
	NEW('new'), FOLLOW_UP('follow up')
	
	final String type;
	
	public AppointmentType(String type){
		this.type = type
	}
	
	String type(){
		return type
	}

}
