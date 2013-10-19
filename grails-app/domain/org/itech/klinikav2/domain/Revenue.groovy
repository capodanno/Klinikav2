package org.itech.klinikav2.domain
/**
 * @author Randy
 * 
 */

@Singleton
class Revenue {
	Double totalRevenue
	Inventory inventory = Inventory.getInstance()
	
	//singleton class methods
	private static final INSTANCE = new Revenue()
	static getInstance(){
		return INSTANCE
	}
	private Revenue(){

	}

	//this will make an appointment payment and invoice
	def makeAppointmentPayment(QueueElement queueElement)
	{
		
	}
	
	//this will make a balance payment
	def makeBalancePayment (Patient p)
	{
		
	}
	
	//this will make a purchase payment and invoice
	def makePurchasePayment(Item item, int quantity, Patient p)
	{
		p.createPurchase()
		inventory.subtractQuantity(item, quantity)		
	}
	static hasMany = [invoices: Invoice]

}
