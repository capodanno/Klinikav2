package org.itech.klinikav2.domain
/**
 * 
 * @author Randy
 *
 */

class Event {

	String name
	String location
	String details
	Date eventStart
	Date eventEnd
	
	static belongsTo = Doctor
    static constraints = { 
		 
    }
}
