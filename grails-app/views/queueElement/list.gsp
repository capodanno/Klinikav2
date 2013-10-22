
<%@ page import="org.itech.klinikav2.domain.QueueElement"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="kickstart" />
<meta http-equiv="refresh" content="5">
<g:set var="entityName"
	value="${message(code: 'queueElement.label', default: 'QueueElement')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

	<section id="list-queueElement" class="first">

		<table class="table table-bordered">
			<thead>
				<tr>

					<g:sortableColumn property="appointmentType"
						title="${message(code: 'queueElement.appointmentType.label', default: 'Appointment Type')}" />

					<g:sortableColumn property="complaints"
						title="${message(code: 'queueElement.complaints.label', default: 'Complaints')}" />

					<g:sortableColumn property="date"
						title="${message(code: 'queueElement.date.label', default: 'Date')}" />

					<th><g:message code="queueElement.patient.label"
							default="Patient" /></th>

					<g:sortableColumn property="timeAdmitted"
						title="${message(code: 'queueElement.timeAdmitted.label', default: 'Time Admitted')}" />

				</tr>
			</thead>
			<tbody>
				<g:each in="${queueElementInstanceList}" status="i"
					var="queueElementInstance">
					<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

						<td><g:link action="show" id="${queueElementInstance.id}">
								${fieldValue(bean: queueElementInstance, field: "appointmentType")}
							</g:link></td>

						<td>
							${fieldValue(bean: queueElementInstance, field: "complaints")}
						</td>

						<td><g:formatDate date="${queueElementInstance.date}" /></td>

						<td>
							${fieldValue(bean: queueElementInstance, field: "patient")}
						</td>

						<td>
							${fieldValue(bean: queueElementInstance, field: "timeAdmitted")}
						</td>

					</tr>
				</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<bs:paginate total="${queueElementInstanceTotal}" />
		</div>
	</section>

<r:script>
	$( document ).ready(function() {
			var link = "${createLink(action: "list")}"
			
	});
</r:script>

</body>

</html>
