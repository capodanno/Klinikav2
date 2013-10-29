
<%@ page import="org.itech.klinikav2.domain.Payment" %>
!DOCTYPE html>
	<html>
		<head>
		<r:require module="export"/>
		
		<export:resource />
			<g:javascript library="jquery"/>
	<style type="text/css" title="currentStyle">
	@import "../css/demo_table.css";
	</style>
			<meta name="layout" content="kickstart">
			<g:set var="entityName" value="${message(code: 'payment.label', default: 'Payment')}" />
			<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>		
			
	<a href="#list-payment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
	        
		<div class="content">
		
		<div class="container">
		<div class="page-header topSlider">
		<h1>Payment<small> Patient With Balances</small></h1>
		</div>
		<export:formats class="btn btn-primary" formats="['excel']"/><span class="modalLeft"></span><export:formats class="btn btn-success" formats="[ 'pdf' ]" />
	
	 
		
			<div id="list-p" class="content scaffold-list" role="main">
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				
			
	
			
				<table id="dataTablesList">
					<thead>
						<tr>
						
							<g:sortableColumn property="patient" title="${message(code: 'payment.patient.label', default: 'Patient')}" />
					
							<g:sortableColumn property="amountPaid" title="${message(code: 'payment.amountPaid.label', default: 'Amount Paid')}" />
						</tr>
					</thead>
					<tbody>
					<g:each in="${PaymentInstanceList}" status="i" var="paymentInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
							<td>${fieldValue(bean: paymentInstance, field: "patient")}</td>
					
						<td>${fieldValue(bean: paymentInstance, field: "amountPaid")}</td>
						
						</tr>
					</g:each>
					</tbody>
				</table>
				
				<div class="paginateButtons">
	    	<g:paginate total="${Payment.count()}" />
	    	
	   
			</div>
			
			<div>
			
			</div>
			
				
				<div class="pagination">
					<g:paginate total="${paymentInstanceTotal}" />
				</div>
			</div>
			</div>
			</div>
	
		</body>
		
	
	</body>
	</html>