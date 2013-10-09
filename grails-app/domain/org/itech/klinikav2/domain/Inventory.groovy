package org.itech.klinikav2.domain

class Inventory {

	static belongsTo = [clinic:Clinic]
	static hasMany = [items:Item]

	ArrayList<Item> minimumItems = new ArrayList();
	ArrayList<Item> aboutToExpireItems = new ArrayList();

	public void addQuantity(Item item) {
		int newQuantity= item.currentQuantity++;
		item.setCurrentQuantity(newQuantity);
	}

	public void subtractQuantity(Item item) {
		int newQuantity= item.currentQuantity--;
		item.setCurrentQuantity(newQuantity);
	}

	public ArrayList<Item> getHasReachedMinimum() {
		for (i=0; i<items.size(); i++) {
			def item = items[i];
			if(item.hasReachedMinimum.equals(true)) {
				minimumItems.add(item);
			}
		}
		return minimumItems
	}

	public Boolean isValidEntry(ArrayList<Item> list, Item i) {
		def value;
		if(list==null) {
			value=true;
		}
		else if(!list.contains(i)) {
			value=true
		}
		else {
			value=false;
		}
		return value;
	}
	
	public void checkExpiry(Date dateToday) {
		for (i=0; i<items.size(); i++) {
			def item = items[i];
			boolean value = item.checkExpiry(dateToday)
			if(value==true){
				if(isValidEntry(aboutToExpireItems, item)){
					aboutToExpireItems.add(item)
				}
			}
		}
	}

	public void update()
	{
		checkExpiry(Clinic.getDateToday);
	}	
}
