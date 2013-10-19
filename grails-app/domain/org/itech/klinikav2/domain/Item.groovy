package org.itech.klinikav2.domain

import java.util.Date;

import org.itech.klinikav2.enums.ItemType;

class Item {

	int currentQuantity
	String description
	Date expiryDate
	Boolean isActive = true
	ItemType itemType
	int minStockLevel
	String name
	Double retailPrice
	
	Boolean hasReachedMinimum
	Boolean newInstance

	static hasOne = ItemNotifier
	static constraints = {
		currentQuantity blank:false, min:1	
		description blank:true, nullable:true
		minStockLevel nullable: true
		name blank:false
		retailPrice nullable:true, blank:true
		hasReachedMinimum nullable:false  
		if(ItemType == ItemType.EQUIPMENT){
			expiryDate blank:true
		}
		else {
			expiryDate blank:false
		}
		
	}

	public Item(int currentQuantity, String description, Date expiryDate,
	Boolean isActive, ItemType itemType, int minStockLevel,
	String name, Double retailPrice,
	Boolean hasReachedMinimum) {
		super();
		this.currentQuantity = currentQuantity;
		this.description = description;
		this.expiryDate = expiryDate;
		this.isActive = true;
		this.itemType = itemType;
		this.minStockLevel = minStockLevel;
		this.name = name;
		this.retailPrice = retailPrice;
		this.hasReachedMinimum = false
		this.newInstance = true
	}

	public void setCurrentQuantity(int newQuantity) {
		if(newInstance == true){
			currentQuantity = newQuantity;
			notifier.update();
		}
		else{
			currentQuantity = newQuantity;
			newInstance=false
		}
		
	}

	public Boolean checkExpiry(Date dateToday) {
		return notifier.notifyExpiration(dateToday);
	}
}
