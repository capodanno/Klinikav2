package org.itech.klinikav2.controller

import org.itech.klinikav2.domain.Item;
import org.springframework.dao.DataIntegrityViolationException

import utils.ItemNotifier;

class ItemController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def exportService
	def grailsApplication
	
    def index() {
//        redirect(action: "list", params: params)
		
		ItemNotifier.notifyMinStocks()
    }

	
	//This will list the Items and its Details
    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [itemInstanceList: Item.list(params), itemInstanceTotal: Item.count()]
    }
	
	//This will list the Items with Low Stock Level
	def listItemsWithMinimumStockLevel(Integer max){
		params.max = Math.max(max ?: Item.count(), 1)
		if(!params.max) params.max = 10

		if(params?.format && params.format != "html"){
			response.contentType = grailsApplication.config.grails.mime.types[params.format]
			response.setHeader("Content-disposition", "attachment; filename=payments.${params.extension}")
			
			List fields = ["name", "description", "currentQuantity", "itemType"]
			Map labels = ["name":"Item Name", "description":"Description","currentQuantity":"Current Quantity","itemType":"Item Type"]
			
			def upperCase = { domain, value ->
				return value.toUpperCase()
			}
			
			Map formatters = [name: upperCase]
			Map parameters = [title: "Low Stocks Report", "column.widths": [0.2, 0.3, 0.2, 0.3]]
			exportService.export(params.format, response.outputStream,Item.list(params), fields, labels, formatters, parameters)
		}
		[itemInstanceList: Item.where {currentQuantity <= minStockLevel}, itemInstanceTotal: Item.count()]
		
	}
	def listItemsAndDetails(Integer max){
		params.max = Math.max(max ?: Item.count(), 1)
		if(!params.max) params.max = 10

		if(params?.format && params.format != "html"){
			response.contentType = grailsApplication.config.grails.mime.types[params.format]
			response.setHeader("Content-disposition", "attachment; filename=payments.${params.extension}")
			
			List fields = ["name", "description", "retailPrice", "currentQuantity", "itemType", "expiryDate"]
			Map labels = ["name":"Item Name", "description":"Description", "retailPrice":"Retail Price" ,"currentQuantity":"Current Quantity","itemType":"Item Type", "expiryDate":"Expiry Date"]
			
			def upperCase = { domain, value ->
				return value.toUpperCase()
			}
			
			Map formatters = [name: upperCase]
			Map parameters = [title: "Items Report", "column.widths": [0.3, 0.2, 0.2, 0.2, 0.2, 0.2]]
			
			exportService.export(params.format, response.outputStream,Item.list(params), fields, labels, formatters, parameters)
		}
		[itemInstanceList: Item.list(params), itemInstanceTotal: Item.count()]
		
	}
	

    def create() {
        [itemInstance: new Item(params)]
    }
		
    def save() {
        def itemInstance = new Item()
		itemInstance.currentQuantity = params.currentQuantity.toInteger();
		itemInstance.description = params.description;
		itemInstance.expiryDate = params.expiryDate;
		itemInstance.itemType = params.itemType;
		itemInstance.minStockLevel = params.minStockLevel.toInteger();
		itemInstance.name = params.name;
		itemInstance.retailPrice = params.retailPrice.toDouble();
		itemInstance.isActive= true
		itemInstance.hasReachedMinimum = false
        if (!itemInstance.save(flush: true)) {
            render(view: "create", model: [itemInstance: itemInstance])
			return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'item.label', default: 'Item'), itemInstance.id])
        redirect(action: "show", id: itemInstance.id)
    }

    def show(Long id) {
        def itemInstance = Item.get(id)
        if (!itemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'item.label', default: 'Item'), id])
            redirect(action: "list")
            return
        }
        [itemInstance: itemInstance]
    }

    def edit(Long id) {
        def itemInstance = Item.get(id)
        if (!itemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'item.label', default: 'Item'), id])
            redirect(action: "list")
            return
        }

        [itemInstance: itemInstance]
    }

    def update(Long id, Long version) {
        def itemInstance = Item.get(id)
        if (!itemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'item.label', default: 'Item'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (itemInstance.version > version) {
                itemInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'item.label', default: 'Item')] as Object[],
                          "Another user has updated this Item while you were editing")
                render(view: "edit", model: [itemInstance: itemInstance])
                return
            }
        }

        itemInstance.properties = params

        if (!itemInstance.save(flush: true)) {
            render(view: "edit", model: [itemInstance: itemInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'item.label', default: 'Item'), itemInstance.id])
        redirect(action: "show", id: itemInstance.id)
    }

    def delete(Long id) {
        def itemInstance = Item.get(id)
        if (!itemInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'item.label', default: 'Item'), id])
            redirect(action: "list")
            return
        }

        try {
            itemInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'item.label', default: 'Item'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'item.label', default: 'Item'), id])
            redirect(action: "show", id: id)
        }
    }
}
