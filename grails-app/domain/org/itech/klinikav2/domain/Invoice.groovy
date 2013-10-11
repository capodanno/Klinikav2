package org.itech.klinika

import enums.PaymentMethod;
import enums.PaymentOption;

abstract class Invoice {
	
	int number
	Date date
	boolean hasBalance
	String payer
	Double totalAmount
	PaymentMethod paymentMethod
	PaymentOption paymentOption
	Doctor doctor
	Patient patient

    static constraints = {
    }
}
