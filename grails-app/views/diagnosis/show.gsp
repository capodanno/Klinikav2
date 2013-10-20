
<%@ page import="org.itech.klinikav2.domain.Diagnosis" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'diagnosis.label', default: 'Diagnosis')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-diagnosis" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="diagnosis.date.label" default="Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${diagnosisInstance?.date}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="diagnosis.details.label" default="Details" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: diagnosisInstance, field: "details")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
