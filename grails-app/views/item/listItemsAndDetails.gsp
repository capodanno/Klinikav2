
<%@ page import="org.itech.klinikav2.domain.Item" %>
<!DOCTYPE html>
<html>
	<head>
	<r:require module="export"/>
	
	<export:resource />
		<g:javascript library="jquery"/>
<style type="text/css" title="currentStyle">
@import "../css/demo_table.css";
</style>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>		
		
<a href="#list-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        
	<div class="content">
	
	<div class="container">
	<div class="page-header topSlider">
	<h1>Item<small> Item Reports</small></h1>
	</div>
<export:formats class="btn btn-primary" formats="['excel']"/><span class="modalLeft"></span><export:formats class="btn btn-success" formats="[ 'pdf' ]" />
	

 
	
		<div id="list-item" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			
			<table id="dataTablesList">
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'item.name.label', default: 'Name')}" />
						
						<g:sortableColumn property="description" title="${message(code: 'item.description.label', default: 'Description')}" />
						
						<g:sortableColumn property="retailPrice" title="${message(code: 'item.retailPrice.label', default: 'Retail Price')}" />
															
						<g:sortableColumn property="itemType" title="${message(code: 'item.itemType.label', default: 'Item Type')}" />
					
						<g:sortableColumn property="currentQuantity" title="${message(code: 'item.currentQuantity.label', default: 'Current Quantity')}" />
						
						<g:sortableColumn property="expiryDate" title="${message(code: 'item.expiryDate.label', default: 'Expiry Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${itemInstanceList}" status="i" var="itemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: itemInstance, field: "name")}</td>
						
						<td>${fieldValue(bean: itemInstance, field: "description")}</td>
						
						<td>${fieldValue(bean: itemInstance, field: "retailPrice")}</td>
					
						<td>${fieldValue(bean: itemInstance, field: "itemType")}</td>
						
						<td>${fieldValue(bean: itemInstance, field: "currentQuantity")}</td>
					
						<td>${fieldValue(bean: itemInstance, field: "expiryDate")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			
			<div class="paginateButtons">
    	<g:paginate total="${Item.count()}" />
		</div>

		 
		

			
			<div class="pagination">
				<g:paginate total="${itemInstanceTotal}" />
			</div>
			
			
		</div>
		</div>
		</div>

	</body>
	

</body>
</html>
