
<%@ page import="org.itech.klinikav2.domain.Clinic" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'clinic.label', default: 'Clinic')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-clinic" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="clinic.clinicName.label" default="Clinic Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clinicInstance, field: "clinicName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="clinic.clinicHours.label" default="Clinic Hours" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clinicInstance, field: "clinicHours")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="clinic.address.label" default="Address" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clinicInstance, field: "address")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="clinic.mobileNum.label" default="Mobile Num" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clinicInstance, field: "mobileNum")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="clinic.telNum.label" default="Tel Num" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clinicInstance, field: "telNum")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="clinic.mission.label" default="Mission" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clinicInstance, field: "mission")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="clinic.vision.label" default="Vision" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clinicInstance, field: "vision")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="clinic.facebookUrl.label" default="Facebook Url" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clinicInstance, field: "facebookUrl")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="clinic.twitterUrl.label" default="Twitter Url" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clinicInstance, field: "twitterUrl")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="clinic.email.label" default="Email" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clinicInstance, field: "email")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="clinic.dateToday.label" default="Date Today" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${clinicInstance?.dateToday}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="clinic.inventory.label" default="Inventory" /></td>
				
				<td valign="top" class="value"><g:link controller="inventory" action="show" id="${clinicInstance?.inventory?.id}">${clinicInstance?.inventory?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="clinic.location.label" default="Location" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: clinicInstance, field: "location")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="clinic.patientQueues.label" default="Patient Queues" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${clinicInstance.patientQueues}" var="p">
						<li><g:link controller="patientQueue" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="clinic.profiles.label" default="Profiles" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${clinicInstance.profiles}" var="p">
						<li><g:link controller="profile" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="clinic.queueToday.label" default="Queue Today" /></td>
				
				<td valign="top" class="value"><g:link controller="patientQueue" action="show" id="${clinicInstance?.queueToday?.id}">${clinicInstance?.queueToday?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="clinic.revenue.label" default="Revenue" /></td>
				
				<td valign="top" class="value"><g:link controller="revenue" action="show" id="${clinicInstance?.revenue?.id}">${clinicInstance?.revenue?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
