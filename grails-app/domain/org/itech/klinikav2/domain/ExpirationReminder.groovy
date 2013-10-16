package org.itech.klinikav2.domain

@Singleton
class ExpirationReminder {
	
	def days = 30
	private static final INSTANCE = new ExpirationReminder()
	
	static getInstance()
	{
		return INSTANCE
	}
	
	private ExpirationReminder()
	{
	
	}
}
