package org.itech.klinikav2.domain

import org.itech.klinikav2.enums.ActivityType

/*
 * Author: Jonah
 * Date: October 9, 2013
 * This is the domain class of the LogCreator object
 * This class acts as the Creator in the Factory pattern
 */

class LogCreator {

	public Log createLog(ActivityType activityType){		
		if(activityType== ActivityType.APPOINTMENT_BALANCE_PAYMENT)
		{
			return new AppointmentBalancePaymentLog();
		}
		else if(activityType== ActivityType.CHECK_UP)
		{
			return new CheckUpLog();
		}
		else if(activityType== ActivityType.PURCHASE)
		{
			return new PurchaseLog();
		}		
		else if(activityType== ActivityType.APPOINTMENT_BALANCE_PAYMENT)
		{
			return new AppointmentBalancePaymentLog();
		}
		else if(activityType== ActivityType.FOLLOWUP_CHECKUP)
		{
			return new FollowUpCheckUpLog();
		}
		else if(activityType== ActivityType.CHECKUP_PAYMENT)
		{
			return new CheckUpPaymentLog();
		}
//		else if(activityType== ActivityType.FORMS_PRESCRIPTION)
//		{
//			return new Forms();
//		}
//		else if(activityType== ActivityType.FORMS_LABREQUEST)
//		{
//			return new Forms;
//		}
		else if(activityType== ActivityType.LOG_IN)
		{
			return new LogInLog();
		}
		else if(activityType== ActivityType.LOG_OUT)
		{
			return new LogOutLog();
		}
		else return null;
		
	}
	
	public Log requestLog(ActivityType activityType){
		Log log;
		log = createLog(activityType);
		log.constructMessage();
		return log;
		//insert logic here
	}
}
