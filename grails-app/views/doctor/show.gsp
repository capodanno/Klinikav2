
<%@ page import="org.itech.klinikav2.domain.Doctor" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'doctor.label', default: 'Doctor')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-doctor" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="doctor.firstName.label" default="First Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: doctorInstance, field: "firstName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="doctor.middleName.label" default="Middle Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: doctorInstance, field: "middleName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="doctor.lastName.label" default="Last Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: doctorInstance, field: "lastName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="doctor.birthdate.label" default="Birthdate" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${doctorInstance?.birthdate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="doctor.address.label" default="Address" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: doctorInstance, field: "address")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="doctor.mobileNumber.label" default="Mobile Number" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: doctorInstance, field: "mobileNumber")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="doctor.email.label" default="Email" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: doctorInstance, field: "email")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="doctor.background.label" default="Background" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: doctorInstance, field: "background")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="doctor.clinicHourEnd.label" default="Clinic Hour End" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: doctorInstance, field: "clinicHourEnd")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="doctor.clinicHourStart.label" default="Clinic Hour Start" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: doctorInstance, field: "clinicHourStart")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="doctor.receptionists.label" default="Receptionists" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${doctorInstance.receptionists}" var="r">
						<li><g:link controller="receptionist" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="doctor.schedule.label" default="Schedule" /></td>
				
				<td valign="top" class="value"><g:link controller="schedule" action="show" id="${doctorInstance?.schedule?.id}">${doctorInstance?.schedule?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="doctor.telNumber.label" default="Tel Number" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: doctorInstance, field: "telNumber")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
