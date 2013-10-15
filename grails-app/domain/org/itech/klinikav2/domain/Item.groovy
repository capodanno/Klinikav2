package org.itech.klinikav2.domain

import java.util.Date;

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
	ItemNotifier notifier = ItemNotifier.getInstance()
	Boolean hasReachedMinimum
	
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
