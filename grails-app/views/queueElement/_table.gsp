<%@ page import="org.itech.klinikav2.domain.QueueElement"%>
<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="appointmentType" title="${message(code: 'queueElement.appointmentType.label', default: 'Appointment Type')}" />
			
				<g:sortableColumn property="complaints" title="${message(code: 'queueElement.complaints.label', default: 'Complaints')}" />
			
				<g:sortableColumn property="date" title="${message(code: 'queueElement.date.label', default: 'Date')}" />
			
				<th><g:message code="queueElement.patient.label" default="Patient" /></th>
			
				<g:sortableColumn property="timeAdmitted" title="${message(code: 'queueElement.timeAdmitted.label', default: 'Time Admitted')}" />
			
					<th>Remarks</th>
			</tr>
		</thead>
		<tbody>
		<g:each in="${queueElementInstanceList}" status="i" var="queueElementInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${queueElementInstance.id}">${fieldValue(bean: queueElementInstance, field: "appointmentType")}</g:link></td>
			
				<td>${fieldValue(bean: queueElementInstance, field: "complaints")}</td>
			
				<td><g:formatDate date="${queueElementInstance.date}" /></td>
			
				<td><g:link action="showPatient"
						id="${queueElementInstance.id}">${fieldValue(bean: queueElementInstance, field: "patient")}</g:link></td>
			
				<td>${fieldValue(bean: queueElementInstance, field: "timeAdmitted")}</td>
			
				<td><g:link action="show" id="${queueElementInstance.id}">View</g:link> |
					<g:link class="edit" action="edit" id="${queueElementInstance?.id}">Edit</g:link> 
					<%--<g:link class="delete" action="delete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"> Delete</g:link>--%></td>
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${queueElementInstanceTotal}" />
	</div>