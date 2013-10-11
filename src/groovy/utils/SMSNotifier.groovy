package utils

import org.itech.klinikav2.domain.Patient

/**
 * @author Randy
 * 
 */


class SMSNotifier {
	
	//this method is to send a message with a patient parameter and message
	public static void sendMessage(ArrayList<Patient> patients, String message){
		def patientList= patients
		for (int i=0; i< patientList.size(); i++){
			
		}
	}
	
	public static void sendSMS()
	{
		
	}
}
