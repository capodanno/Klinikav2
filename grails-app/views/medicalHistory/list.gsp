
<%@ page import="org.itech.klinikav2.domain.MedicalHistory" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'medicalHistory.label', default: 'MedicalHistory')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-medicalHistory" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="pastIllness" title="${message(code: 'medicalHistory.pastIllness.label', default: 'Past Illness')}" />
			
				<g:sortableColumn property="pastMedications" title="${message(code: 'medicalHistory.pastMedications.label', default: 'Past Medications')}" />
			
				<th><g:message code="medicalHistory.patient.label" default="Patient" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${medicalHistoryInstanceList}" status="i" var="medicalHistoryInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${medicalHistoryInstance.id}">${fieldValue(bean: medicalHistoryInstance, field: "pastIllness")}</g:link></td>
			
				<td>${fieldValue(bean: medicalHistoryInstance, field: "pastMedications")}</td>
			
				<td>${fieldValue(bean: medicalHistoryInstance, field: "patient")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${medicalHistoryInstanceTotal}" />
	</div>
</section>

</body>

</html>
