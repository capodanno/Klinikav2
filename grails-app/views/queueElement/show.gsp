
<%@ page import="org.itech.klinikav2.domain.QueueElement" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'queueElement.label', default: 'QueueElement')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-queueElement" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="queueElement.appointmentType.label" default="Appointment Type" /></td>
				
				<td valign="top" class="value">${queueElementInstance?.appointmentType?.encodeAsHTML()}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="queueElement.complaints.label" default="Complaints" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: queueElementInstance, field: "complaints")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="queueElement.date.label" default="Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${queueElementInstance?.date}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="queueElement.patient.label" default="Patient" /></td>
				
				<td valign="top" class="value"><g:link controller="patient" action="show" id="${queueElementInstance?.patient?.id}">${queueElementInstance?.patient?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="queueElement.timeAdmitted.label" default="Time Admitted" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: queueElementInstance, field: "timeAdmitted")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
