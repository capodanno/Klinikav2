
<%@ page import="org.itech.klinikav2.domain.Event" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-event" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="details" title="${message(code: 'event.details.label', default: 'Details')}" />
			
				<g:sortableColumn property="eventEnd" title="${message(code: 'event.eventEnd.label', default: 'Event End')}" />
			
				<g:sortableColumn property="eventStart" title="${message(code: 'event.eventStart.label', default: 'Event Start')}" />
			
				<g:sortableColumn property="location" title="${message(code: 'event.location.label', default: 'Location')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'event.name.label', default: 'Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${eventInstanceList}" status="i" var="eventInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${eventInstance.id}">${fieldValue(bean: eventInstance, field: "details")}</g:link></td>
			
				<td><g:formatDate date="${eventInstance.eventEnd}" /></td>
			
				<td><g:formatDate date="${eventInstance.eventStart}" /></td>
			
				<td>${fieldValue(bean: eventInstance, field: "location")}</td>
			
				<td>${fieldValue(bean: eventInstance, field: "name")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${eventInstanceTotal}" />
	</div>
</section>

</body>

</html>
