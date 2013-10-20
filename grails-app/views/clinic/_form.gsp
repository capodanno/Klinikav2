<%@ page import="org.itech.klinikav2.domain.Clinic" %>



			<div class="control-group fieldcontain ${hasErrors(bean: clinicInstance, field: 'clinicName', 'error')} required">
				<label for="clinicName" class="control-label"><g:message code="clinic.clinicName.label" default="Clinic Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="clinicName" required="" value="${clinicInstance?.clinicName}"/>
					<span class="help-inline">${hasErrors(bean: clinicInstance, field: 'clinicName', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clinicInstance, field: 'clinicHours', 'error')} required">
				<label for="clinicHours" class="control-label"><g:message code="clinic.clinicHours.label" default="Clinic Hours" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="clinicHours" required="" value="${clinicInstance?.clinicHours}"/>
					<span class="help-inline">${hasErrors(bean: clinicInstance, field: 'clinicHours', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clinicInstance, field: 'address', 'error')} required">
				<label for="address" class="control-label"><g:message code="clinic.address.label" default="Address" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textArea name="address" cols="40" rows="5" required="" value="${clinicInstance?.address}"/>
					<span class="help-inline">${hasErrors(bean: clinicInstance, field: 'address', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clinicInstance, field: 'mobileNum', 'error')} required">
				<label for="mobileNum" class="control-label"><g:message code="clinic.mobileNum.label" default="Mobile Num" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="mobileNum" required="" value="${clinicInstance?.mobileNum}"/>
					<span class="help-inline">${hasErrors(bean: clinicInstance, field: 'mobileNum', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clinicInstance, field: 'telNum', 'error')} required">
				<label for="telNum" class="control-label"><g:message code="clinic.telNum.label" default="Tel Num" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="telNum" required="" value="${clinicInstance?.telNum}"/>
					<span class="help-inline">${hasErrors(bean: clinicInstance, field: 'telNum', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clinicInstance, field: 'mission', 'error')} required">
				<label for="mission" class="control-label"><g:message code="clinic.mission.label" default="Mission" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="mission" required="" value="${clinicInstance?.mission}"/>
					<span class="help-inline">${hasErrors(bean: clinicInstance, field: 'mission', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clinicInstance, field: 'vision', 'error')} required">
				<label for="vision" class="control-label"><g:message code="clinic.vision.label" default="Vision" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="vision" required="" value="${clinicInstance?.vision}"/>
					<span class="help-inline">${hasErrors(bean: clinicInstance, field: 'vision', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clinicInstance, field: 'facebookUrl', 'error')} ">
				<label for="facebookUrl" class="control-label"><g:message code="clinic.facebookUrl.label" default="Facebook Url" /></label>
				<div class="controls">
					<g:textField name="facebookUrl" value="${clinicInstance?.facebookUrl}"/>
					<span class="help-inline">${hasErrors(bean: clinicInstance, field: 'facebookUrl', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clinicInstance, field: 'twitterUrl', 'error')} ">
				<label for="twitterUrl" class="control-label"><g:message code="clinic.twitterUrl.label" default="Twitter Url" /></label>
				<div class="controls">
					<g:textField name="twitterUrl" value="${clinicInstance?.twitterUrl}"/>
					<span class="help-inline">${hasErrors(bean: clinicInstance, field: 'twitterUrl', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clinicInstance, field: 'email', 'error')} required">
				<label for="email" class="control-label"><g:message code="clinic.email.label" default="Email" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="email" name="email" required="" value="${clinicInstance?.email}"/>
					<span class="help-inline">${hasErrors(bean: clinicInstance, field: 'email', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clinicInstance, field: 'dateToday', 'error')} required">
				<label for="dateToday" class="control-label"><g:message code="clinic.dateToday.label" default="Date Today" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="dateToday" precision="day"  value="${clinicInstance?.dateToday}"  />
					<span class="help-inline">${hasErrors(bean: clinicInstance, field: 'dateToday', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clinicInstance, field: 'inventory', 'error')} required">
				<label for="inventory" class="control-label"><g:message code="clinic.inventory.label" default="Inventory" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="inventory" name="inventory.id" from="${org.itech.klinikav2.domain.Inventory.list()}" optionKey="id" required="" value="${clinicInstance?.inventory?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: clinicInstance, field: 'inventory', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clinicInstance, field: 'location', 'error')} ">
				<label for="location" class="control-label"><g:message code="clinic.location.label" default="Location" /></label>
				<div class="controls">
					<g:textField name="location" value="${clinicInstance?.location}"/>
					<span class="help-inline">${hasErrors(bean: clinicInstance, field: 'location', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clinicInstance, field: 'patientQueues', 'error')} ">
				<label for="patientQueues" class="control-label"><g:message code="clinic.patientQueues.label" default="Patient Queues" /></label>
				<div class="controls">
					<g:select name="patientQueues" from="${org.itech.klinikav2.domain.PatientQueue.list()}" multiple="multiple" optionKey="id" size="5" value="${clinicInstance?.patientQueues*.id}" class="many-to-many"/>
					<span class="help-inline">${hasErrors(bean: clinicInstance, field: 'patientQueues', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clinicInstance, field: 'profiles', 'error')} ">
				<label for="profiles" class="control-label"><g:message code="clinic.profiles.label" default="Profiles" /></label>
				<div class="controls">
					<g:select name="profiles" from="${org.itech.klinikav2.domain.Profile.list()}" multiple="multiple" optionKey="id" size="5" value="${clinicInstance?.profiles*.id}" class="many-to-many"/>
					<span class="help-inline">${hasErrors(bean: clinicInstance, field: 'profiles', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clinicInstance, field: 'queueToday', 'error')} required">
				<label for="queueToday" class="control-label"><g:message code="clinic.queueToday.label" default="Queue Today" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="queueToday" name="queueToday.id" from="${org.itech.klinikav2.domain.PatientQueue.list()}" optionKey="id" required="" value="${clinicInstance?.queueToday?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: clinicInstance, field: 'queueToday', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: clinicInstance, field: 'revenue', 'error')} required">
				<label for="revenue" class="control-label"><g:message code="clinic.revenue.label" default="Revenue" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="revenue" name="revenue.id" from="${org.itech.klinikav2.domain.Revenue.list()}" optionKey="id" required="" value="${clinicInstance?.revenue?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: clinicInstance, field: 'revenue', 'error')}</span>
				</div>
			</div>

