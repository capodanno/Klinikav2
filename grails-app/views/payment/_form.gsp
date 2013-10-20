<%@ page import="org.itech.klinikav2.domain.Payment" %>



			<div class="control-group fieldcontain ${hasErrors(bean: paymentInstance, field: 'amountPaid', 'error')} required">
				<label for="amountPaid" class="control-label"><g:message code="payment.amountPaid.label" default="Amount Paid" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="amountPaid" step="any" required="" value="${paymentInstance.amountPaid}"/>
					<span class="help-inline">${hasErrors(bean: paymentInstance, field: 'amountPaid', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: paymentInstance, field: 'date', 'error')} required">
				<label for="date" class="control-label"><g:message code="payment.date.label" default="Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="date" precision="day"  value="${paymentInstance?.date}"  />
					<span class="help-inline">${hasErrors(bean: paymentInstance, field: 'date', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: paymentInstance, field: 'hasBalance', 'error')} ">
				<label for="hasBalance" class="control-label"><g:message code="payment.hasBalance.label" default="Has Balance" /></label>
				<div class="controls">
					<bs:checkBox name="hasBalance" value="${paymentInstance?.hasBalance}" />
					<span class="help-inline">${hasErrors(bean: paymentInstance, field: 'hasBalance', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: paymentInstance, field: 'invoices', 'error')} ">
				<label for="invoices" class="control-label"><g:message code="payment.invoices.label" default="Invoices" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${paymentInstance?.invoices?}" var="i">
    <li><g:link controller="invoice" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="invoice" action="create" params="['payment.id': paymentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'invoice.label', default: 'Invoice')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: paymentInstance, field: 'invoices', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: paymentInstance, field: 'patient', 'error')} required">
				<label for="patient" class="control-label"><g:message code="payment.patient.label" default="Patient" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="patient" name="patient.id" from="${org.itech.klinikav2.domain.Patient.list()}" optionKey="id" required="" value="${paymentInstance?.patient?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: paymentInstance, field: 'patient', 'error')}</span>
				</div>
			</div>

