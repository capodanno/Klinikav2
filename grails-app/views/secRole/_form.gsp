<%@ page import="org.itech.klinikav2.domain.SecRole" %>



			<div class="control-group fieldcontain ${hasErrors(bean: secRoleInstance, field: 'authority', 'error')} required">
				<label for="authority" class="control-label"><g:message code="secRole.authority.label" default="Authority" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="authority" required="" value="${secRoleInstance?.authority}"/>
					<span class="help-inline">${hasErrors(bean: secRoleInstance, field: 'authority', 'error')}</span>
				</div>
			</div>

