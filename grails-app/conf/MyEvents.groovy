events = {
	'notifyMinStocks' namespace: 'browser', browser:true, browserFilter: { message, request -> println "Item has reached minimum stocks"}
	return true
}
