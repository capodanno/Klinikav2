<%@ page import="org.itech.klinikav2.domain.StandardUser" %>



			<div class="control-group fieldcontain ${hasErrors(bean: standardUserInstance, field: 'username', 'error')} required">
				<label for="username" class="control-label"><g:message code="standardUser.username.label" default="Username" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="username" required="" value="${standardUserInstance?.username}"/>
					<span class="help-inline">${hasErrors(bean: standardUserInstance, field: 'username', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: standardUserInstance, field: 'password', 'error')} required">
				<label for="password" class="control-label"><g:message code="standardUser.password.label" default="Password" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="password" required="" value="${standardUserInstance?.password}"/>
					<span class="help-inline">${hasErrors(bean: standardUserInstance, field: 'password', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: standardUserInstance, field: 'profile', 'error')} required">
				<label for="profile" class="control-label"><g:message code="standardUser.profile.label" default="Profile" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="profile" name="profile.id" from="${org.itech.klinikav2.domain.Profile.list()}" optionKey="id" required="" value="${standardUserInstance?.profile?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: standardUserInstance, field: 'profile', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: standardUserInstance, field: 'accountExpired', 'error')} ">
				<label for="accountExpired" class="control-label"><g:message code="standardUser.accountExpired.label" default="Account Expired" /></label>
				<div class="controls">
					<bs:checkBox name="accountExpired" value="${standardUserInstance?.accountExpired}" />
					<span class="help-inline">${hasErrors(bean: standardUserInstance, field: 'accountExpired', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: standardUserInstance, field: 'accountLocked', 'error')} ">
				<label for="accountLocked" class="control-label"><g:message code="standardUser.accountLocked.label" default="Account Locked" /></label>
				<div class="controls">
					<bs:checkBox name="accountLocked" value="${standardUserInstance?.accountLocked}" />
					<span class="help-inline">${hasErrors(bean: standardUserInstance, field: 'accountLocked', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: standardUserInstance, field: 'answer', 'error')} ">
				<label for="answer" class="control-label"><g:message code="standardUser.answer.label" default="Answer" /></label>
				<div class="controls">
					<g:textField name="answer" value="${standardUserInstance?.answer}"/>
					<span class="help-inline">${hasErrors(bean: standardUserInstance, field: 'answer', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: standardUserInstance, field: 'enabled', 'error')} ">
				<label for="enabled" class="control-label"><g:message code="standardUser.enabled.label" default="Enabled" /></label>
				<div class="controls">
					<bs:checkBox name="enabled" value="${standardUserInstance?.enabled}" />
					<span class="help-inline">${hasErrors(bean: standardUserInstance, field: 'enabled', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: standardUserInstance, field: 'isfirstLog', 'error')} ">
				<label for="isfirstLog" class="control-label"><g:message code="standardUser.isfirstLog.label" default="Isfirst Log" /></label>
				<div class="controls">
					<bs:checkBox name="isfirstLog" value="${standardUserInstance?.isfirstLog}" />
					<span class="help-inline">${hasErrors(bean: standardUserInstance, field: 'isfirstLog', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: standardUserInstance, field: 'passwordExpired', 'error')} ">
				<label for="passwordExpired" class="control-label"><g:message code="standardUser.passwordExpired.label" default="Password Expired" /></label>
				<div class="controls">
					<bs:checkBox name="passwordExpired" value="${standardUserInstance?.passwordExpired}" />
					<span class="help-inline">${hasErrors(bean: standardUserInstance, field: 'passwordExpired', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: standardUserInstance, field: 'question', 'error')} required">
				<label for="question" class="control-label"><g:message code="standardUser.question.label" default="Question" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="question" from="${org.itech.klinikav2.enums.SecurityQuestion?.values()}" keys="${org.itech.klinikav2.enums.SecurityQuestion.values()*.name()}" required="" value="${standardUserInstance?.question?.name()}"/>
					<span class="help-inline">${hasErrors(bean: standardUserInstance, field: 'question', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: standardUserInstance, field: 'registrationDate', 'error')} required">
				<label for="registrationDate" class="control-label"><g:message code="standardUser.registrationDate.label" default="Registration Date" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="registrationDate" precision="day"  value="${standardUserInstance?.registrationDate}"  />
					<span class="help-inline">${hasErrors(bean: standardUserInstance, field: 'registrationDate', 'error')}</span>
				</div>
			</div>

