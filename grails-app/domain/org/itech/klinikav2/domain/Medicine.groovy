package org.itech.klinikav2.domain

class Medicine extends Item{
	Date expiryDate
	String genericName
	int minStock
	Date notificationDate

    static constraints = {
		expiryDate blank: false
    }
}
