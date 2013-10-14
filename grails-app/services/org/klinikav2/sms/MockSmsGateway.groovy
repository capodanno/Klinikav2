package org.klinikav2.sms

import org.smslib.OutboundMessage;

class MockSmsGateway implements SmsGateway {

@Override
public OutboundMessage sendSMS(String phone, String text,boolean isUnicode=false) {
OutboundMessage msg = new OutboundMessage(phone, text);
return msg;
}
}

