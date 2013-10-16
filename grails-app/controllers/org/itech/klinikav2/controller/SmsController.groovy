package org.itech.klinikav2.controller

/**
 * Author:Jonah
 * 10/15
 * SmsController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
import java.security.MessageDigest;
import org.apache.commons.codec.binary.Base64;


class SmsController {
	def smsGateway
	private static final String SECRET_KEY="kjujhbav"

	def sendSms= {
		String phone=params.phone
		String text=params.text
		String sign=params.sign

		if(!phone||!text||!sign) {
			render("not all params specified: required phone, text, sign")
			return
		}
		println "text: $text"
		if(!validateSign()) {
			render("wrong signature")
			return
		}

		def msg=smsGateway.sendSMS("+$phone",text,true)
		flash.message=msg
		render("ok")
	}

	def validateSign={
		MessageDigest digest=MessageDigest.getInstance("SHA-1")
		digest.update((params.phone+params.text+SECRET_KEY).getBytes())
		def sign=new String(Base64.encodeBase64(digest.digest()))

		println "Sign on GW: $sign"
		println "Sign from client: ${params.sign}"

		return sign==params.sign
	}
}

