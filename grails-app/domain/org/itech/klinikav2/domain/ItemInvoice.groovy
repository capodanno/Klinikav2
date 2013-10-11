package org.itech.klinikav2.domain

class ItemInvoice extends Invoice{
	
	String name
	int quantity
	Double totalPrice
	Double unitPrice

    static constraints = {
    }
}
