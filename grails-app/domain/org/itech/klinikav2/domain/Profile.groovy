package org.itech.klinika

abstract class Profile {

	String firstName
	String middleName
	String lastName
	Date birthdate
	String address
	String mobileNumber
	String telNumber
	String email
		
    static constraints = {
		firstName blank: false, matches: /[A-Z].*/
		middleName blank: false, matches: /[A-Z].*/
		lastName blank: false, matches: /[A-Z].*/
		birthdate blank: false
		address blank: false, matches: /[A-Z].*/
		mobileNumber blank: false
		email blank: true, email: true
		
    }
	
	public String toString(){
		String fullname = firstName + " " + lastName
		return fullname
	}
	
}
