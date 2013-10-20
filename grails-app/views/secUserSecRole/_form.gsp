<%@ page import="org.itech.klinikav2.domain.SecUserSecRole" %>



			<div class="control-group fieldcontain ${hasErrors(bean: secUserSecRoleInstance, field: 'secRole', 'error')} required">
				<label for="secRole" class="control-label"><g:message code="secUserSecRole.secRole.label" default="Sec Role" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="secRole" name="secRole.id" from="${org.itech.klinikav2.domain.SecRole.list()}" optionKey="id" required="" value="${secUserSecRoleInstance?.secRole?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: secUserSecRoleInstance, field: 'secRole', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: secUserSecRoleInstance, field: 'secUser', 'error')} required">
				<label for="secUser" class="control-label"><g:message code="secUserSecRole.secUser.label" default="Sec User" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="secUser" name="secUser.id" from="${org.itech.klinikav2.domain.SecUser.list()}" optionKey="id" required="" value="${secUserSecRoleInstance?.secUser?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: secUserSecRoleInstance, field: 'secUser', 'error')}</span>
				</div>
			</div>

