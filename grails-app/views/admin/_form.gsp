<%@ page import="org.itech.klinikav2.domain.Admin" %>



			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'username', 'error')} required">
				<label for="username" class="control-label"><g:message code="admin.username.label" default="Username" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="username" required="" value="${adminInstance?.username}"/>
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'username', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'password', 'error')} required">
				<label for="password" class="control-label"><g:message code="admin.password.label" default="Password" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="password" required="" value="${adminInstance?.password}"/>
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'password', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'accountExpired', 'error')} ">
				<label for="accountExpired" class="control-label"><g:message code="admin.accountExpired.label" default="Account Expired" /></label>
				<div class="controls">
					<bs:checkBox name="accountExpired" value="${adminInstance?.accountExpired}" />
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'accountExpired', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'accountLocked', 'error')} ">
				<label for="accountLocked" class="control-label"><g:message code="admin.accountLocked.label" default="Account Locked" /></label>
				<div class="controls">
					<bs:checkBox name="accountLocked" value="${adminInstance?.accountLocked}" />
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'accountLocked', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'answer', 'error')} ">
				<label for="answer" class="control-label"><g:message code="admin.answer.label" default="Answer" /></label>
				<div class="controls">
					<g:textField name="answer" value="${adminInstance?.answer}"/>
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'answer', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'enabled', 'error')} ">
				<label for="enabled" class="control-label"><g:message code="admin.enabled.label" default="Enabled" /></label>
				<div class="controls">
					<bs:checkBox name="enabled" value="${adminInstance?.enabled}" />
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'enabled', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'isfirstLog', 'error')} ">
				<label for="isfirstLog" class="control-label"><g:message code="admin.isfirstLog.label" default="Isfirst Log" /></label>
				<div class="controls">
					<bs:checkBox name="isfirstLog" value="${adminInstance?.isfirstLog}" />
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'isfirstLog', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'passwordExpired', 'error')} ">
				<label for="passwordExpired" class="control-label"><g:message code="admin.passwordExpired.label" default="Password Expired" /></label>
				<div class="controls">
					<bs:checkBox name="passwordExpired" value="${adminInstance?.passwordExpired}" />
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'passwordExpired', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'question', 'error')} required">
				<label for="question" class="control-label"><g:message code="admin.question.label" default="Question" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="question" from="${org.itech.klinikav2.enums.SecurityQuestion?.values()}" keys="${org.itech.klinikav2.enums.SecurityQuestion.values()*.name()}" required="" value="${adminInstance?.question?.name()}"/>
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'question', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: adminInstance, field: 'registrationDate', 'error')} required">
				<label for="registrationDate" class="control-label"><g:message code="admin.registrationDate.label" default="Registration Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="registrationDate" precision="day"  value="${adminInstance?.registrationDate}"  />
					<span class="help-inline">${hasErrors(bean: adminInstance, field: 'registrationDate', 'error')}</span>
				</div>
			</div>

