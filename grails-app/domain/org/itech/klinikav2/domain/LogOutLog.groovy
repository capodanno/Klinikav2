package org.itech.klinikav2.domain

/*
 * Author: Jonah
 * Date: October 9, 2013
 * This is the domain class of the LogOutLog object
 */

class LogOutLog extends Log{

	@Override
	public void constructMessage() {
		// TODO Auto-generated method stub
		message.equals("logged out")
	}

}
