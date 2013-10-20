
<%@ page import="org.itech.klinikav2.domain.Payment" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'payment.label', default: 'Payment')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-payment" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="payment.amountPaid.label" default="Amount Paid" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: paymentInstance, field: "amountPaid")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="payment.date.label" default="Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${paymentInstance?.date}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="payment.hasBalance.label" default="Has Balance" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${paymentInstance?.hasBalance}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="payment.invoices.label" default="Invoices" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${paymentInstance.invoices}" var="i">
						<li><g:link controller="invoice" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="payment.patient.label" default="Patient" /></td>
				
				<td valign="top" class="value"><g:link controller="patient" action="show" id="${paymentInstance?.patient?.id}">${paymentInstance?.patient?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
