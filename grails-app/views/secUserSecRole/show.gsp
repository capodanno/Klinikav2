
<%@ page import="org.itech.klinikav2.domain.SecUserSecRole" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'secUserSecRole.label', default: 'SecUserSecRole')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-secUserSecRole" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="secUserSecRole.secRole.label" default="Sec Role" /></td>
				
				<td valign="top" class="value"><g:link controller="secRole" action="show" id="${secUserSecRoleInstance?.secRole?.id}">${secUserSecRoleInstance?.secRole?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="secUserSecRole.secUser.label" default="Sec User" /></td>
				
				<td valign="top" class="value"><g:link controller="secUser" action="show" id="${secUserSecRoleInstance?.secUser?.id}">${secUserSecRoleInstance?.secUser?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
