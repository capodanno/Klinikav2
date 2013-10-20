
<%@ page import="org.itech.klinikav2.domain.Prescription" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'prescription.label', default: 'Prescription')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-prescription" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="prescription.age.label" default="Age" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: prescriptionInstance, field: "age")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="prescription.clinicAddress.label" default="Clinic Address" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: prescriptionInstance, field: "clinicAddress")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="prescription.clinicMobileNumber.label" default="Clinic Mobile Number" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: prescriptionInstance, field: "clinicMobileNumber")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="prescription.clinicName.label" default="Clinic Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: prescriptionInstance, field: "clinicName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="prescription.clinicTelNumber.label" default="Clinic Tel Number" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: prescriptionInstance, field: "clinicTelNumber")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="prescription.date.label" default="Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${prescriptionInstance?.date}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="prescription.description.label" default="Description" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: prescriptionInstance, field: "description")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="prescription.patient.label" default="Patient" /></td>
				
				<td valign="top" class="value"><g:link controller="patient" action="show" id="${prescriptionInstance?.patient?.id}">${prescriptionInstance?.patient?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
