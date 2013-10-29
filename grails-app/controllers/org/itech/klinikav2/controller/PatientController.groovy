package org.itech.klinikav2.controller

import java.util.Date;

import org.itech.klinikav2.domain.Invoice
import org.itech.klinikav2.domain.LaboratoryResult
import org.itech.klinikav2.domain.MedicalHistory;
import org.itech.klinikav2.domain.Patient;
import org.itech.klinikav2.domain.Prescription
import org.itech.klinikav2.domain.Referral
import org.itech.klinikav2.domain.VitalSigns
import org.springframework.dao.DataIntegrityViolationException
import org.itech.klinikav2.domain.Diagnosis
import org.itech.klinikav2.enums.Gender;
import org.itech.klinikav2.enums.MaritalStatus;

import utils.ItemNotifier;
import utils.SMSNotifier

class PatientController {
	
	
	def exportService // Export service provided by Export plugin
	def grailsApplication  //inject GrailsApplication

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
	
	def index() {
		redirect(action: "list", params: params)
		
		//test of web API
//		def sms = new SMSNotifier()
//		def result= sms.sendClickatellSms("09277705918", "Hi!")
//		render result
	}
	public def addLog(Long id) {
		def patientInstance = Patient.get(id)		
		patientInstance.logActivity(params.activityType)
		redirect(action: "show", id: patientInstance.id)
	}

	//the user adds the data of the patient
	def addDiagnosis (Long id, Diagnosis d)
	{
		def patientInstance = Patient.get(id)
		patientInstance.addToDiagnoses(d)
		patientInstance.save(flush:true, failOnError:true)		
	}
	
	def addVitalSigns (Long id, VitalSigns v)
	{
		def patientInstance = Patient.get(id)
		patientInstance.addToVitalSigns(v)
		patientInstance.save(flush:true, failOnError:true)
	}
	
	def addPrescription (Long id, Prescription p)
	{
		def patientInstance = Patient.get(id)
		patientInstance.addToPrescriptions(v)
		patientInstance.save(flush:true, failOnError:true)
	}
	
	def addMedicalHistory (Long id, MedicalHistory medHis)
	{
		def patientInstance = Patient.get(id)
		patientInstance.addToMedicalHistories(medHis)
		patientInstance.save(flush:true, failOnError:true)
	}
	
	def addReferral (Long id, Referral r)
	{
		def patientInstance = Patient.get(id)
		patientInstance.addToReferrals(r)
		patientInstance.save(flush:true, failOnError:true)
	}
	
	def addLaboratoryResult (Long id, LaboratoryResult labRes)
	{
		def patientInstance = Patient.get(id)
		patientInstance.addToLaboratoryResults(labRes)
		patientInstance.save(flush:true, failOnError:true)
	}
	
	def addInvoice (Long id, Invoice invoice)
	{
		def patientInstance = Patient.get(id)
		patientInstance.addToInvoices(invoice)
		patientInstance.save(flush:true, failOnError:true)
	}
	//----------------------------------------------ends here
	
	
	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		//[patientInstanceList: Patient.where{isDeleted==false}, patientInstanceTotal: Patient.count()]
				[patientInstanceList: Patient.list(), patientInstanceTotal: Patient.count()]
	}
	
	def listPatientAndDetails(Integer max){
		params.max = Math.max(max ?: Patient.count(), 1)
		if(!params.max) params.max = 10

		if(params?.format && params.format != "html"){
			response.contentType = grailsApplication.config.grails.mime.types[params.format]
			response.setHeader("Content-disposition", "attachment; filename=payments.${params.extension}")
			
			List fields = [	"firstName", "middleName", "lastName", "birthDate", "gender", "maritalStatus", "dateOfRegistration", "emailAddress"
,"address_city", "address_street", "address_town", "address_province", "mobileNumber", "telNumber", "isActive", "isDeleted"]
			Map labels = ["firstName":"First Name", "middleName": "Middle Name", "lastName": "Last Name", "birthDate": "Birth Date", "gender":"Gender","maritalStatus": "Marital Status",
				"dateOfRegistration":"Date of Registration", "emailAddress": "Email Address", "address_city" : "City", "address_street" : "Street" , "address_town": "Town", "address_province":"Province","mobileNumber":"Mobile Number", "telNumber":"Telephone Number","isActive":"Is Active", "isDeleted":"Is Deleted"]
			
			def upperCase = { domain, value ->
				return value.toUpperCase()
			}
			
			Map formatters = [name: upperCase]
			Map parameters = [title: "Balances Report", "column.widths": [0.2, 0.3]]
			
			exportService.export(params.format, response.outputStream,Payment.list(params), fields, labels, formatters, parameters)
		}
		[patientInstanceList: Patient.where{isDeleted==false}, patientInstanceTotal: Patient.count()]
		//		[patientInstanceList: Patient.list(), patientInstanceTotal: Patient.count()]
	}
	

	//to show the deleted patients
	def listDeleted(Integer max){
		params.max = Math.min(max ?: 10, 100)
		[patientInstanceList: Patient.where{isDeleted==true}, patientInstanceTotal: Patient.count()]
	}

	def create() {
		[patientInstance: new Patient(params)]
	}	

	def save() {
		def patientInstance = new Patient()
		patientInstance.dateOfRegistration = new Date()
		patientInstance.firstName = params.firstName
		patientInstance.middleName = params.middleName;
		patientInstance.lastName = params.lastName;
		patientInstance.birthDate = params.birthDate;
		patientInstance.gender = params.gender;
		patientInstance.maritalStatus = params.maritalStatus;
		patientInstance.emailAddress = params.emailAddress;
		patientInstance.address_city = params.address_city;
		patientInstance.address_street = params.address_street;
		patientInstance.address_town = params.address_town;
		patientInstance.address_province = params.address_province;
		patientInstance.mobileNumber = params.mobileNumber;
		patientInstance.telNumber = params.telNumber;
		patientInstance.isActive = true
		patientInstance.isDeleted=false
		patientInstance.save()
		if (!patientInstance.save(flush: true)) {
			render(view: "create", model: [patientInstance: patientInstance])
			return
		}

		flash.message = message(code: 'default.created.message', args: [
			message(code: 'patient.label', default: 'Patient'),
			patientInstance.id
		])
		redirect(action: "show", id: patientInstance.id)
	}

	def show(Long id) {
		def patientInstance = Patient.get(id)
		if (!patientInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'patient.label', default: 'Patient'),
				id
			])
			redirect(action: "list")
			return
		}

		[patientInstance: patientInstance]
	}

	//to show the individual patient which has been deleted
	def showDeleted(Long id) {
		def patientInstance = Patient.get(id)
		if (!patientInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'patient.label', default: 'Patient'),
				id
			])
			redirect(action: "listDeleted")
			return
		}

		[patientInstance: patientInstance]
	}

	def edit(Long id) {
		def patientInstance = Patient.get(id)
		if (!patientInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'patient.label', default: 'Patient'),
				id
			])
			redirect(action: "list")
			return
		}

		[patientInstance: patientInstance]
	}

	def update(Long id, Long version) {
		def patientInstance = Patient.get(id)
		if (!patientInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'patient.label', default: 'Patient'),
				id
			])
			redirect(action: "list")
			return
		}
		if (version != null) {
			if (patientInstance.version > version) {
				patientInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
						[
							message(code: 'patient.label', default: 'Patient')] as Object[],
						"Another user has updated this Patient while you were editing")
				render(view: "edit", model: [patientInstance: patientInstance])
				return
			}
		}
		patientInstance.properties = params
		if (!patientInstance.save(flush: true)) {
			render(view: "edit", model: [patientInstance: patientInstance])
			return
		}
		flash.message = message(code: 'default.updated.message', args: [
			message(code: 'patient.label', default: 'Patient'),
			patientInstance.id
		])
		redirect(action: "show", id: patientInstance.id)
	}

	//update the value of the deleted patient
	def updateDeleted(Long id, Long version) {
		def patientInstance = Patient.get(id)
		if (!patientInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'patient.label', default: 'Patient'),
				id
			])
			redirect(action: "list")
			return
		}
		if (version != null) {
			if (patientInstance.version > version) {
				patientInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
						[
							message(code: 'patient.label', default: 'Patient')] as Object[],
						"Another user has updated this Patient while you were editing")
				render(view: "edit", model: [patientInstance: patientInstance])
				return
			}
		}
		patientInstance.properties = params
		if (!patientInstance.save(flush: true)) {
			render(view: "edit", model: [patientInstance: patientInstance])
			return
		}
		flash.message = message(code: 'default.deleted.message', args: [
			message(code: 'patient.label', default: 'Patient'),
			id
		])
		redirect(action: "list")
	}

	//update for the restored patient.
	def updateRestored(Long id, Long version) {
		def patientInstance = Patient.get(id)
		if (!patientInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'patient.label', default: 'Patient'),
				id
			])
			redirect(action: "list")
			return
		}
		if (version != null) {
			if (patientInstance.version > version) {
				patientInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
						[
							message(code: 'patient.label', default: 'Patient')] as Object[],
						"Another user has updated this Patient while you were editing")
				render(view: "edit", model: [patientInstance: patientInstance])
				return
			}
		}
		patientInstance.properties = params
		if (!patientInstance.save(flush: true)) {
			render(view: "edit", model: [patientInstance: patientInstance])
			return
		}
		flash.message = message(code: 'default.restored.message', args: [
			message(code: 'patient.label', default: 'Patient'),
			id
		])
		redirect(action: "listDeleted")
	}

	def delete(Long id) {
		def patientInstance = Patient.get(id)
		if (!patientInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'patient.label', default: 'Patient'),
				id
			])
			redirect(action: "list")
			return
		}
		try {
			patientInstance.setIsDeleted(true)
			updateDeleted(patientInstance.id,patientInstance.getVersion())

		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [
				message(code: 'patient.label', default: 'Patient'),
				id
			])
			redirect(action: "show", id: id)
		}
	}

	//to restore the deleted patient to the list :)
	def restore(Long id) {
		def patientInstance = Patient.get(id)
		if (!patientInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'patient.label', default: 'Patient'),
				id
			])
			redirect(action: "listDeleted")
			return
		}
		try {
			patientInstance.setIsDeleted(false)
			updateRestored(patientInstance.id,patientInstance.getVersion())
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.restored.message', args: [
				message(code: 'patient.label', default: 'Patient'),
				id
			])
			redirect(action: "showDeleted", id: id)
		}
	}

}
