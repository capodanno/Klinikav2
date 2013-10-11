package org.itech.klinikav2.domain

import org.itech.klinikav2.enums.*;
/**
 * 
 * @author Randy
 *
 */

abstract class Invoice {
	
	int number
	Date date
	boolean hasBalance
	String payer
	Double totalAmount
	PaymentOption paymentOption
	PaymentMethod paymentMethod
	Doctor doctor
	Patient patient

    static constraints = {
    }
}
