package org.itech.klinika

class Medicine extends Item{
	Date expiryDate
	String genericName
	int minStock
	Date notificationDate

    static constraints = {
		expiryDate blank: false
    }
}
