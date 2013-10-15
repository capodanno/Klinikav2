package org.itech.klinikav2.sms

import org.smslib.OutboundMessage;

interface SmsGateway {
	OutboundMessage sendSMS(String phone,String text)
	OutboundMessage sendSMS(String phone,String text,boolean isUnicode)
}