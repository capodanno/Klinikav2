<%@ page import="org.itech.klinikav2.domain.Event" %>



			<div class="control-group fieldcontain ${hasErrors(bean: eventInstance, field: 'details', 'error')} ">
				<label for="details" class="control-label"><g:message code="event.details.label" default="Details" /></label>
				<div class="controls">
					<g:textField name="details" value="${eventInstance?.details}"/>
					<span class="help-inline">${hasErrors(bean: eventInstance, field: 'details', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: eventInstance, field: 'eventEnd', 'error')} required">
				<label for="eventEnd" class="control-label"><g:message code="event.eventEnd.label" default="Event End" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="eventEnd" precision="day"  value="${eventInstance?.eventEnd}"  />
					<span class="help-inline">${hasErrors(bean: eventInstance, field: 'eventEnd', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: eventInstance, field: 'eventStart', 'error')} required">
				<label for="eventStart" class="control-label"><g:message code="event.eventStart.label" default="Event Start" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="eventStart" precision="day"  value="${eventInstance?.eventStart}"  />
					<span class="help-inline">${hasErrors(bean: eventInstance, field: 'eventStart', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: eventInstance, field: 'location', 'error')} ">
				<label for="location" class="control-label"><g:message code="event.location.label" default="Location" /></label>
				<div class="controls">
					<g:textField name="location" value="${eventInstance?.location}"/>
					<span class="help-inline">${hasErrors(bean: eventInstance, field: 'location', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: eventInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="event.name.label" default="Name" /></label>
				<div class="controls">
					<g:textField name="name" value="${eventInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: eventInstance, field: 'name', 'error')}</span>
				</div>
			</div>

