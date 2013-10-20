
<%@ page import="org.itech.klinikav2.domain.Referral" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'referral.label', default: 'Referral')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-referral" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="referral.address.label" default="Address" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: referralInstance, field: "address")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="referral.date.label" default="Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${referralInstance?.date}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="referral.doctorName.label" default="Doctor Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: referralInstance, field: "doctorName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="referral.patient.label" default="Patient" /></td>
				
				<td valign="top" class="value"><g:link controller="patient" action="show" id="${referralInstance?.patient?.id}">${referralInstance?.patient?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
