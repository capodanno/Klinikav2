package org.itech.klinikav2.controller

import org.itech.klinikav2.domain.Clinic;
import org.springframework.dao.DataIntegrityViolationException

/**
 * ClinicController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class ClinicController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [clinicInstanceList: Clinic.list(params), clinicInstanceTotal: Clinic.count()]
    }

    def create() {
        [clinicInstance: Clinic.getInstance()]
    }

    def save() {
        def clinicInstance = new Clinic(params)
        if (!clinicInstance.save(flush: true)) {
            render(view: "create", model: [clinicInstance: clinicInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'clinic.label', default: 'Clinic'), clinicInstance.id])
        redirect(action: "show", id: clinicInstance.id)
    }

    def show() {
        def clinicInstance = Clinic.get(params.id)
        if (!clinicInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'clinic.label', default: 'Clinic'), params.id])
            redirect(action: "list")
            return
        }

        [clinicInstance: clinicInstance]
    }

    def edit() {
        def clinicInstance = Clinic.get(params.id)
        if (!clinicInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'clinic.label', default: 'Clinic'), params.id])
            redirect(action: "list")
            return
        }

        [clinicInstance: clinicInstance]
    }

    def update() {
        def clinicInstance = Clinic.get(params.id)
        if (!clinicInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'clinic.label', default: 'Clinic'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (clinicInstance.version > version) {
                clinicInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'clinic.label', default: 'Clinic')] as Object[],
                          "Another user has updated this Clinic while you were editing")
                render(view: "edit", model: [clinicInstance: clinicInstance])
                return
            }
        }

        clinicInstance.properties = params

        if (!clinicInstance.save(flush: true)) {
            render(view: "edit", model: [clinicInstance: clinicInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'clinic.label', default: 'Clinic'), clinicInstance.id])
        redirect(action: "show", id: clinicInstance.id)
    }

    def delete() {
        def clinicInstance = Clinic.get(params.id)
        if (!clinicInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'clinic.label', default: 'Clinic'), params.id])
            redirect(action: "list")
            return
        }

        try {
            clinicInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'clinic.label', default: 'Clinic'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'clinic.label', default: 'Clinic'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
