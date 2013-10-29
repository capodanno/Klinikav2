
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
					
						<g:sortableColumn property="firstName" title="${message(code: 'patient.firstName.label', default: 'First Name')}" />
						
						<g:sortableColumn property="middleName" title="${message(code: 'patient.middleName.label', default: 'Middle Name')}" />
						
						<g:sortableColumn property="lastName" title="${message(code: 'patient.lastName.label', default: 'Last Name')}" />
						
						<g:sortableColumn property="birthDate" title="${message(code: 'patient.birthDate.label', default: 'Birth Date')}" />
						
						<g:sortableColumn property="gender" title="${message(code: 'patient.gender.label', default: 'Gender')}" />
						
						<g:sortableColumn property="maritalStatus" title="${message(code: 'patient.maritalStatus.label', default: 'Marital Status')}" />
						
						<g:sortableColumn property="dateOfRegistration" title="${message(code: 'patient.dateOfRegistration.label', default: 'Date Of Registration')}" />
						
						<g:sortableColumn property="emailAddress" title="${message(code: 'patient.emailAddress.label', default: 'Email Address')}" />
						
						<g:sortableColumn property="address_city" title="${message(code: 'patient.address_city.label', default: 'City')}" />
						
						<g:sortableColumn property="address_street" title="${message(code: 'patient.address_street.label', default: 'Street')}" />
						
						<g:sortableColumn property="address_town" title="${message(code: 'patient.middleName.label', default: 'Middle Name')}" />
						
					
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
