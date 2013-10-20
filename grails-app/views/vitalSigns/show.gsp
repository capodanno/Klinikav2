
<%@ page import="org.itech.klinikav2.domain.VitalSigns" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'vitalSigns.label', default: 'VitalSigns')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-vitalSigns" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="vitalSigns.bloodPressure.label" default="Blood Pressure" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: vitalSignsInstance, field: "bloodPressure")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="vitalSigns.date.label" default="Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${vitalSignsInstance?.date}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="vitalSigns.height.label" default="Height" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: vitalSignsInstance, field: "height")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="vitalSigns.lastMenstruationPeriod.label" default="Last Menstruation Period" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${vitalSignsInstance?.lastMenstruationPeriod}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="vitalSigns.patient.label" default="Patient" /></td>
				
				<td valign="top" class="value"><g:link controller="patient" action="show" id="${vitalSignsInstance?.patient?.id}">${vitalSignsInstance?.patient?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="vitalSigns.pulseRate.label" default="Pulse Rate" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: vitalSignsInstance, field: "pulseRate")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="vitalSigns.weight.label" default="Weight" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: vitalSignsInstance, field: "weight")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
