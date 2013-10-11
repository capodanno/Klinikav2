package org.itech.klinikav2.domain
/**
 * 
 * @author Randy
 * 
 */


class Queue {
	Date today
	
	static hasMany = [queueElements: QueueElement]

}
