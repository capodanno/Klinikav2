package org.itech.klinikav2.domain

import org.itech.klinikav2.enums.ActivityType

/*
 * Author: Jonah
 * Date: October 9, 2013
 * This is the domain class of the Log object
 * this will be used to instantiate different log types for both the patient and the user
 */

abstract class Log {

	ActivityType activityType
	Date date
	String message
	
	//this will be used as a semi-factory pattern to make different logs
	public abstract void constructMessage();
	
	
}
