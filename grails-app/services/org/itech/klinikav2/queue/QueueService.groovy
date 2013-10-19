package org.itech.klinikav2.queue

import org.itech.klinikav2.domain.Appointment
import org.itech.klinikav2.domain.NewAppointment;
import org.itech.klinikav2.domain.Patient
import org.itech.klinikav2.domain.PatientQueue
import org.itech.klinikav2.domain.QueueElement
import org.itech.klinikav2.enums.AppointmentType;

class QueueService {
	
	def addToQueue(Appointment appointment,PatientQueue queue )
	{
		if(appointment.instanceOf(NewAppointment))
		{
			appointment = (NewAppointment) appointment
			def patientLastName = appointment.firstName
			def patient= Patient.findByLastName(patientLastName)
			if( patient != null)
			{
				addApptToQueue(appointment, queue, patient)
			}
			else{
				Patient.create()
				
				addNewApptToQueue(appointment, queue)
			}
		}
	}
	
	def addNewApptToQueue(Appointment appointment, PatientQueue queue)
	{
		def name = appointment.
		Patient.findBy
		queue.addToQueueElements(appointment)
	}
	
	def addApptToQueue(Appointment appointment, PatientQueue queue, Patient patient)
	{
		queue.addToQueueElements(new QueueElement(AppointmentType.NEW, String complaints,
			new Date(), patient))
		queue.save()		
	}
	
	def removeFromQueue (QueueElement queueElement, Queue queue)
	{
		queue.removeFromQueueElements(queueElement)
	}
	
	def admitQueueElement(QueueElement queueElement)
	{
		
	}
	
	
}
