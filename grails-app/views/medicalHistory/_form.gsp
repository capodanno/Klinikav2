<%@ page import="org.itech.klinikav2.domain.MedicalHistory" %>



			<div class="control-group fieldcontain ${hasErrors(bean: medicalHistoryInstance, field: 'pastIllness', 'error')} ">
				<label for="pastIllness" class="control-label"><g:message code="medicalHistory.pastIllness.label" default="Past Illness" /></label>
				<div class="controls">
					<g:textField name="pastIllness" value="${medicalHistoryInstance?.pastIllness}"/>
					<span class="help-inline">${hasErrors(bean: medicalHistoryInstance, field: 'pastIllness', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: medicalHistoryInstance, field: 'pastMedications', 'error')} ">
				<label for="pastMedications" class="control-label"><g:message code="medicalHistory.pastMedications.label" default="Past Medications" /></label>
				<div class="controls">
					<g:textField name="pastMedications" value="${medicalHistoryInstance?.pastMedications}"/>
					<span class="help-inline">${hasErrors(bean: medicalHistoryInstance, field: 'pastMedications', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: medicalHistoryInstance, field: 'patient', 'error')} required">
				<label for="patient" class="control-label"><g:message code="medicalHistory.patient.label" default="Patient" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="patient" name="patient.id" from="${org.itech.klinikav2.domain.Patient.list()}" optionKey="id" required="" value="${medicalHistoryInstance?.patient?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: medicalHistoryInstance, field: 'patient', 'error')}</span>
				</div>
			</div>

