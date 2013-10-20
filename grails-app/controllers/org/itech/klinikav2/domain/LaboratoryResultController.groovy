package org.itech.klinikav2.domain

import org.springframework.dao.DataIntegrityViolationException

/**
 * LaboratoryResultController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class LaboratoryResultController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [laboratoryResultInstanceList: LaboratoryResult.list(params), laboratoryResultInstanceTotal: LaboratoryResult.count()]
    }

    def create() {
        [laboratoryResultInstance: new LaboratoryResult(params)]
    }

    def save() {
        def laboratoryResultInstance = new LaboratoryResult(params)
        if (!laboratoryResultInstance.save(flush: true)) {
            render(view: "create", model: [laboratoryResultInstance: laboratoryResultInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'laboratoryResult.label', default: 'LaboratoryResult'), laboratoryResultInstance.id])
        redirect(action: "show", id: laboratoryResultInstance.id)
    }

    def show() {
        def laboratoryResultInstance = LaboratoryResult.get(params.id)
        if (!laboratoryResultInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'laboratoryResult.label', default: 'LaboratoryResult'), params.id])
            redirect(action: "list")
            return
        }

        [laboratoryResultInstance: laboratoryResultInstance]
    }

    def edit() {
        def laboratoryResultInstance = LaboratoryResult.get(params.id)
        if (!laboratoryResultInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'laboratoryResult.label', default: 'LaboratoryResult'), params.id])
            redirect(action: "list")
            return
        }

        [laboratoryResultInstance: laboratoryResultInstance]
    }

    def update() {
        def laboratoryResultInstance = LaboratoryResult.get(params.id)
        if (!laboratoryResultInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'laboratoryResult.label', default: 'LaboratoryResult'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (laboratoryResultInstance.version > version) {
                laboratoryResultInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'laboratoryResult.label', default: 'LaboratoryResult')] as Object[],
                          "Another user has updated this LaboratoryResult while you were editing")
                render(view: "edit", model: [laboratoryResultInstance: laboratoryResultInstance])
                return
            }
        }

        laboratoryResultInstance.properties = params

        if (!laboratoryResultInstance.save(flush: true)) {
            render(view: "edit", model: [laboratoryResultInstance: laboratoryResultInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'laboratoryResult.label', default: 'LaboratoryResult'), laboratoryResultInstance.id])
        redirect(action: "show", id: laboratoryResultInstance.id)
    }

    def delete() {
        def laboratoryResultInstance = LaboratoryResult.get(params.id)
        if (!laboratoryResultInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'laboratoryResult.label', default: 'LaboratoryResult'), params.id])
            redirect(action: "list")
            return
        }

        try {
            laboratoryResultInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'laboratoryResult.label', default: 'LaboratoryResult'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'laboratoryResult.label', default: 'LaboratoryResult'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
