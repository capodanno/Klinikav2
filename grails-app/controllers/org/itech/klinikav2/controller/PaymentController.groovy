package org.itech.klinikav2.controller

import org.itech.klinikav2.domain.Payment;
import org.springframework.dao.DataIntegrityViolationException

/**
 * PaymentController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class PaymentController {
	
	def exportService // Export service provided by Export plugin
	def grailsApplication  //inject GrailsApplication

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

<<<<<<< HEAD:grails-app/controllers/org/itech/klinikav2/domain/PaymentController.groovy

	def listBalances(Integer max){
		params.max = Math.max(max ?: Payment.count(), 1)
		if(!params.max) params.max = 10

		if(params?.format && params.format != "html"){
			response.contentType = grailsApplication.config.grails.mime.types[params.format]
			response.setHeader("Content-disposition", "attachment; filename=payments.${params.extension}")
			
			List fields = ["patient", "amountPaid"]
			Map labels = ["patient":"Patient", "amountPaid":"Amount Paid"]
			
			def upperCase = { domain, value ->
				return value.toUpperCase()
			}
			
			Map formatters = [name: upperCase]
			Map parameters = [title: "Balances Report", "column.widths": [0.2, 0.3]]
			
			exportService.export(params.format, response.outputStream,Payment.list(params), fields, labels, formatters, parameters)
		}

		[paymentInstanceList: Payment.where{hasBalance==true}, paymentInstanceTotal: Payment.count()]}
    
	def list(Integer max) {
=======
    def list() {
>>>>>>> 8572a5b74eda969265c178785236de1409a1d04c:grails-app/controllers/org/itech/klinikav2/controller/PaymentController.groovy
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [paymentInstanceList: Payment.list(params), paymentInstanceTotal: Payment.count()]
    }
	
	def listPaymentMade(Integer max) {
		params.max = Math.max(max ?: Payment.count(), 1)
		if(!params.max) params.max = 10

		if(params?.format && params.format != "html"){
			response.contentType = grailsApplication.config.grails.mime.types[params.format]
			response.setHeader("Content-disposition", "attachment; filename=payments.${params.extension}")
			
			List fields = ["patient", "amountPaid", "date"]
			Map labels = ["patient":"Patient", "amountPaid":"Amount Paid","date":"Date"]
			
			def upperCase = { domain, value ->
				return value.toUpperCase()
			}
			
			Map formatters = [name: upperCase]
			Map parameters = [title: "Payments Made Report", "column.widths": [0.2, 0.3, 0.2]]
			exportService.export(params.format, response.outputStream,Payment.list(params), fields, labels, formatters, parameters)
		}
		[paymentInstanceList: Payment.list(params), paymentInstanceTotal: Payment.count()]
	}

    def create() {
        [paymentInstance: new Payment(params)]
    }

    def save() {
        def paymentInstance = new Payment(params)
        if (!paymentInstance.save(flush: true)) {
            render(view: "create", model: [paymentInstance: paymentInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'payment.label', default: 'Payment'), paymentInstance.id])
        redirect(action: "show", id: paymentInstance.id)
    }

    def show() {
        def paymentInstance = Payment.get(params.id)
        if (!paymentInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'payment.label', default: 'Payment'), params.id])
            redirect(action: "list")
            return
        }

        [paymentInstance: paymentInstance]
    }

    def edit() {
        def paymentInstance = Payment.get(params.id)
        if (!paymentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payment.label', default: 'Payment'), params.id])
            redirect(action: "list")
            return
        }

        [paymentInstance: paymentInstance]
    }

    def update() {
        def paymentInstance = Payment.get(params.id)
        if (!paymentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'payment.label', default: 'Payment'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (paymentInstance.version > version) {
                paymentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'payment.label', default: 'Payment')] as Object[],
                          "Another user has updated this Payment while you were editing")
                render(view: "edit", model: [paymentInstance: paymentInstance])
                return
            }
        }

        paymentInstance.properties = params

        if (!paymentInstance.save(flush: true)) {
            render(view: "edit", model: [paymentInstance: paymentInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'payment.label', default: 'Payment'), paymentInstance.id])
        redirect(action: "show", id: paymentInstance.id)
    }

    def delete() {
        def paymentInstance = Payment.get(params.id)
        if (!paymentInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'payment.label', default: 'Payment'), params.id])
            redirect(action: "list")
            return
        }

        try {
            paymentInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'payment.label', default: 'Payment'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'payment.label', default: 'Payment'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
