<%@ page import="org.itech.klinikav2.domain.Referral" %>



			<div class="control-group fieldcontain ${hasErrors(bean: referralInstance, field: 'address', 'error')} ">
				<label for="address" class="control-label"><g:message code="referral.address.label" default="Address" /></label>
				<div class="controls">
					<g:textField name="address" value="${referralInstance?.address}"/>
					<span class="help-inline">${hasErrors(bean: referralInstance, field: 'address', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: referralInstance, field: 'date', 'error')} required">
				<label for="date" class="control-label"><g:message code="referral.date.label" default="Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="date" precision="day"  value="${referralInstance?.date}"  />
					<span class="help-inline">${hasErrors(bean: referralInstance, field: 'date', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: referralInstance, field: 'doctorName', 'error')} ">
				<label for="doctorName" class="control-label"><g:message code="referral.doctorName.label" default="Doctor Name" /></label>
				<div class="controls">
					<g:textField name="doctorName" value="${referralInstance?.doctorName}"/>
					<span class="help-inline">${hasErrors(bean: referralInstance, field: 'doctorName', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: referralInstance, field: 'patient', 'error')} required">
				<label for="patient" class="control-label"><g:message code="referral.patient.label" default="Patient" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="patient" name="patient.id" from="${org.itech.klinikav2.domain.Patient.list()}" optionKey="id" required="" value="${referralInstance?.patient?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: referralInstance, field: 'patient', 'error')}</span>
				</div>
			</div>

