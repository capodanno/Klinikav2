<%@ page import="org.itech.klinikav2.domain.QueueElement" %>



			<div class="control-group fieldcontain ${hasErrors(bean: queueElementInstance, field: 'appointmentType', 'error')} required">
				<label for="appointmentType" class="control-label"><g:message code="queueElement.appointmentType.label" default="Appointment Type" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="appointmentType" from="${org.itech.klinikav2.enums.AppointmentType?.values()}" keys="${org.itech.klinikav2.enums.AppointmentType.values()*.name()}" required="" value="${queueElementInstance?.appointmentType?.name()}"/>
					<span class="help-inline">${hasErrors(bean: queueElementInstance, field: 'appointmentType', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: queueElementInstance, field: 'complaints', 'error')} ">
				<label for="complaints" class="control-label"><g:message code="queueElement.complaints.label" default="Complaints" /></label>
				<div class="controls">
					<g:textField name="complaints" value="${queueElementInstance?.complaints}"/>
					<span class="help-inline">${hasErrors(bean: queueElementInstance, field: 'complaints', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: queueElementInstance, field: 'date', 'error')} required">
				<label for="date" class="control-label"><g:message code="queueElement.date.label" default="Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="date" precision="day"  value="${queueElementInstance?.date}"  />
					<span class="help-inline">${hasErrors(bean: queueElementInstance, field: 'date', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: queueElementInstance, field: 'patient', 'error')} required">
				<label for="patient" class="control-label"><g:message code="queueElement.patient.label" default="Patient" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="patient" name="patient.id" from="${org.itech.klinikav2.domain.Patient.list()}" optionKey="id" required="" value="${queueElementInstance?.patient?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: queueElementInstance, field: 'patient', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: queueElementInstance, field: 'timeAdmitted', 'error')} ">
				<label for="timeAdmitted" class="control-label"><g:message code="queueElement.timeAdmitted.label" default="Time Admitted" /></label>
				<div class="controls">
					<g:textField name="timeAdmitted" value="${queueElementInstance?.timeAdmitted}"/>
					<span class="help-inline">${hasErrors(bean: queueElementInstance, field: 'timeAdmitted', 'error')}</span>
				</div>
			</div>

