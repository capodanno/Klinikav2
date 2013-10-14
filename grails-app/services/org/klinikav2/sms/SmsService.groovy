package org.klinikav2.sms

import org.smslib.OutboundMessage;

class SmsService {
	static expose=['axis2']

	def smsGateway

	void sendSms(String phone, String text) {
		OutboundMessage message=smsGateway.sendSMS(phone,text)
		println message
	}
}

