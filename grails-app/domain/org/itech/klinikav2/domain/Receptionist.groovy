package org.itech.klinika

class Receptionist extends Profile{

	static hasMany = [doctors: Doctor]
	static belongsTo = Doctor
	
    static constraints = {
    }
}
