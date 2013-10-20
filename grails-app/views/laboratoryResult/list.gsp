
<%@ page import="org.itech.klinikav2.domain.LaboratoryResult" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'laboratoryResult.label', default: 'LaboratoryResult')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-laboratoryResult" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="date" title="${message(code: 'laboratoryResult.date.label', default: 'Date')}" />
			
				<g:sortableColumn property="details" title="${message(code: 'laboratoryResult.details.label', default: 'Details')}" />
			
				<th><g:message code="laboratoryResult.patient.label" default="Patient" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${laboratoryResultInstanceList}" status="i" var="laboratoryResultInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${laboratoryResultInstance.id}">${fieldValue(bean: laboratoryResultInstance, field: "date")}</g:link></td>
			
				<td>${fieldValue(bean: laboratoryResultInstance, field: "details")}</td>
			
				<td>${fieldValue(bean: laboratoryResultInstance, field: "patient")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${laboratoryResultInstanceTotal}" />
	</div>
</section>

</body>

</html>
