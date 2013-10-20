package org.itech.klinikav2.domain

import org.springframework.dao.DataIntegrityViolationException

/**
 * PrescriptionController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class PrescriptionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [prescriptionInstanceList: Prescription.list(params), prescriptionInstanceTotal: Prescription.count()]
    }

    def create() {
        [prescriptionInstance: new Prescription(params)]
    }

    def save() {
        def prescriptionInstance = new Prescription(params)
        if (!prescriptionInstance.save(flush: true)) {
            render(view: "create", model: [prescriptionInstance: prescriptionInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'prescription.label', default: 'Prescription'), prescriptionInstance.id])
        redirect(action: "show", id: prescriptionInstance.id)
    }

    def show() {
        def prescriptionInstance = Prescription.get(params.id)
        if (!prescriptionInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'prescription.label', default: 'Prescription'), params.id])
            redirect(action: "list")
            return
        }

        [prescriptionInstance: prescriptionInstance]
    }

    def edit() {
        def prescriptionInstance = Prescription.get(params.id)
        if (!prescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'prescription.label', default: 'Prescription'), params.id])
            redirect(action: "list")
            return
        }

        [prescriptionInstance: prescriptionInstance]
    }

    def update() {
        def prescriptionInstance = Prescription.get(params.id)
        if (!prescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'prescription.label', default: 'Prescription'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (prescriptionInstance.version > version) {
                prescriptionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'prescription.label', default: 'Prescription')] as Object[],
                          "Another user has updated this Prescription while you were editing")
                render(view: "edit", model: [prescriptionInstance: prescriptionInstance])
                return
            }
        }

        prescriptionInstance.properties = params

        if (!prescriptionInstance.save(flush: true)) {
            render(view: "edit", model: [prescriptionInstance: prescriptionInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'prescription.label', default: 'Prescription'), prescriptionInstance.id])
        redirect(action: "show", id: prescriptionInstance.id)
    }

    def delete() {
        def prescriptionInstance = Prescription.get(params.id)
        if (!prescriptionInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'prescription.label', default: 'Prescription'), params.id])
            redirect(action: "list")
            return
        }

        try {
            prescriptionInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'prescription.label', default: 'Prescription'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'prescription.label', default: 'Prescription'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
