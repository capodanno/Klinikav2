<%@ page import="org.itech.klinikav2.domain.LaboratoryResult" %>



			<div class="control-group fieldcontain ${hasErrors(bean: laboratoryResultInstance, field: 'date', 'error')} required">
				<label for="date" class="control-label"><g:message code="laboratoryResult.date.label" default="Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="date" precision="day"  value="${laboratoryResultInstance?.date}"  />
					<span class="help-inline">${hasErrors(bean: laboratoryResultInstance, field: 'date', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: laboratoryResultInstance, field: 'details', 'error')} ">
				<label for="details" class="control-label"><g:message code="laboratoryResult.details.label" default="Details" /></label>
				<div class="controls">
					<g:textField name="details" value="${laboratoryResultInstance?.details}"/>
					<span class="help-inline">${hasErrors(bean: laboratoryResultInstance, field: 'details', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: laboratoryResultInstance, field: 'patient', 'error')} required">
				<label for="patient" class="control-label"><g:message code="laboratoryResult.patient.label" default="Patient" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="patient" name="patient.id" from="${org.itech.klinikav2.domain.Patient.list()}" optionKey="id" required="" value="${laboratoryResultInstance?.patient?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: laboratoryResultInstance, field: 'patient', 'error')}</span>
				</div>
			</div>

