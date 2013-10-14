package org.itech.klinikav2.domain

import java.util.Date;

class ItemNotifier {

	int expirationReminderDays = 30
	
	Item item
	private static ItemNotifier instance;
	
	private ItemNotifier()
	{
		
	}
	
	public static ItemNotifier getInstance()
	{
		
		if (instance == null)
		{
			instance = new ItemNotifier();
		}		
		return instance;
	}
		
	static mapping = {
	}
	
	static constraints = {
	}
	
	public void update()
	{
		itemCurrentQuantity = item.getCurrentQuantity();
		Boolean value = isMinimum(item);
		item.setHasReachedMinimum(value);	
	}
	
	public boolean isMinimum(Item item){
		if(item.currentQuantity <= item.minStockLevel)
		{
			return true;
		}
		else{
			return false;
		}		
	}
	
	public Boolean notifyExpiration(Date date)
	{
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
