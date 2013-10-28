package org.itech.klinikav2.domain

import org.springframework.dao.DataIntegrityViolationException

/**
 * QueueElementController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class QueueElementController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [queueElementInstanceList: QueueElement.list(params), queueElementInstanceTotal: QueueElement.count()]
    }

    def create() {
        [queueElementInstance: new QueueElement(params)]
    }

    def save() {
        def queueElementInstance = new QueueElement(params)
        if (!queueElementInstance.save(flush: true)) {
            render(view: "create", model: [queueElementInstance: queueElementInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'queueElement.label', default: 'QueueElement'), queueElementInstance.id])
        redirect(action: "list", params:params)
    }

    def show() {
        def queueElementInstance = QueueElement.get(params.id)
        if (!queueElementInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'queueElement.label', default: 'QueueElement'), params.id])
            redirect(action: "list")
            return
        }

        [queueElementInstance: queueElementInstance]
    }

    def edit() {
        def queueElementInstance = QueueElement.get(params.id)
        if (!queueElementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'queueElement.label', default: 'QueueElement'), params.id])
            redirect(action: "list")
            return
        }

        [queueElementInstance: queueElementInstance]
    }

    def update() {
        def queueElementInstance = QueueElement.get(params.id)
        if (!queueElementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'queueElement.label', default: 'QueueElement'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (queueElementInstance.version > version) {
                queueElementInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'queueElement.label', default: 'QueueElement')] as Object[],
                          "Another user has updated this QueueElement while you were editing")
                render(view: "edit", model: [queueElementInstance: queueElementInstance])
                return
            }
        }

        queueElementInstance.properties = params

        if (!queueElementInstance.save(flush: true)) {
            render(view: "edit", model: [queueElementInstance: queueElementInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'queueElement.label', default: 'QueueElement'), queueElementInstance.id])
        redirect(action: "show", id: queueElementInstance.id)
    }

    def delete() {
        def queueElementInstance = QueueElement.get(params.id)
        if (!queueElementInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'queueElement.label', default: 'QueueElement'), params.id])
            redirect(action: "list")
            return
        }

        try {
            queueElementInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'queueElement.label', default: 'QueueElement'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'queueElement.label', default: 'QueueElement'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
	
}
