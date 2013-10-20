
<%@ page import="org.itech.klinikav2.domain.VitalSigns" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'vitalSigns.label', default: 'VitalSigns')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-vitalSigns" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="bloodPressure" title="${message(code: 'vitalSigns.bloodPressure.label', default: 'Blood Pressure')}" />
			
				<g:sortableColumn property="date" title="${message(code: 'vitalSigns.date.label', default: 'Date')}" />
			
				<g:sortableColumn property="height" title="${message(code: 'vitalSigns.height.label', default: 'Height')}" />
			
				<g:sortableColumn property="lastMenstruationPeriod" title="${message(code: 'vitalSigns.lastMenstruationPeriod.label', default: 'Last Menstruation Period')}" />
			
				<th><g:message code="vitalSigns.patient.label" default="Patient" /></th>
			
				<g:sortableColumn property="pulseRate" title="${message(code: 'vitalSigns.pulseRate.label', default: 'Pulse Rate')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${vitalSignsInstanceList}" status="i" var="vitalSignsInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${vitalSignsInstance.id}">${fieldValue(bean: vitalSignsInstance, field: "bloodPressure")}</g:link></td>
			
				<td><g:formatDate date="${vitalSignsInstance.date}" /></td>
			
				<td>${fieldValue(bean: vitalSignsInstance, field: "height")}</td>
			
				<td><g:formatDate date="${vitalSignsInstance.lastMenstruationPeriod}" /></td>
			
				<td>${fieldValue(bean: vitalSignsInstance, field: "patient")}</td>
			
				<td>${fieldValue(bean: vitalSignsInstance, field: "pulseRate")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${vitalSignsInstanceTotal}" />
	</div>
</section>

</body>

</html>
