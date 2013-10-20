package utils

import java.util.Date;
import org.itech.klinikav2.domain.Item;

class ItemNotifier {

	Item item
	//	ExpirationReminder reminder = ExpirationReminder.getInstance();
	static def grailsApplication
	static int days = grailsApplication.config.utils.expirationReminderDays
		
	//under construction. this will change the config days of reminder
	def setExpiryDayReminder(){
		//		grailsApplication.config.utils.expirationReminderDays = days		
		render grailsApplication.config.utils.expirationReminderDays
	}
	//under construction. this will return the value of the expiry day reminder
	public final def getExpiryDayReminder(){
		return grailsApplication.config.utils.expirationReminderDays
	}

	public static final void update(Item item) {
		def itemCurrentQuantity = item.currentQuantity
		if( itemCurrentQuantity <= item.minimumStockLevel)
		{
			if(item.hasReachedMinimum == true)
			{
				notifyMinStocks();
			}
			else
			{
				item.hasReachedMinimum = true
				notifyMinStocks();
			}
		}
	}

	public static Boolean checkExpiration(Date d, Item item) {
		//start_date = datetime.datetime.now() + datetime.timedelta(-30)
		def projectedDate = d + days.times{date.next()}
		if(projectedDate.after(item.expiryDate))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	//will trigger the events-push to notify about the expiration
	public static void notifExpiration()
	{
		
	}
	
	//will trigger the events-push to notify about the minimum stocks
	public static void notifyMinStocks(Map data) {

		event([namespace: 'browser', topic: 'notifyMinStocks', data:data]) // send the message to only browsers registered for this chatroom
	}






}
