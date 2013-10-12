package utils

import org.itech.klinikav2.domain.AppointmentBalancePaymentLog;
import org.itech.klinikav2.domain.CheckUpLog;
import org.itech.klinikav2.domain.CheckUpPaymentLog;
import org.itech.klinikav2.domain.FollowUpCheckUpLog;
import org.itech.klinikav2.domain.Log;
import org.itech.klinikav2.domain.LogInLog;
import org.itech.klinikav2.domain.LogOutLog;
import org.itech.klinikav2.domain.PurchaseLog;
import org.itech.klinikav2.enums.ActivityType

/*
 * Author: Jonah
 * Date: October 9, 2013
 * This is the domain class of the LogCreator object
 * This class acts as the Creator in the Factory pattern
 */

class LogCreator {

	public static Log createLog(ActivityType activityType){		
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
	
	public static Log requestLog(ActivityType activityType){
		Log log;
		log = createLog(activityType);
		log.constructMessage();
		return log;
		//insert logic here
	}
}
