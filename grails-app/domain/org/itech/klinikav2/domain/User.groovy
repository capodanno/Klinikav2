package org.itech.klinikav2.domain

import org.itech.klinikav2.enums.SecurityQuestion;

/**
 * @author Randy
 * 
 */


abstract class User extends SecUser{

	Date registrationDate
	boolean isfirstLog
	SecurityQuestion question
	String answer
	
	
    static constraints = {
		
    }
	
}
