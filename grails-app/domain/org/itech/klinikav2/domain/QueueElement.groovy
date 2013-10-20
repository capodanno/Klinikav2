package org.itech.klinikav2.domain

import java.util.Date;

import org.itech.klinikav2.enums.AppointmentType;


class QueueElement {
	AppointmentType appointmentType
	String complaints
	Date date
	Patient patient
	String timeAdmitted

	static hasOne = Patient
	
	public QueueElement(AppointmentType appointmentType, 
		String complaints, Date date, Patient patient, 
		String timeAdmitted) {
		super();
		this.appointmentType = appointmentType;
		this.complaints = complaints;
		this.date = date;
		this.patient = patient;
		this.timeAdmitted = timeAdmitted;
	}


	def Invoice generateInvoice()
	{
		
	}
}
