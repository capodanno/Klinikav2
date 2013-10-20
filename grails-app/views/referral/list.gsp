
<%@ page import="org.itech.klinikav2.domain.Referral" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'referral.label', default: 'Referral')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-referral" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="address" title="${message(code: 'referral.address.label', default: 'Address')}" />
			
				<g:sortableColumn property="date" title="${message(code: 'referral.date.label', default: 'Date')}" />
			
				<g:sortableColumn property="doctorName" title="${message(code: 'referral.doctorName.label', default: 'Doctor Name')}" />
			
				<th><g:message code="referral.patient.label" default="Patient" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${referralInstanceList}" status="i" var="referralInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${referralInstance.id}">${fieldValue(bean: referralInstance, field: "address")}</g:link></td>
			
				<td><g:formatDate date="${referralInstance.date}" /></td>
			
				<td>${fieldValue(bean: referralInstance, field: "doctorName")}</td>
			
				<td>${fieldValue(bean: referralInstance, field: "patient")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${referralInstanceTotal}" />
	</div>
</section>

</body>

</html>
