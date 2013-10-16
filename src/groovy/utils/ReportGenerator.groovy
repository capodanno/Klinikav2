package utils

import org.itech.klinikav2.controller.PatientController;
import org.itech.klinikav2.domain.Clinic;

class ReportGenerator {

	public static void generateReport(){
	}

	def listOfPatients(Integer max) {
		PatientController.list()
	}
	//		params.max = Math.min(max ?: 10, 100)
	//		[patientInstanceList: Patient.where{isDeleted==false}, patientInstanceTotal: Patient.count()]
	//		[patientInstanceList: Patient.list(), patientInstanceTotal: Patient.count()]

}
