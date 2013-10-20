<%@ page import="org.itech.klinikav2.domain.Doctor" %>



			<div class="control-group fieldcontain ${hasErrors(bean: doctorInstance, field: 'firstName', 'error')} required">
				<label for="firstName" class="control-label"><g:message code="doctor.firstName.label" default="First Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="firstName" pattern="${doctorInstance.constraints.firstName.matches}" required="" value="${doctorInstance?.firstName}"/>
					<span class="help-inline">${hasErrors(bean: doctorInstance, field: 'firstName', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: doctorInstance, field: 'middleName', 'error')} required">
				<label for="middleName" class="control-label"><g:message code="doctor.middleName.label" default="Middle Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="middleName" pattern="${doctorInstance.constraints.middleName.matches}" required="" value="${doctorInstance?.middleName}"/>
					<span class="help-inline">${hasErrors(bean: doctorInstance, field: 'middleName', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: doctorInstance, field: 'lastName', 'error')} required">
				<label for="lastName" class="control-label"><g:message code="doctor.lastName.label" default="Last Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="lastName" pattern="${doctorInstance.constraints.lastName.matches}" required="" value="${doctorInstance?.lastName}"/>
					<span class="help-inline">${hasErrors(bean: doctorInstance, field: 'lastName', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: doctorInstance, field: 'birthdate', 'error')} required">
				<label for="birthdate" class="control-label"><g:message code="doctor.birthdate.label" default="Birthdate" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="birthdate" precision="day"  value="${doctorInstance?.birthdate}"  />
					<span class="help-inline">${hasErrors(bean: doctorInstance, field: 'birthdate', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: doctorInstance, field: 'address', 'error')} required">
				<label for="address" class="control-label"><g:message code="doctor.address.label" default="Address" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="address" pattern="${doctorInstance.constraints.address.matches}" required="" value="${doctorInstance?.address}"/>
					<span class="help-inline">${hasErrors(bean: doctorInstance, field: 'address', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: doctorInstance, field: 'mobileNumber', 'error')} required">
				<label for="mobileNumber" class="control-label"><g:message code="doctor.mobileNumber.label" default="Mobile Number" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="mobileNumber" pattern="${doctorInstance.constraints.mobileNumber.matches}" required="" value="${doctorInstance?.mobileNumber}"/>
					<span class="help-inline">${hasErrors(bean: doctorInstance, field: 'mobileNumber', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: doctorInstance, field: 'email', 'error')} ">
				<label for="email" class="control-label"><g:message code="doctor.email.label" default="Email" /></label>
				<div class="controls">
					<g:field type="email" name="email" value="${doctorInstance?.email}"/>
					<span class="help-inline">${hasErrors(bean: doctorInstance, field: 'email', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: doctorInstance, field: 'background', 'error')} ">
				<label for="background" class="control-label"><g:message code="doctor.background.label" default="Background" /></label>
				<div class="controls">
					<g:textField name="background" value="${doctorInstance?.background}"/>
					<span class="help-inline">${hasErrors(bean: doctorInstance, field: 'background', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: doctorInstance, field: 'clinicHourEnd', 'error')} ">
				<label for="clinicHourEnd" class="control-label"><g:message code="doctor.clinicHourEnd.label" default="Clinic Hour End" /></label>
				<div class="controls">
					<g:textField name="clinicHourEnd" value="${doctorInstance?.clinicHourEnd}"/>
					<span class="help-inline">${hasErrors(bean: doctorInstance, field: 'clinicHourEnd', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: doctorInstance, field: 'clinicHourStart', 'error')} ">
				<label for="clinicHourStart" class="control-label"><g:message code="doctor.clinicHourStart.label" default="Clinic Hour Start" /></label>
				<div class="controls">
					<g:textField name="clinicHourStart" value="${doctorInstance?.clinicHourStart}"/>
					<span class="help-inline">${hasErrors(bean: doctorInstance, field: 'clinicHourStart', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: doctorInstance, field: 'receptionists', 'error')} ">
				<label for="receptionists" class="control-label"><g:message code="doctor.receptionists.label" default="Receptionists" /></label>
				<div class="controls">
					<g:select name="receptionists" from="${org.itech.klinikav2.domain.Receptionist.list()}" multiple="multiple" optionKey="id" size="5" value="${doctorInstance?.receptionists*.id}" class="many-to-many"/>
					<span class="help-inline">${hasErrors(bean: doctorInstance, field: 'receptionists', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: doctorInstance, field: 'schedule', 'error')} required">
				<label for="schedule" class="control-label"><g:message code="doctor.schedule.label" default="Schedule" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="schedule" name="schedule.id" from="${org.itech.klinikav2.domain.Schedule.list()}" optionKey="id" required="" value="${doctorInstance?.schedule?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: doctorInstance, field: 'schedule', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: doctorInstance, field: 'telNumber', 'error')} ">
				<label for="telNumber" class="control-label"><g:message code="doctor.telNumber.label" default="Tel Number" /></label>
				<div class="controls">
					<g:textField name="telNumber" value="${doctorInstance?.telNumber}"/>
					<span class="help-inline">${hasErrors(bean: doctorInstance, field: 'telNumber', 'error')}</span>
				</div>
			</div>

