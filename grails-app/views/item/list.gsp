
<%@ page import="org.itech.klinikav2.domain.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-item" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="currentQuantity" title="${message(code: 'item.currentQuantity.label', default: 'Current Quantity')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'item.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="expiryDate" title="${message(code: 'item.expiryDate.label', default: 'Expiry Date')}" />
					
						<g:sortableColumn property="hasReachedMinimum" title="${message(code: 'item.hasReachedMinimum.label', default: 'Has Reached Minimum')}" />
					
						<g:sortableColumn property="isActive" title="${message(code: 'item.isActive.label', default: 'Is Active')}" />
					
						<g:sortableColumn property="itemType" title="${message(code: 'item.itemType.label', default: 'Item Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${itemInstanceList}" status="i" var="itemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${itemInstance.id}">${fieldValue(bean: itemInstance, field: "currentQuantity")}</g:link></td>
					
						<td>${fieldValue(bean: itemInstance, field: "description")}</td>
					
						<td><g:formatDate date="${itemInstance.expiryDate}" /></td>
					
						<td><g:formatBoolean boolean="${itemInstance.hasReachedMinimum}" /></td>
					
						<td><g:formatBoolean boolean="${itemInstance.isActive}" /></td>
					
						<td>${fieldValue(bean: itemInstance, field: "itemType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${itemInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
