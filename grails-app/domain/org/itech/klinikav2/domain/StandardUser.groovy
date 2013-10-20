package org.itech.klinikav2.domain

class StandardUser extends User{

	Profile profile
	
    static constraints = {
		profile unique: true
    }
	

	

}
