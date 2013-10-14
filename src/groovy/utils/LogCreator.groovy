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

	public static String createLog(def activityType){		
		if(activityType.equals(ActivityType.APPOINTMENT_BALANCE_PAYMENT))
		{
			//return new AppointmentBalancePaymentLog();
			return "paid appointment balance"
		}
		else if(activityType.equals(ActivityType.CHECK_UP))
		{
			//return new CheckUpLog();
			return "had a check-up"
		}
		else if(activityType== ActivityType.PURCHASE)
		{
//			return new PurchaseLog();
			return "purchased item"
		}		
		else if(activityType== ActivityType.APPOINTMENT_BALANCE_PAYMENT)
		{
			//return new AppointmentBalancePaymentLog();
			return "paid appointment balance"
		}
		else if(activityType== ActivityType.FOLLOWUP_CHECKUP)
		{
			//return new FollowUpCheckUpLog();
			return "had a follow-up check-up"
		}
		else if(activityType== ActivityType.CHECKUP_PAYMENT)
		{
			//return new CheckUpPaymentLog();
			return "paid check-up charge"
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
			//return new LogInLog();
			return "logged in"
		}
		else if(activityType== ActivityType.LOG_OUT)
		{
			//return new LogOutLog();
			return "logged out"
		}
		else return null;
		
	}
	
//	public static Log requestLog(ActivityType activityType){
//		Log log;
//		log = createLog(activityType);
//		log.constructMessage();
//		return log;
//	}
}
