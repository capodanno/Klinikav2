package org.itech.klinika

import enums.SecurityQuestion;

abstract class User {
	String username
	String password
	Date registrationDate 
	SecurityQuestion securityQ
	
    static constraints = {
		username blank: false
		password blank: false, password: true
		securityQ nullable:true 
    }
	
}
