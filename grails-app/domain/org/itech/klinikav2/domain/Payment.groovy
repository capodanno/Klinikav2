package org.itech.klinikav2.domain

/*
 * Author: Jonah
 * Date: October 9, 2013
 * This is the domain class of the Payment object
 */

class Payment {

	Double amountPaid
	Double balance
	Date date
	boolean hasBalance
	
	
	static belongsTo  = [patient:Patient]
	static hasMany = [invoices:Invoice]
	//Invoice invoice, since wala pa mahimo ang class
}
