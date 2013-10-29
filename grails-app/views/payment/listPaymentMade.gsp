
<%@ page import="org.itech.klinikav2.domain.Payment" %>
<!doctype html>
<html>
<head>
<r:require module="export"/>
	<export:resource />
	<g:javascript library="jquery"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="main" />
	<g:set var="entityName" value="${message(code: 'payment.label', default: 'Payment')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<a href="#list-payment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

		<div id="list-payment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table id="dataTablesList">
				<thead>
					<tr>
			
				<g:sortableColumn property="patient" title="${message(code: 'payment.patient.label', default: 'Patient')}" />
			
				<g:sortableColumn property="amountPaid" title="${message(code: 'payment.amountPaid.label', default: 'Amount Paid')}" />
			
				<g:sortableColumn property="date" title="${message(code: 'payment.date.label', default: 'Date')}" />
			
					
			</tr>
		</thead>
		<tbody>
		<g:each in="${paymentInstanceList}" status="i" var="paymentInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${paymentInstance.id}">${fieldValue(bean: paymentInstance, field: "patient")}</g:link></td>
				
				<td>${fieldValue(bean: paymentInstance, field: "amountPaid")}</td>
			
				<td><g:formatDate date="${paymentInstance.date}" /></td>
			
				
			
			</tr>
		</g:each>
		</tbody>
	</table>
	
	<div class="pagination">
		<bs:paginate total="${paymentInstanceTotal}" />
	</div>
	<div class="paginateButtons">
   				 <g:paginate total="${Payment.count()}" />
   				 <export:formats formats="['csv', 'excel', 'ods', 'pdf', 'xml']" />
			</div>
	</div>

</body>

</html>
