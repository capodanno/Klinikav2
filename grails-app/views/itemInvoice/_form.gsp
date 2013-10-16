<%@ page import="org.itech.klinikav2.domain.ItemInvoice" %>



			<div class="control-group fieldcontain ${hasErrors(bean: itemInvoiceInstance, field: 'date', 'error')} required">
				<label for="date" class="control-label"><g:message code="itemInvoice.date.label" default="Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="date" precision="day"  value="${itemInvoiceInstance?.date}"  />
					<span class="help-inline">${hasErrors(bean: itemInvoiceInstance, field: 'date', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: itemInvoiceInstance, field: 'doctor', 'error')} required">
				<label for="doctor" class="control-label"><g:message code="itemInvoice.doctor.label" default="Doctor" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="doctor" name="doctor.id" from="${org.itech.klinikav2.domain.Doctor.list()}" optionKey="id" required="" value="${itemInvoiceInstance?.doctor?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: itemInvoiceInstance, field: 'doctor', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: itemInvoiceInstance, field: 'hasBalance', 'error')} ">
				<label for="hasBalance" class="control-label"><g:message code="itemInvoice.hasBalance.label" default="Has Balance" /></label>
				<div class="controls">
					<bs:checkBox name="hasBalance" value="${itemInvoiceInstance?.hasBalance}" />
					<span class="help-inline">${hasErrors(bean: itemInvoiceInstance, field: 'hasBalance', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: itemInvoiceInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="itemInvoice.name.label" default="Name" /></label>
				<div class="controls">
					<g:textField name="name" value="${itemInvoiceInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: itemInvoiceInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: itemInvoiceInstance, field: 'number', 'error')} required">
				<label for="number" class="control-label"><g:message code="itemInvoice.number.label" default="Number" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="number" required="" value="${itemInvoiceInstance.number}"/>
					<span class="help-inline">${hasErrors(bean: itemInvoiceInstance, field: 'number', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: itemInvoiceInstance, field: 'patient', 'error')} required">
				<label for="patient" class="control-label"><g:message code="itemInvoice.patient.label" default="Patient" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="patient" name="patient.id" from="${org.itech.klinikav2.domain.Patient.list()}" optionKey="id" required="" value="${itemInvoiceInstance?.patient?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: itemInvoiceInstance, field: 'patient', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: itemInvoiceInstance, field: 'payer', 'error')} ">
				<label for="payer" class="control-label"><g:message code="itemInvoice.payer.label" default="Payer" /></label>
				<div class="controls">
					<g:textField name="payer" value="${itemInvoiceInstance?.payer}"/>
					<span class="help-inline">${hasErrors(bean: itemInvoiceInstance, field: 'payer', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: itemInvoiceInstance, field: 'paymentMethod', 'error')} required">
				<label for="paymentMethod" class="control-label"><g:message code="itemInvoice.paymentMethod.label" default="Payment Method" /><span class="required-indicator">*</span>