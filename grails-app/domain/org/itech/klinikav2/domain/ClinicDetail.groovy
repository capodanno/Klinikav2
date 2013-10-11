package org.itech.klinika

class ClinicDetail {
	String clinicName
	String clinicHours
	String address
	String mobileNum
	String telNum
	String mission
	String vision
	String location
	String facebookUrl
	String twitterUrl
	String email
	
	Profile profile
	

    static constraints = {
		clinicName blank: false
		clinicHours blank: false
		address blank: false, widget: 'textarea'
		mobileNum blank: false
		telNum blank: false
		mission blank: false
		vision blank: false
		location: blank: false
		facebookUrl blank: true
		twitterUrl blank: true
		email blank: false, email: true
    }
}
