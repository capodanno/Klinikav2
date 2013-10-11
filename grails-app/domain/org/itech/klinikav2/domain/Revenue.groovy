package org.itech.klinika


class Revenue {
	Double totalRevenue
	
	static hasMany = [invoices: Invoice]

}
