package utils

import java.util.Date;

import org.itech.klinikav2.domain.Item;

class ItemNotifier {

	Item item
	//	ExpirationReminder reminder = ExpirationReminder.getInstance();
	int expirationReminderDays
	def grailsApplication

	def setExpiryDayReminder(){
		//		grailsApplication.config.utils.expirationReminderDays = days
		ConfigObject c = grailsApplication.config.utils.expirationReminderDays
		grailsApplication.config.merge(c)
		render grailsApplication.config.utils.expirationReminderDays
	}

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

	public Boolean notifyExpiration(Date date) {
		//start_date = datetime.datetime.now() + datetime.timedelta(-30)
		def projectedDate = date + expirationReminderDays.times{date.next()}
		if(projectedDate.after(item.expiryDate))
		{
			return true;
		}
		else
		{
			return false;
		}
	}

	public static void notifyMinStocks(Map data) {

		event([namespace: 'browser', topic: 'notifyMinStocks', data:data]) // send the message to only browsers registered for this chatroom
	}
	//	public void
	//		//codes here to tell the user that the item has min stocks
	//	}





}
