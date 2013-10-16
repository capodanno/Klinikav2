package org.itech.klinikav2.domain

import org.springframework.dao.DataIntegrityViolationException

/**
 * ItemInvoiceController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class ItemInvoiceController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }
	
	//this will list the history reports
    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [itemInvoiceInstanceList: ItemInvoice.list(params), itemInvoiceInstanceTotal: ItemInvoice.count()]
    }
	

    def create() {
        [itemInvoiceInstance: new ItemInvoice(params)]
    }

    def save() {
        def itemInvoiceInstance = new ItemInvoice(params)
        if (!itemInvoiceInstance.save(flush: true)) {
            render(view: "create", model: [itemInvoiceInstance: itemInvoiceInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'itemInvoice.label', default: 'ItemInvoice'), itemInvoiceInstance.id])
        redirect(action: "show", id: itemInvoiceInstance.id)
    }

    def show() {
        def itemInvoiceInstance = ItemInvoice.get(params.id)
        if (!itemInvoiceInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'itemInvoice.label', default: 'ItemInvoice'), params.id])
            redirect(action: "list")
            return
        }

        [itemInvoiceInstance: itemInvoiceInstance]
    }

    def edit() {
        def itemInvoiceInstance = ItemInvoice.get(params.id)
        if (!itemInvoiceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'itemInvoice.label', default: 'ItemInvoice'), params.id])
            redirect(action: "list")
            return
        }

        [itemInvoiceInstance: itemInvoiceInstance]
    }

    def update() {
        def itemInvoiceInstance = ItemInvoice.get(params.id)
        if (!itemInvoiceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'itemInvoice.label', default: 'ItemInvoice'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (itemInvoiceInstance.version > version) {
                itemInvoiceInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'itemInvoice.label', default: 'ItemInvoice')] as Object[],
                          "Another user has updated this ItemInvoice while you were editing")
                render(view: "edit", model: [itemInvoiceInstance: itemInvoiceInstance])
                return
            }
        }

        itemInvoiceInstance.properties = params

        if (!itemInvoiceInstance.save(flush: true)) {
            render(view: "edit", model: [itemInvoiceInstance: itemInvoiceInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'itemInvoice.label', default: 'ItemInvoice'), itemInvoiceInstance.id])
        redirect(action: "show", id: itemInvoiceInstance.id)
    }

    def delete() {
        def itemInvoiceInstance = ItemInvoice.get(params.id)
        if (!itemInvoiceInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'itemInvoice.label', default: 'ItemInvoice'), params.id])
            redirect(action: "list")
            return
        }

        try {
            itemInvoiceInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'itemInvoice.label', default: 'ItemInvoice'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'itemInvoice.label', default: 'ItemInvoice'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
