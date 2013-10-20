package org.itech.klinikav2.domain
/**
 * 
 * @author Randy
 * 
 */


class Schedule {

	static hasMany = [events:Event]
	static belongsTo = [doctor: Doctor]
	
	static scaffolding = true

}
