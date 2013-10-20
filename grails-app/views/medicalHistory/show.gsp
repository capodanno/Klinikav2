
<%@ page import="org.itech.klinikav2.domain.MedicalHistory" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'medicalHistory.label', default: 'MedicalHistory')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-medicalHistory" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="medicalHistory.pastIllness.label" default="Past Illness" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: medicalHistoryInstance, field: "pastIllness")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="medicalHistory.pastMedications.label" default="Past Medications" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: medicalHistoryInstance, field: "pastMedications")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="medicalHistory.patient.label" default="Patient" /></td>
				
				<td valign="top" class="value"><g:link controller="patient" action="show" id="${medicalHistoryInstance?.patient?.id}">${medicalHistoryInstance?.patient?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
