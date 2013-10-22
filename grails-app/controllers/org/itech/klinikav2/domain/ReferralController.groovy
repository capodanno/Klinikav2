package org.itech.klinikav2.domain

import org.itech.klinikav2.domain.Referral;
import org.springframework.dao.DataIntegrityViolationException

/**
 * ReferralController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class ReferralController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [referralInstanceList: Referral.list(params), referralInstanceTotal: Referral.count()]
    }

    def create() {
        [referralInstance: new Referral(params)]
    }

    def save() {
        def referralInstance = new Referral(params)
        if (!referralInstance.save(flush: true)) {
            render(view: "create", model: [referralInstance: referralInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'referral.label', default: 'Referral'), referralInstance.id])
        redirect(action: "show", id: referralInstance.id)
    }

    def show() {
        def referralInstance = Referral.get(params.id)
        if (!referralInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'referral.label', default: 'Referral'), params.id])
            redirect(action: "list")
            return
        }

        [referralInstance: referralInstance]
    }

    def edit() {
        def referralInstance = Referral.get(params.id)
        if (!referralInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'referral.label', default: 'Referral'), params.id])
            redirect(action: "list")
            return
        }

        [referralInstance: referralInstance]
    }

    def update() {
        def referralInstance = Referral.get(params.id)
        if (!referralInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'referral.label', default: 'Referral'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (referralInstance.version > version) {
                referralInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'referral.label', default: 'Referral')] as Object[],
                          "Another user has updated this Referral while you were editing")
                render(view: "edit", model: [referralInstance: referralInstance])
                return
            }
        }

        referralInstance.properties = params

        if (!referralInstance.save(flush: true)) {
            render(view: "edit", model: [referralInstance: referralInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'referral.label', default: 'Referral'), referralInstance.id])
        redirect(action: "show", id: referralInstance.id)
    }

    def delete() {
        def referralInstance = Referral.get(params.id)
        if (!referralInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'referral.label', default: 'Referral'), params.id])
            redirect(action: "list")
            return
        }

        try {
            referralInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'referral.label', default: 'Referral'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'referral.label', default: 'Referral'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
