
<%@ page import="org.itech.klinikav2.domain.SecUserSecRole" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'secUserSecRole.label', default: 'SecUserSecRole')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-secUserSecRole" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<th><g:message code="secUserSecRole.secRole.label" default="Sec Role" /></th>
			
				<th><g:message code="secUserSecRole.secUser.label" default="Sec User" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${secUserSecRoleInstanceList}" status="i" var="secUserSecRoleInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${secUserSecRoleInstance.id}">${fieldValue(bean: secUserSecRoleInstance, field: "secRole")}</g:link></td>
			
				<td>${fieldValue(bean: secUserSecRoleInstance, field: "secUser")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${secUserSecRoleInstanceTotal}" />
	</div>
</section>

</body>

</html>
