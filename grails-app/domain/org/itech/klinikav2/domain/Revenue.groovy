package org.itech.klinikav2.domain
/**
 * @author Randy
 * 
 */

@Singleton
class Revenue {
	Double totalRevenue
	
	//this will make an appointment payment and invoice
	def makeAppointmentPayment(QueueElement queueElement)
	{
		
	}
	
	//this will make a balance payment
	def makeBalancePayment (Patient p)
	{
		
	}
	
	//this will make a purchase payment and invoice
	def makePurchasePayment (Item item, Patient p)
	{
		
	}
	static hasMany = [invoices: Invoice]

}
