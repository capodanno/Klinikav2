<%@ page import="org.itech.klinikav2.domain.CheckUpInvoice" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'checkUpInvoice.label', default: 'CheckUpInvoice')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-checkUpInvoice" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="date" title="${message(code: 'checkUpInvoice.date.label', default: 'Date')}" />
			
				<g:sortableColumn property="description" title="${message(code: 'checkUpInvoice.description.label', default: 'Description')}" />
			
				<th><g:message code="checkUpInvoice.doctor.label" default="Doctor" /></th>
			
				<g:sortableColumn property="hasBalance" title="${message(code: 'checkUpInvoice.hasBalance.label', default: 'Has Balance')}" />
			
				<th><g:message code="checkUpInvoice.patient.label" default="Patient" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${checkUpInvoiceInstanceList}" status="i" var="checkUpInvoiceInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${checkUpInvoiceInstance.id}">${fieldValue(bean: checkUpInvoiceInstance, field: "date")}</g:link></td>
			
				<td>${fieldValue(bean: checkUpInvoiceInstance, field: "description")}</td>
			
				<td>${fieldValue(bean: checkUpInvoiceInstance, field: "doctor")}</td>
			
				<td><g:formatBoolean boolean="${checkUpInvoiceInstance.hasBalance}" /></td>
			
				<td>${fieldValue(bean: checkUpInvoiceInstance, field: "patient")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${checkUpInvoiceInstanceTotal}" />
	</div>
</section>

</body>

</html>