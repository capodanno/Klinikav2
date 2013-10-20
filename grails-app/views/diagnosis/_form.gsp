<%@ page import="org.itech.klinikav2.domain.Diagnosis" %>



			<div class="control-group fieldcontain ${hasErrors(bean: diagnosisInstance, field: 'date', 'error')} required">
				<label for="date" class="control-label"><g:message code="diagnosis.date.label" default="Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="date" precision="day"  value="${diagnosisInstance?.date}"  />
					<span class="help-inline">${hasErrors(bean: diagnosisInstance, field: 'date', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: diagnosisInstance, field: 'details', 'error')} ">
				<label for="details" class="control-label"><g:message code="diagnosis.details.label" default="Details" /></label>
				<div class="controls">
					<g:textField name="details" value="${diagnosisInstance?.details}"/>
					<span class="help-inline">${hasErrors(bean: diagnosisInstance, field: 'details', 'error')}</span>
				</div>
			</div>

