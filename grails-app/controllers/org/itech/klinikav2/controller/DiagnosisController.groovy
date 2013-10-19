package org.itech.klinikav2.controller

import org.itech.klinikav2.domain.Diagnosis;
import org.springframework.dao.DataIntegrityViolationException

/**
 * DiagnosisController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class DiagnosisController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [diagnosisInstanceList: Diagnosis.list(params), diagnosisInstanceTotal: Diagnosis.count()]
    }

    def create() {
        [diagnosisInstance: new Diagnosis(params)]
    }

    def save() {
        def diagnosisInstance = new Diagnosis(params)
        if (!diagnosisInstance.save(flush: true)) {
            render(view: "create", model: [diagnosisInstance: diagnosisInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'diagnosis.label', default: 'Diagnosis'), diagnosisInstance.id])
        redirect(action: "show", id: diagnosisInstance.id)
    }

    def show() {
        def diagnosisInstance = Diagnosis.get(params.id)
        if (!diagnosisInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'diagnosis.label', default: 'Diagnosis'), params.id])
            redirect(action: "list")
            return
        }

        [diagnosisInstance: diagnosisInstance]
    }

    def edit() {
        def diagnosisInstance = Diagnosis.get(params.id)
        if (!diagnosisInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'diagnosis.label', default: 'Diagnosis'), params.id])
            redirect(action: "list")
            return
        }

        [diagnosisInstance: diagnosisInstance]
    }

    def update() {
        def diagnosisInstance = Diagnosis.get(params.id)
        if (!diagnosisInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'diagnosis.label', default: 'Diagnosis'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (diagnosisInstance.version > version) {
                diagnosisInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'diagnosis.label', default: 'Diagnosis')] as Object[],
                          "Another user has updated this Diagnosis while you were editing")
                render(view: "edit", model: [diagnosisInstance: diagnosisInstance])
                return
            }
        }

        diagnosisInstance.properties = params

        if (!diagnosisInstance.save(flush: true)) {
            render(view: "edit", model: [diagnosisInstance: diagnosisInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'diagnosis.label', default: 'Diagnosis'), diagnosisInstance.id])
        redirect(action: "show", id: diagnosisInstance.id)
    }

    def delete() {
        def diagnosisInstance = Diagnosis.get(params.id)
        if (!diagnosisInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'diagnosis.label', default: 'Diagnosis'), params.id])
            redirect(action: "list")
            return
        }

        try {
            diagnosisInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'diagnosis.label', default: 'Diagnosis'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'diagnosis.label', default: 'Diagnosis'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
