
<%@ page import="org.itech.klinikav2.domain.Item" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>
<div class="content">
	<div class="container">
	<div class="page-header">
	<h1>Create<small> Item</small></h1>
	</div>
<section id="show-item" class="first">

	<table class="table table-bordered">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><strong><g:message code="item.currentQuantity.label" default="Current Quantity" /></strong></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemInstance, field: "currentQuantity")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><strong><g:message code="item.description.label" default="Description" /></strong></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemInstance, field: "description")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><strong><g:message code="item.minStockLevel.label" default="Min Stock Level" /></strong></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemInstance, field: "minStockLevel")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><strong><g:message code="item.name.label" default="Name" /></strong></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><strong><g:message code="item.retailPrice.label" default="Retail Price" /></strong></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemInstance, field: "retailPrice")}</td>
				
			</tr>
		
		<%--	<tr class="prop">
				<td valign="top" class="name"><g:message code="item.hasReachedMinimum.label" default="Has Reached Minimum" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${itemInstance?.hasReachedMinimum}" /></td>
				
			</tr>  --%>
		
			<tr class="prop">
				<td valign="top" class="name"><strong><g:message code="item.expiryDate.label" default="Expiry Date" /></strong></td>
				
				<td valign="top" class="value"><g:formatDate date="${itemInstance?.expiryDate}" /></td>
				
			</tr>
		
		<%--	<tr class="prop">
				<td valign="top" class="name"><g:message code="item.isActive.label" default="Is Active" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${itemInstance?.isActive}" /></td>
				
			</tr>  --%>
		
			<tr class="prop">
				<td valign="top" class="name"><strong><g:message code="item.itemType.label" default="Item Type" /></strong></td>
				
				<td valign="top" class="value">${itemInstance?.itemType?.encodeAsHTML()}</td>
				
			</tr>
		
		<%--	<tr class="prop">
				<td valign="top" class="name"><g:message code="item.newInstance.label" default="New Instance" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${itemInstance?.newInstance}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="item.notifier.label" default="Notifier" /></td>
				
				<td valign="top" class="value"><g:link controller="itemNotifier" action="show" id="${itemInstance?.notifier?.id}">${itemInstance?.notifier?.encodeAsHTML()}</g:link></td>
				
			</tr> --%>
		
		</tbody>
	</table>
</section>
</div>
</div>
</body>

</html>
