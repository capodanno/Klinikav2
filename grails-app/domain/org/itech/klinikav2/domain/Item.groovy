package org.itech.klinikav2.domain

import java.util.Date;



import org.itech.klinikav2.enums.ItemType;

import utils.ItemNotifier;

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
	Boolean newInstance
	
	static constraints = {
		currentQuantity blank:false, min:1, validator:{ val, obj->
			val > obj.minStockLevel
		}
		expiryDate validator:{ val, obj ->
			if (val <= new Date()) {
				return "soonToExpire"
			}
			if (obj.itemType == ItemType.EQUIPMENT) {
				val blank:true
			}// rendered as domainClassName.startDate.message2 from messages.properties
			if(val != obj.d+30){
				true
			}
		}
		
		retailPrice blank: true
		description blank:true, nullable:true
		
		minStockLevel nullable: true
		name blank:false
		retailPrice nullable:true, blank:true
	}

	public Item(int currentQuantity, String description, Date expiryDate,
	Boolean isActive, ItemType itemType, int minStockLevel,
	String name, def retailPrice) {
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
			ItemNotifier.update(this);
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
