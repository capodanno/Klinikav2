
<%@ page import="org.itech.klinikav2.domain.ItemInvoice" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'itemInvoice.label', default: 'ItemInvoice')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-itemInvoice" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemInvoice.date.label" default="Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${itemInvoiceInstance?.date}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemInvoice.doctor.label" default="Doctor" /></td>
				
				<td valign="top" class="value"><g:link controller="doctor" action="show" id="${itemInvoiceInstance?.doctor?.id}">${itemInvoiceInstance?.doctor?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemInvoice.hasBalance.label" default="Has Balance" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${itemInvoiceInstance?.hasBalance}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemInvoice.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemInvoiceInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemInvoice.number.label" default="Number" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemInvoiceInstance, field: "number")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemInvoice.patient.label" default="Patient" /></td>
				
				<td valign="top" class="value"><g:link controller="patient" action="show" id="${itemInvoiceInstance?.patient?.id}">${itemInvoiceInstance?.patient?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemInvoice.payer.label" default="Payer" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemInvoiceInstance, field: "payer")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemInvoice.paymentMethod.label" default="Payment Method" /></td>
				
				<td valign="top" class="value">${itemInvoiceInstance?.paymentMethod?.encodeAsHTML()}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemInvoice.paymentOption.label" default="Payment Option" /></td>
				
				<td valign="top" class="value">${itemInvoiceInstance?.paymentOption?.encodeAsHTML()}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemInvoice.quantity.label" default="Quantity" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemInvoiceInstance, field: "quantity")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemInvoice.totalAmount.label" default="Total Amount" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemInvoiceInstance, field: "totalAmount")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemInvoice.totalPrice.label" default="Total Price" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemInvoiceInstance, field: "totalPrice")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemInvoice.unitPrice.label" default="Unit Price" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemInvoiceInstance, field: "unitPrice")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
