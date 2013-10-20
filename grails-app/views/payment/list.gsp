
<%@ page import="org.itech.klinikav2.domain.Payment" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'payment.label', default: 'Payment')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-payment" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="amountPaid" title="${message(code: 'payment.amountPaid.label', default: 'Amount Paid')}" />
			
				<g:sortableColumn property="date" title="${message(code: 'payment.date.label', default: 'Date')}" />
			
				<g:sortableColumn property="hasBalance" title="${message(code: 'payment.hasBalance.label', default: 'Has Balance')}" />
			
				<th><g:message code="payment.patient.label" default="Patient" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${paymentInstanceList}" status="i" var="paymentInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${paymentInstance.id}">${fieldValue(bean: paymentInstance, field: "amountPaid")}</g:link></td>
			
				<td><g:formatDate date="${paymentInstance.date}" /></td>
			
				<td><g:formatBoolean boolean="${paymentInstance.hasBalance}" /></td>
			
				<td>${fieldValue(bean: paymentInstance, field: "patient")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	
	<div class="pagination">
		<bs:paginate total="${paymentInstanceTotal}" />
	</div>
</section>

</body>

</html>
