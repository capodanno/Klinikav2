package utils

import org.itech.klinikav2.domain.DailyCounter;
import org.itech.klinikav2.domain.Patient

/**
 * PatientCounter
 * A domain class describes the data object and it's mapping to the database
 */
class PatientCounter {
		
	/*author: jonah
	 * this method adds the counter on the patients who visited 
	 */	
	public static void addCount(DailyCounter dailyCounter){
		dailyCounter.patientCount++;
	}
	public static void addPatient(Patient patient, DailyCounter dailyCounter){
		def patients= dailyCounter.patients;
		patients.add(patient)
	}
}
