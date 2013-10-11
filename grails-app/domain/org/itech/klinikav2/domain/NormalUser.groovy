package org.itech.klinikav2.domain

abstract class NormalUser extends User{

	Profile profile
	
    static constraints = {
		profile unique: true
    }
	

	

}
