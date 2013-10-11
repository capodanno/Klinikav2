package org.itech.klinikav2.domain
/**
 * @author Randy
 * 
 */


class Revenue {
	Double totalRevenue
	
	static hasMany = [invoices: Invoice]

}
