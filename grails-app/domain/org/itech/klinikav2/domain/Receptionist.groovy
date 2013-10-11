package org.itech.klinikav2.domain
/**
 * 
 * @author Randy
 *
 */

class Receptionist extends Profile{

	static hasMany = [doctors: Doctor]
	static belongsTo = Doctor
	
    static constraints = {
    }
}
