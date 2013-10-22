package org.itech.klinikav2.controller

import org.itech.klinikav2.domain.PatientQueue;
import org.springframework.dao.DataIntegrityViolationException

/**
 * PatientQueueController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class PatientQueueController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [patientQueueInstanceList: PatientQueue.list(params), patientQueueInstanceTotal: PatientQueue.count()]
    }

    def create() {
        [patientQueueInstance: new PatientQueue(params)]
    }

    def save() {
        def patientQueueInstance = new PatientQueue(params)
        if (!patientQueueInstance.save(flush: true)) {
            render(view: "create", model: [patientQueueInstance: patientQueueInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'patientQueue.label', default: 'PatientQueue'), patientQueueInstance.id])
        redirect(action: "show", id: patientQueueInstance.id)
    }

    def show() {
        def patientQueueInstance = PatientQueue.get(params.id)
        if (!patientQueueInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'patientQueue.label', default: 'PatientQueue'), params.id])
            redirect(action: "list")
            return
        }

        [patientQueueInstance: patientQueueInstance]
    }

    def edit() {
        def patientQueueInstance = PatientQueue.get(params.id)
        if (!patientQueueInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'patientQueue.label', default: 'PatientQueue'), params.id])
            redirect(action: "list")
            return
        }

        [patientQueueInstance: patientQueueInstance]
    }

    def update() {
        def patientQueueInstance = PatientQueue.get(params.id)
        if (!patientQueueInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'patientQueue.label', default: 'PatientQueue'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (patientQueueInstance.version > version) {
                patientQueueInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'patientQueue.label', default: 'PatientQueue')] as Object[],
                          "Another user has updated this PatientQueue while you were editing")
                render(view: "edit", model: [patientQueueInstance: patientQueueInstance])
                return
            }
        }

        patientQueueInstance.properties = params

        if (!patientQueueInstance.save(flush: true)) {
            render(view: "edit", model: [patientQueueInstance: patientQueueInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'patientQueue.label', default: 'PatientQueue'), patientQueueInstance.id])
        redirect(action: "show", id: patientQueueInstance.id)
    }

    def delete() {
        def patientQueueInstance = PatientQueue.get(params.id)
        if (!patientQueueInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'patientQueue.label', default: 'PatientQueue'), params.id])
            redirect(action: "list")
            return
        }

        try {
            patientQueueInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'patientQueue.label', default: 'PatientQueue'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'patientQueue.label', default: 'PatientQueue'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
