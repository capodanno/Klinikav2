
<%@ page import="org.itech.klinikav2.domain.SecRole" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'secRole.label', default: 'SecRole')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-secRole" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="authority" title="${message(code: 'secRole.authority.label', default: 'Authority')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${secRoleInstanceList}" status="i" var="secRoleInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${secRoleInstance.id}">${fieldValue(bean: secRoleInstance, field: "authority")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${secRoleInstanceTotal}" />
	</div>
</section>

</body>

</html>
