package org.itech.klinikav2.domain

import java.awt.List;

import utils.ItemNotifier;


@Singleton
class Inventory {

	static belongsTo = [clinic:Clinic]
	static hasMany = [items:Item]

	//static methods
	private static final INSTANCE = new Inventory()
	static getInstance(){
		return INSTANCE
	}
	private Inventory(){

	}

	ArrayList<Item> items_minimum = new ArrayList();
	ArrayList<Item> items_aboutToExpire= new ArrayList();

	public void addQuantity(Item item) {
		int newQuantity= item.currentQuantity++;
		item.setCurrentQuantity(newQuantity);
	}

	public void subtractQuantity(Item item, int quantity) {
		int newQuantity= item.currentQuantity - quantity;
		item.setCurrentQuantity(newQuantity);
	}

	//this method will list down items that have reached min quantity
	public void checkMinItems() {
		def itemList = Item.list()
		for (i=0; i<itemList.size(); i++) {
			def item = itemList.get(i);
			def value = item.hasReachedMinimum
			if(value==true){
				if(isValidEntry(items_minimum, item)){
					items_minimum.add(item)
				}
			}

		}
		if(items_aboutToExpire.size != null)
		{
			ItemNotifier.notifyExpiration();
		}
	}

	public ArrayList<Item> getHasReachedMinimum() {
		for (i=0; i<items.size(); i++) {
			def item = items[i];
			if(item.hasReachedMinimum.equals(true)) {
				minimumItems.add(item);
			}
		}
		return minimumItems
		ItemNotifier.notifExpiration();
	}

	//this method will check if the item already is present in the list
	public Boolean isValidEntry(ArrayList<Item> list, def listIndex, Item item) {
		def value;
		if(list==null) {
			value=true;
		}
		else{
			for(int i; i<=list.size(); i++)
			{
				if(list.get(i) == item)
				{
					value == false
				}
			}
		}
	}

	//this will check if the item is in list && the data is updated, if no, remove the item from list
	public void toBeRemovedFromList(ArrayList<Item> list, Item item)
	{
		def value
		for(int i; i<=list.size(); i++)
			{
				if(list.get(i) == item)
				{
					list.remove(i)
				}
			}
	
	}

	//this method will check each item registered if it will expire
	public void checkExpiry(Date dateToday) {
		def itemList = Item.list()
		for (i=0; i<itemList.size(); i++) {
			def item = itemList[i];
			Date expirationDate = item.expiryDate
			def value = ItemNotifier.checkExpiration(date, item)
			if(value==true){
				if(isValidEntry(items_aboutToExpire, item)){
					items_aboutToExpire.add(item)
				}
			}
			else
			{
				toBeRemovedFromList(items_aboutToExpire, item)
			}
		}
		if(items_aboutToExpire.size != null)
		{
			ItemNotifier.notifyExpiration();
		}
	}

	public void update(Date d)
	{
		checkExpiry(d);
	}
}
