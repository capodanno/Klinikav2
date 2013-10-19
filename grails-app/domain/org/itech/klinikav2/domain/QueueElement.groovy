package org.itech.klinikav2.domain

import org.itech.klinikav2.enums.AppointmentType;


class QueueElement {
	AppointmentType appointmentType
	String complaints
	Date date
	Patient patient
	String timeAdmitted

	def Invoice generateInvoice(patient)
	{
		
	}
}
