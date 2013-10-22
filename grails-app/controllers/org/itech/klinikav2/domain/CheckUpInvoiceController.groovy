package org.itech.klinikav2.domain

import org.itech.klinikav2.domain.CheckUpInvoice;
import org.springframework.dao.DataIntegrityViolationException

/**
 * CheckUpInvoiceController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class CheckUpInvoiceController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }
	
	//This will List the unpaid invoice Balances


    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [checkUpInvoiceInstanceList: CheckUpInvoice.list(params), checkUpInvoiceInstanceTotal: CheckUpInvoice.count()]
    }

    def create() {
        [checkUpInvoiceInstance: new CheckUpInvoice(params)]
    }

    def save() {
        def checkUpInvoiceInstance = new CheckUpInvoice(params)
        if (!checkUpInvoiceInstance.save(flush: true)) {
            render(view: "create", model: [checkUpInvoiceInstance: checkUpInvoiceInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'checkUpInvoice.label', default: 'CheckUpInvoice'), checkUpInvoiceInstance.id])
        redirect(action: "show", id: checkUpInvoiceInstance.id)
    }

    def show() {
        def checkUpInvoiceInstance = CheckUpInvoice.get(params.id)
        if (!checkUpInvoiceInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'checkUpInvoice.label', default: 'CheckUpInvoice'), params.id])
            redirect(action: "list")
            return
        }

        [checkUpInvoiceInstance: checkUpInvoiceInstance]
    }

    def edit() {
        def checkUpInvoiceInstance = CheckUpInvoice.get(params.id)
        if (!checkUpInvoiceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'checkUpInvoice.label', default: 'CheckUpInvoice'), params.id])
            redirect(action: "list")
            return
        }

        [checkUpInvoiceInstance: checkUpInvoiceInstance]
    }

    def update() {
        def checkUpInvoiceInstance = CheckUpInvoice.get(params.id)
        if (!checkUpInvoiceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'checkUpInvoice.label', default: 'CheckUpInvoice'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (checkUpInvoiceInstance.version > version) {
                checkUpInvoiceInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'checkUpInvoice.label', default: 'CheckUpInvoice')] as Object[],
                          "Another user has updated this CheckUpInvoice while you were editing")
                render(view: "edit", model: [checkUpInvoiceInstance: checkUpInvoiceInstance])
                return
            }
        }

        checkUpInvoiceInstance.properties = params

        if (!checkUpInvoiceInstance.save(flush: true)) {
            render(view: "edit", model: [checkUpInvoiceInstance: checkUpInvoiceInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'checkUpInvoice.label', default: 'CheckUpInvoice'), checkUpInvoiceInstance.id])
        redirect(action: "show", id: checkUpInvoiceInstance.id)
    }

    def delete() {
        def checkUpInvoiceInstance = CheckUpInvoice.get(params.id)
        if (!checkUpInvoiceInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'checkUpInvoice.label', default: 'CheckUpInvoice'), params.id])
            redirect(action: "list")
            return
        }

        try {
            checkUpInvoiceInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'checkUpInvoice.label', default: 'CheckUpInvoice'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'checkUpInvoice.label', default: 'CheckUpInvoice'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
