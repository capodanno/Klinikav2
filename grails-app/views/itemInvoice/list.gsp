
<%@ page import="org.itech.klinikav2.domain.ItemInvoice" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'itemInvoice.label', default: 'ItemInvoice')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-itemInvoice" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="date" title="${message(code: 'itemInvoice.date.label', default: 'Date')}" />
			
				<th><g:message code="itemInvoice.doctor.label" default="Doctor" /></th>
			
				<g:sortableColumn property="hasBalance" title="${message(code: 'itemInvoice.hasBalance.label', default: 'Has Balance')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'itemInvoice.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="number" title="${message(code: 'itemInvoice.number.label', default: 'Number')}" />
			
				<th><g:message code="itemInvoice.patient.label" default="Patient" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${itemInvoiceInstanceList}" status="i" var="itemInvoiceInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${itemInvoiceInstance.id}">${fieldValue(bean: itemInvoiceInstance, field: "date")}</g:link></td>
			
				<td>${fieldValue(bean: itemInvoiceInstance, field: "doctor")}</td>
			
				<td><g:formatBoolean boolean="${itemInvoiceInstance.hasBalance}" /></td>
			
				<td>${fieldValue(bean: itemInvoiceInstance, field: "name")}</td>
			
				<td>${fieldValue(bean: itemInvoiceInstance, field: "number")}</td>
			
				<td>${fieldValue(bean: itemInvoiceInstance, field: "patient")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${itemInvoiceInstanceTotal}" />
	</div>
</section>

</body>

</html>
