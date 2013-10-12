package org.itech.klinikav2.domain

import org.itech.klinikav2.enums.SecurityQuestion;
/**
 * @author Randy
 * 
 */


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
