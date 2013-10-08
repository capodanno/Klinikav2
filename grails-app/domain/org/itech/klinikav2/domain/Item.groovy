package org.itech.klinikav2.domain

import org.itech.klinikav2.enums.ItemType;

class Item {
	
	int currentQuantity
	String description
	Date expiryDate
	Boolean isActive
	ItemType itemType
	int minStockLevel
	String name
	Double retailPrice
	
	Boolean hasReachedMinimum
		
	static hasOne = [notifier:ItemNotifier]

	public void setCurrentQuantity(int newQuantity)
	{
		currentQuantity = newQuantity;
		notifier.update();
	}
	
	public Boolean checkExpiry(Date dateToday)
	{				
		return notifier.notifyExpiration(dateToday);
	}
	
	

	
}
