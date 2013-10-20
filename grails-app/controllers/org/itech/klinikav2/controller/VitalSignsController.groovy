package org.itech.klinikav2.controller

import org.itech.klinikav2.domain.VitalSigns;
import org.springframework.dao.DataIntegrityViolationException

/**
 * VitalSignsController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class VitalSignsController {

	static scaffold = true
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [vitalSignsInstanceList: VitalSigns.list(params), vitalSignsInstanceTotal: VitalSigns.count()]
    }

    def create(Long id) {
        [vitalSignsInstance: new VitalSigns(params)]
    }

    def save() {
        def vitalSignsInstance = new VitalSigns(params)
        if (!vitalSignsInstance.save(flush: true)) {
            render(view: "create", model: [vitalSignsInstance: vitalSignsInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'vitalSigns.label', default: 'VitalSigns'), vitalSignsInstance.id])
        redirect(action: "show", id: vitalSignsInstance.id)
    }

    def show() {
        def vitalSignsInstance = VitalSigns.get(params.id)
        if (!vitalSignsInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'vitalSigns.label', default: 'VitalSigns'), params.id])
            redirect(action: "list")
            return
        }

        [vitalSignsInstance: vitalSignsInstance]
    }

    def edit() {
        def vitalSignsInstance = VitalSigns.get(params.id)
        if (!vitalSignsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'vitalSigns.label', default: 'VitalSigns'), params.id])
            redirect(action: "list")
            return
        }

        [vitalSignsInstance: vitalSignsInstance]
    }

    def update() {
        def vitalSignsInstance = VitalSigns.get(params.id)
        if (!vitalSignsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'vitalSigns.label', default: 'VitalSigns'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (vitalSignsInstance.version > version) {
                vitalSignsInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'vitalSigns.label', default: 'VitalSigns')] as Object[],
                          "Another user has updated this VitalSigns while you were editing")
                render(view: "edit", model: [vitalSignsInstance: vitalSignsInstance])
                return
            }
        }

        vitalSignsInstance.properties = params

        if (!vitalSignsInstance.save(flush: true)) {
            render(view: "edit", model: [vitalSignsInstance: vitalSignsInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'vitalSigns.label', default: 'VitalSigns'), vitalSignsInstance.id])
        redirect(action: "show", id: vitalSignsInstance.id)
    }

    def delete() {
        def vitalSignsInstance = VitalSigns.get(params.id)
        if (!vitalSignsInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'vitalSigns.label', default: 'VitalSigns'), params.id])
            redirect(action: "list")
            return
        }

        try {
            vitalSignsInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'vitalSigns.label', default: 'VitalSigns'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'vitalSigns.label', default: 'VitalSigns'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
