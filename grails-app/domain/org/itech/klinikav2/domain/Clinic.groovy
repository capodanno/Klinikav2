package org.itech.klinikav2.domain

import utils.ReportGenerator;

/**
 * 
 * @author Randy
 *
 */
class Clinic {

	String address
	String background
	String clinicHourEnd
	String clinicHourStart
	Date dateToday
	String mobileNumber
	String name
	String telNumber
	
	static hasOne = [inventory:Inventory]
	
	
	public void closeOut()
	{
			}
	
	public void setDateToday()
	{
		inventory.update();
	}
	
	public void initialize()
	{
		setDateToday();
	}
	
	//public void makeAppointmentPayment()
}
