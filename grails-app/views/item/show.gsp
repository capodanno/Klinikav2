
<%@ page import="org.itech.klinikav2.domain.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-item" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list item">
			
				<g:if test="${itemInstance?.currentQuantity}">
				<li class="fieldcontain">
					<span id="currentQuantity-label" class="property-label"><g:message code="item.currentQuantity.label" default="Current Quantity" /></span>
					
						<span class="property-value" aria-labelledby="currentQuantity-label"><g:fieldValue bean="${itemInstance}" field="currentQuantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="item.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${itemInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.expiryDate}">
				<li class="fieldcontain">
					<span id="expiryDate-label" class="property-label"><g:message code="item.expiryDate.label" default="Expiry Date" /></span>
					
						<span class="property-value" aria-labelledby="expiryDate-label"><g:formatDate date="${itemInstance?.expiryDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.hasReachedMinimum}">
				<li class="fieldcontain">
					<span id="hasReachedMinimum-label" class="property-label"><g:message code="item.hasReachedMinimum.label" default="Has Reached Minimum" /></span>
					
						<span class="property-value" aria-labelledby="hasReachedMinimum-label"><g:formatBoolean boolean="${itemInstance?.hasReachedMinimum}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="item.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${itemInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.itemType}">
				<li class="fieldcontain">
					<span id="itemType-label" class="property-label"><g:message code="item.itemType.label" default="Item Type" /></span>
					
						<span class="property-value" aria-labelledby="itemType-label"><g:fieldValue bean="${itemInstance}" field="itemType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.minStockLevel}">
				<li class="fieldcontain">
					<span id="minStockLevel-label" class="property-label"><g:message code="item.minStockLevel.label" default="Min Stock Level" /></span>
					
						<span class="property-value" aria-labelledby="minStockLevel-label"><g:fieldValue bean="${itemInstance}" field="minStockLevel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="item.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${itemInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.notifier}">
				<li class="fieldcontain">
					<span id="notifier-label" class="property-label"><g:message code="item.notifier.label" default="Notifier" /></span>
					
						<span class="property-value" aria-labelledby="notifier-label"><g:link controller="itemNotifier" action="show" id="${itemInstance?.notifier?.id}">${itemInstance?.notifier?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.retailPrice}">
				<li class="fieldcontain">
					<span id="retailPrice-label" class="property-label"><g:message code="item.retailPrice.label" default="Retail Price" /></span>
					
						<span class="property-value" aria-labelledby="retailPrice-label"><g:fieldValue bean="${itemInstance}" field="retailPrice"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${itemInstance?.id}" />
					<g:link class="edit" action="edit" id="${itemInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
