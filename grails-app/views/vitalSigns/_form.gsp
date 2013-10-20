<%@ page import="org.itech.klinikav2.domain.VitalSigns" %>



			<div class="control-group fieldcontain ${hasErrors(bean: vitalSignsInstance, field: 'bloodPressure', 'error')} ">
				<label for="bloodPressure" class="control-label"><g:message code="vitalSigns.bloodPressure.label" default="Blood Pressure" /></label>
				<div class="controls">
					<g:textField name="bloodPressure" value="${vitalSignsInstance?.bloodPressure}"/>
					<span class="help-inline">${hasErrors(bean: vitalSignsInstance, field: 'bloodPressure', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: vitalSignsInstance, field: 'date', 'error')} required">
				<label for="date" class="control-label"><g:message code="vitalSigns.date.label" default="Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="date" precision="day"  value="${vitalSignsInstance?.date}"  />
					<span class="help-inline">${hasErrors(bean: vitalSignsInstance, field: 'date', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: vitalSignsInstance, field: 'height', 'error')} required">
				<label for="height" class="control-label"><g:message code="vitalSigns.height.label" default="Height" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="height" step="any" required="" value="${vitalSignsInstance.height}"/>
					<span class="help-inline">${hasErrors(bean: vitalSignsInstance, field: 'height', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: vitalSignsInstance, field: 'lastMenstruationPeriod', 'error')} required">
				<label for="lastMenstruationPeriod" class="control-label"><g:message code="vitalSigns.lastMenstruationPeriod.label" default="Last Menstruation Period" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="lastMenstruationPeriod" precision="day"  value="${vitalSignsInstance?.lastMenstruationPeriod}"  />
					<span class="help-inline">${hasErrors(bean: vitalSignsInstance, field: 'lastMenstruationPeriod', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: vitalSignsInstance, field: 'patient', 'error')} required">
				<label for="patient" class="control-label"><g:message code="vitalSigns.patient.label" default="Patient" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="patient" name="patient.id" from="${org.itech.klinikav2.domain.Patient.list()}" optionKey="id" required="" value="${vitalSignsInstance?.patient?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: vitalSignsInstance, field: 'patient', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: vitalSignsInstance, field: 'pulseRate', 'error')} ">
				<label for="pulseRate" class="control-label"><g:message code="vitalSigns.pulseRate.label" default="Pulse Rate" /></label>
				<div class="controls">
					<g:textField name="pulseRate" value="${vitalSignsInstance?.pulseRate}"/>
					<span class="help-inline">${hasErrors(bean: vitalSignsInstance, field: 'pulseRate', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: vitalSignsInstance, field: 'weight', 'error')} required">
				<label for="weight" class="control-label"><g:message code="vitalSigns.weight.label" default="Weight" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="weight" step="any" required="" value="${vitalSignsInstance.weight}"/>
					<span class="help-inline">${hasErrors(bean: vitalSignsInstance, field: 'weight', 'error')}</span>
				</div>
			</div>

