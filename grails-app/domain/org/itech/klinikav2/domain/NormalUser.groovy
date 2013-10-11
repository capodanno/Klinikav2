package org.itech.klinika

abstract class NormalUser extends User{

	Profile profile
	
    static constraints = {
		profile unique: true
    }
	

	

}
