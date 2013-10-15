<%@ page import="org.itech.klinikav2.domain.Patient" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="content">
	      <div class="container">
	       <div class="page-header">
	          <h1>Lists <small>Patient</small></h1>
	        </div>
			<div class="LeftMargin row">
				<div class="span3">
	            <a href="${createLink(uri: '/patient/create')}" class="btn btn-success btn-mini">
				<h5><span class="cus-user_add"></span> Add Patient</h5>
	            </a>
				</div>
				
				<div class="span6"></div>
				<div class="span3">
					<form class="form-search">
					  <div class="input-append">
						<input type="text" class="span2 search-query">
						<button type="submit" class="btn"><span class="cus-magnifier" ></span> Search</button>
					  </div>
					</form>
				</div>           
			</div>
			
		<div id="list-patient" class="content scaffold-list topSlider" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status"><span class="label label-warning">${flash.message}</span></div>
			</g:if>
			<table class="table table-bordered">
				<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'patient.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'patient.lastName.label', default: 'Last Name')}" />
					
						<th>Marital Status</th>
					
						<g:sortableColumn property="dateOfRegistration" title="${message(code: 'patient.dateOfRegistration.label', default: 'Date of Registration')}" />
					
						<th>Active</th>
					
						<th>Options</th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${patientInstanceList}" status="i" var="patientInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: patientInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: patientInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: patientInstance, field: "maritalStatus")}</td>
					
						<td>${fieldValue(bean: patientInstance, field: "dateOfRegistration")}</td>
					
						<td>${fieldValue(bean: patientInstance, field: "isActive")}</td>
						
						<td><g:link action="show" id="${patientInstance.id}">View</g:link> | <g:link class="edit" action="edit" id="${patientInstance?.id}">Edit</g:link> | <g:link class="delete" action="delete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"> Delete</g:link></td>
						
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${patientInstanceTotal}" />
			</div>
		</div>
		</div>
		</div>
	</body>
</html>
