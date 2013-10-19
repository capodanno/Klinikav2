package org.itech.klinikav2.domain

import java.util.Date;

import org.codehaus.groovy.grails.commons.GrailsApplication;
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
	Boolean newInstance
		
	static constraints = {
		currentQuantity blank:false, min:1
		expiryDate validator:{ val, obj ->
			if (obj.itemType == ItemType.EQUIPMENT) {
				val blank:true
			}
			if(val < new Date()){
				return 'item.expiryDate'
			}
		}

		retailPrice blank: false 
		description blank:true, nullable:true

		minStockLevel min:0
		name blank:false
		retailPrice nullable:true, blank:true

	}

	public Item(int currentQuantity, String description, Date expiryDate, ItemType itemType, int minStockLevel,
	String name, Double retailPrice) {
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
