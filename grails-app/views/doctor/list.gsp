
<%@ page import="org.itech.klinikav2.domain.Doctor" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'doctor.label', default: 'Doctor')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-doctor" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="firstName" title="${message(code: 'doctor.firstName.label', default: 'First Name')}" />
			
				<g:sortableColumn property="middleName" title="${message(code: 'doctor.middleName.label', default: 'Middle Name')}" />
			
				<g:sortableColumn property="lastName" title="${message(code: 'doctor.lastName.label', default: 'Last Name')}" />
			
				<g:sortableColumn property="birthdate" title="${message(code: 'doctor.birthdate.label', default: 'Birthdate')}" />
			
				<g:sortableColumn property="address" title="${message(code: 'doctor.address.label', default: 'Address')}" />
			
				<g:sortableColumn property="mobileNumber" title="${message(code: 'doctor.mobileNumber.label', default: 'Mobile Number')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${doctorInstanceList}" status="i" var="doctorInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${doctorInstance.id}">${fieldValue(bean: doctorInstance, field: "firstName")}</g:link></td>
			
				<td>${fieldValue(bean: doctorInstance, field: "middleName")}</td>
			
				<td>${fieldValue(bean: doctorInstance, field: "lastName")}</td>
			
				<td><g:formatDate date="${doctorInstance.birthdate}" /></td>
			
				<td>${fieldValue(bean: doctorInstance, field: "address")}</td>
			
				<td>${fieldValue(bean: doctorInstance, field: "mobileNumber")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${doctorInstanceTotal}" />
	</div>
</section>

</body>

</html>
