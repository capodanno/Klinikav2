
<%@ page import="org.itech.klinikav2.domain.Prescription" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'prescription.label', default: 'Prescription')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-prescription" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="age" title="${message(code: 'prescription.age.label', default: 'Age')}" />
			
				<g:sortableColumn property="clinicAddress" title="${message(code: 'prescription.clinicAddress.label', default: 'Clinic Address')}" />
			
				<g:sortableColumn property="clinicMobileNumber" title="${message(code: 'prescription.clinicMobileNumber.label', default: 'Clinic Mobile Number')}" />
			
				<g:sortableColumn property="clinicName" title="${message(code: 'prescription.clinicName.label', default: 'Clinic Name')}" />
			
				<g:sortableColumn property="clinicTelNumber" title="${message(code: 'prescription.clinicTelNumber.label', default: 'Clinic Tel Number')}" />
			
				<g:sortableColumn property="date" title="${message(code: 'prescription.date.label', default: 'Date')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${prescriptionInstanceList}" status="i" var="prescriptionInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${prescriptionInstance.id}">${fieldValue(bean: prescriptionInstance, field: "age")}</g:link></td>
			
				<td>${fieldValue(bean: prescriptionInstance, field: "clinicAddress")}</td>
			
				<td>${fieldValue(bean: prescriptionInstance, field: "clinicMobileNumber")}</td>
			
				<td>${fieldValue(bean: prescriptionInstance, field: "clinicName")}</td>
			
				<td>${fieldValue(bean: prescriptionInstance, field: "clinicTelNumber")}</td>
			
				<td><g:formatDate date="${prescriptionInstance.date}" /></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${prescriptionInstanceTotal}" />
	</div>
</section>

</body>

</html>
