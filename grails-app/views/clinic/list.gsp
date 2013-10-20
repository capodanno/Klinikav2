
<%@ page import="org.itech.klinikav2.domain.Clinic" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'clinic.label', default: 'Clinic')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-clinic" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="clinicName" title="${message(code: 'clinic.clinicName.label', default: 'Clinic Name')}" />
			
				<g:sortableColumn property="clinicHours" title="${message(code: 'clinic.clinicHours.label', default: 'Clinic Hours')}" />
			
				<g:sortableColumn property="address" title="${message(code: 'clinic.address.label', default: 'Address')}" />
			
				<g:sortableColumn property="mobileNum" title="${message(code: 'clinic.mobileNum.label', default: 'Mobile Num')}" />
			
				<g:sortableColumn property="telNum" title="${message(code: 'clinic.telNum.label', default: 'Tel Num')}" />
			
				<g:sortableColumn property="mission" title="${message(code: 'clinic.mission.label', default: 'Mission')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${clinicInstanceList}" status="i" var="clinicInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${clinicInstance.id}">${fieldValue(bean: clinicInstance, field: "clinicName")}</g:link></td>
			
				<td>${fieldValue(bean: clinicInstance, field: "clinicHours")}</td>
			
				<td>${fieldValue(bean: clinicInstance, field: "address")}</td>
			
				<td>${fieldValue(bean: clinicInstance, field: "mobileNum")}</td>
			
				<td>${fieldValue(bean: clinicInstance, field: "telNum")}</td>
			
				<td>${fieldValue(bean: clinicInstance, field: "mission")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${clinicInstanceTotal}" />
	</div>
</section>

</body>

</html>
