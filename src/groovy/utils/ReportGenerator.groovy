package utils

import org.itech.klinikav2.controller.PatientController;
import org.itech.klinikav2.domain.Clinic;
import org.itech.klinikav2.domain.Item

class ReportGenerator {

	public static void generateReport(){
	}

<<<<<<< HEAD

	//this will list the Items
	def listItemReport(Integer max){
//		params.max = Math.min(max ?: 10, 100)
//		[itemInstanceList: Item.list(params), itemInstanceTotal: Item.count()]
	}
=======
	def listOfPatients(Integer max) {
		PatientController.list()
	}
	//		params.max = Math.min(max ?: 10, 100)
	//		[patientInstanceList: Patient.where{isDeleted==false}, patientInstanceTotal: Patient.count()]
	//		[patientInstanceList: Patient.list(), patientInstanceTotal: Patient.count()]
>>>>>>> cc13a1013265aafa5d8d44ceb674bcdfa85e37e2

}
