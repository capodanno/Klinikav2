<%@ page import="org.itech.klinikav2.domain.Prescription" %>



			<div class="control-group fieldcontain ${hasErrors(bean: prescriptionInstance, field: 'age', 'error')} ">
				<label for="age" class="control-label"><g:message code="prescription.age.label" default="Age" /></label>
				<div class="controls">
					<g:textField name="age" value="${prescriptionInstance?.age}"/>
					<span class="help-inline">${hasErrors(bean: prescriptionInstance, field: 'age', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: prescriptionInstance, field: 'clinicAddress', 'error')} ">
				<label for="clinicAddress" class="control-label"><g:message code="prescription.clinicAddress.label" default="Clinic Address" /></label>
				<div class="controls">
					<g:textField name="clinicAddress" value="${prescriptionInstance?.clinicAddress}"/>
					<span class="help-inline">${hasErrors(bean: prescriptionInstance, field: 'clinicAddress', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: prescriptionInstance, field: 'clinicMobileNumber', 'error')} ">
				<label for="clinicMobileNumber" class="control-label"><g:message code="prescription.clinicMobileNumber.label" default="Clinic Mobile Number" /></label>
				<div class="controls">
					<g:textField name="clinicMobileNumber" value="${prescriptionInstance?.clinicMobileNumber}"/>
					<span class="help-inline">${hasErrors(bean: prescriptionInstance, field: 'clinicMobileNumber', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: prescriptionInstance, field: 'clinicName', 'error')} ">
				<label for="clinicName" class="control-label"><g:message code="prescription.clinicName.label" default="Clinic Name" /></label>
				<div class="controls">
					<g:textField name="clinicName" value="${prescriptionInstance?.clinicName}"/>
					<span class="help-inline">${hasErrors(bean: prescriptionInstance, field: 'clinicName', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: prescriptionInstance, field: 'clinicTelNumber', 'error')} ">
				<label for="clinicTelNumber" class="control-label"><g:message code="prescription.clinicTelNumber.label" default="Clinic Tel Number" /></label>
				<div class="controls">
					<g:textField name="clinicTelNumber" value="${prescriptionInstance?.clinicTelNumber}"/>
					<span class="help-inline">${hasErrors(bean: prescriptionInstance, field: 'clinicTelNumber', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: prescriptionInstance, field: 'date', 'error')} required">
				<label for="date" class="control-label"><g:message code="prescription.date.label" default="Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="date" precision="day"  value="${prescriptionInstance?.date}"  />
					<span class="help-inline">${hasErrors(bean: prescriptionInstance, field: 'date', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: prescriptionInstance, field: 'description', 'error')} ">
				<label for="description" class="control-label"><g:message code="prescription.description.label" default="Description" /></label>
				<div class="controls">
					<g:textField name="description" value="${prescriptionInstance?.description}"/>
					<span class="help-inline">${hasErrors(bean: prescriptionInstance, field: 'description', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: prescriptionInstance, field: 'patient', 'error')} required">
				<label for="patient" class="control-label"><g:message code="prescription.patient.label" default="Patient" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="patient" name="patient.id" from="${org.itech.klinikav2.domain.Patient.list()}" optionKey="id" required="" value="${prescriptionInstance?.patient?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: prescriptionInstance, field: 'patient', 'error')}</span>
				</div>
			</div>

