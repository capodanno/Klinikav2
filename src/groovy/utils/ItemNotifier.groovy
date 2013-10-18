package utils

import java.util.Date;

import org.itech.klinikav2.domain.Item;

class ItemNotifier {

//	ExpirationReminder reminder = ExpirationReminder.getInstance();
	int expirationReminderDays
	
	public static void update(Item item) {		
			def itemCurrentQuantity = item.currentQuantity
			if( itemCurrentQuantity <= item.minimumStockLevel)
			{
				if(item.hasReachedMinimum == true)
				{			
					notifyMinStocks(item);		
				}
				else
				{
					item.hasReachedMinimum = true
					notifyMinStocks(item);
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

	public void notifyMinStocks(Item item){
		//codes here to tell the user that the item has min stocks
	}





}
