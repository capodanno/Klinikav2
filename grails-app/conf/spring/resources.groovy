// Place your Spring DSL code here
beans = {
	customPropertyEditorRegistrar(CustomDateEditorRegistrar)

	switch(Environment.current) {
		case Environment.PRODUCTION:
			smsGateway(org.itech.klinikav2.sms.ModemSmsGateway) {bean->
				bean.initMethod = 'init'
				bean.destroyMethod = 'destroy'
				modemPort=application.config.org.itech.klinikav2.sms.modemPort
			}
			break
		case Environment.DEVELOPMENT:
			smsGateway(org.itech.klinikav2.sms.MockSmsGateway)
			break
	}
	
	
	//	itemNotifier(org.itech.klinikav2.domain.ItemNotifier){
	//		singleton true
	//	}
}
