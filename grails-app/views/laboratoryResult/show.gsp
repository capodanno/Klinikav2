
<%@ page import="org.itech.klinikav2.domain.LaboratoryResult" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'laboratoryResult.label', default: 'LaboratoryResult')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-laboratoryResult" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="laboratoryResult.date.label" default="Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${laboratoryResultInstance?.date}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="laboratoryResult.details.label" default="Details" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: laboratoryResultInstance, field: "details")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="laboratoryResult.patient.label" default="Patient" /></td>
				
				<td valign="top" class="value"><g:link controller="patient" action="show" id="${laboratoryResultInstance?.patient?.id}">${laboratoryResultInstance?.patient?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
