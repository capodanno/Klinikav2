
<%@ page import="org.itech.klinikav2.domain.Diagnosis" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'diagnosis.label', default: 'Diagnosis')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-diagnosis" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="date" title="${message(code: 'diagnosis.date.label', default: 'Date')}" />
			
				<g:sortableColumn property="details" title="${message(code: 'diagnosis.details.label', default: 'Details')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${diagnosisInstanceList}" status="i" var="diagnosisInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${diagnosisInstance.id}">${fieldValue(bean: diagnosisInstance, field: "date")}</g:link></td>
			
				<td>${fieldValue(bean: diagnosisInstance, field: "details")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${diagnosisInstanceTotal}" />
	</div>
</section>

</body>

</html>
