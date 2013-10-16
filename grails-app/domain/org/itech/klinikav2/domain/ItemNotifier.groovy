package org.itech.klinikav2.domain

import java.util.Date;

class ItemNotifier {

	Item item
//	ExpirationReminder reminder = ExpirationReminder.getInstance();
	int expirationReminderDays
	
	static mapping = {
	}

	static constraints = {
	}

	public void update() {		
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

	public void notifyMinStocks(){
		//codes here to tell the user that the item has min stocks
	}





}
