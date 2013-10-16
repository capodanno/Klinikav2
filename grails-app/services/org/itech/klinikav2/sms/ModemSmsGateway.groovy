package org.itech.klinikav2.sms

import org.smslib.AGateway
import org.smslib.IInboundMessageNotification;
import org.smslib.InboundMessage
import org.smslib.Library;
import org.smslib.Message;
import org.smslib.OutboundMessage;
import org.smslib.Service;
import org.smslib.Message.MessageTypes
import org.smslib.modem.SerialModemGateway;

class ModemSmsGateway implements SmsGateway {
	String modemPort

	OutboundMessage sendSMS(String phone,String text, boolean isUnicode=false) {
		// Send a message synchronously.
		OutboundMessage msg = new OutboundMessage(phone, text);
		if(isUnicode)
			msg.setEncoding Message.MessageEncodings.ENCUCS2
		Service.getInstance().sendMessage(msg);
		return msg;
	}

	void init() {
		System.setProperty("smslib.serial.polling", "");
		SerialModemGateway gateway = new SerialModemGateway("gsmmodem", modemPort, 115200, "ZTE", "");
		gateway.getATHandler().setStorageLocations("SMME")
		gateway.setInbound(true);
		gateway.setOutbound(true);

		Service.getInstance().setInboundMessageNotification(new InboundMessageNotification())
		Service.getInstance().addGateway(gateway);
		Service.getInstance().startService();
	}

	void destroy() {
		Service.getInstance().stopService();
	}
}

class InboundMessageNotification implements IInboundMessageNotification {
	public void process(AGateway gateway, MessageTypes msgType, InboundMessage msg) 
	{
		if (msgType == MessageTypes.INBOUND) {
			println ">>> New Inbound message detected from Gateway"
			println msg
		}
	}
}
