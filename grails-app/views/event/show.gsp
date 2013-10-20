
<%@ page import="org.itech.klinikav2.domain.Event" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-event" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="event.details.label" default="Details" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: eventInstance, field: "details")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="event.eventEnd.label" default="Event End" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${eventInstance?.eventEnd}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="event.eventStart.label" default="Event Start" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${eventInstance?.eventStart}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="event.location.label" default="Location" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: eventInstance, field: "location")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="event.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: eventInstance, field: "name")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
