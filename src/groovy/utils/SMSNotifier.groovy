package utils

import org.itech.klinikav2.domain.Patient
import org.itech.klinikav2.enums.NotificationType;


import groovyx.net.http.EncoderRegistry
import groovyx.net.http.HTTPBuilder
import static groovyx.net.http.Method.GET
import static groovyx.net.http.ContentType.TEXT
import static groovyx.net.http.Method.*
import grails.persistence.Event
import static groovyx.net.http.ContentType.URLENC

/** * @author Randy * */

class SMSNotifier {
	//this method is to send a message with a patient parameter and message
	public static String chooseMessage(NotificationType notifType, Patient patient)
	{
		def message= "Greetings! You will have a follow-up appointment tomorrow."
		def doctor= "Doctor: "
		def time= "Time: "
		def p = patient
		if (notifType == NotificationType.FOLLOW_UP_APPOINTMENT)
		{
			message= "Greetings! You will have a follow-up appointment tomorrow."
			return message
		}
		else if (notifType == NotificationType.BALANCE)
		{
			message= "Greetings! Just reminding you of your balance for appointment payment."
			return message
		}
	}

	def sendToList(ArrayList<Patient> patients, NotificationType notifType)
	{
		def patientList= patients
		for (int i=0; i< patientList.size(); i++)
		{ def patient = patientList.get(i)
			def message = chooseMessage(notifType, patient)
			sendClickatellSms(patient.mobileNumber, message)
		}
	}

	def sendClickatellSms(String number, def text)
	{
		def http = new HTTPBuilder('http://api.clickatell.com/')
		http.contentType = TEXT
		EncoderRegistry encoders = new EncoderRegistry();
		encoders.setCharset('ISO-8859-1') 
		http.setEncoderRegistry(encoders)

		http.request(POST)
		{
			uri.path = 'http/sendmsg'
			requestContentType = URLENC
			if (number.substring(0, 1) == '+')
			{ // Remove a leading plus sign
				number = number.substring(1)
			}
			else (number.substring(0, 1) == '0')
			{ // Remove a leading zero
				number = "63"+number.substring(1)
			}
			body = [ api_id: '3442677', user: 'iTech013', password: 'ingenium123..', to: number, text: text]

			response.success =
			{ resp, reader ->
				def msg = reader.text
				if (msg.substring(0, 2) == 'ID') { return 0 }
				else if (msg.substring(0, 3) == 'ERR')
				{
					log.error("Clickatell " + msg)
					return msg.substring(5,toInteger())
				}
				else
				{ return 1 }

			}
			response.failure = { resp ->
				log.error("Failed to contact Clickatell: ${resp.statusLine}")
				return 1
			}
		}
	}

}