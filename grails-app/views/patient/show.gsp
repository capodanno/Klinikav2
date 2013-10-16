<%@ page import="org.itech.klinikav2.domain.Patient" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="content">
	      <div class="container">
	       <div class="page-header">
	          <h1>View <small>Patient</small></h1>       
	        </div>
	        
	        
	        <div class="LeftMargin row">
				<div class="span3">
				<div class="btn-group">
	            <a href="${createLink(uri: '/patient/create')}" class="btn btn-success btn-mini">
				<h5><span class="cus-user_add"></span> Add Patient</h5>
	            </a>
	            <a href="${createLink(uri: '/patient/list')}" class="btn btn-primary btn-mini">
				<h5><span class="cus-application_view_list"></span> Patient List</h5>
	            </a>
				</div>
			</div>
			
		<div id="show-patient" class="content scaffold-show topSlider alignCenter" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status"><span class="label label-warning">${flash.message}</span></div>
			</g:if>
			
				  <dl class="dl-horizontal topSlider">
					  <dt>First Name</dt>
					  <dd><g:fieldValue bean="${patientInstance}" field="firstName"/></dd>
					  <dt>Middle Name</dt>
					  <dd><g:fieldValue bean="${patientInstance}" field="middleName"/></dd>
					  <dt>Last Name</dt>
					  <dd><g:fieldValue bean="${patientInstance}" field="lastName"/></dd>
					  <dt>Gender</dt>
					  <dd><g:fieldValue bean="${patientInstance}" field="gender"/></dd>
					  <dt>Marital Status</dt>
					  <dd><g:fieldValue bean="${patientInstance}" field="maritalStatus"/></dd>
					  <dt>Marital Status</dt>
					  <dd><g:fieldValue bean="${patientInstance}" field="mobileNumber"/></dd>		
					  <dt>Street</dt>
					  <dd><g:fieldValue bean="${patientInstance}" field="address_street"/></dd>
					  <dt>Address City</dt>
					  <dd><g:fieldValue bean="${patientInstance}" field="address_city"/></dd>
					  <dt>Town</dt>
					  <dd><g:fieldValue bean="${patientInstance}" field="address_town"/></dd>
					  <dt>Province</dt>
					  <dd><g:fieldValue bean="${patientInstance}" field="address_province"/></dd>
					  <dt>Birthdate</dt>
					  <dd><g:formatDate bean="${patientInstance}" field="birthDate"/></dd>
					  <dt>Date of Registration</dt>
					  <dd><g:formatDate bean="${patientInstance}" field="dateOfRegistration"/></dd>
					  <dt>Email Address</dt>
					  <dd><g:fieldValue bean="${patientInstance}" field="emailAddress"/></dd>
					  <dt>Street</dt>
					  <dd><g:fieldValue bean="${patientInstance}" field="address_street"/></dd>
					  <dt>Active</dt>
					  <dd><g:fieldValue bean="${patientInstance}" field="isActive"/></dd>	
					  <dt>Deleted</dt>
					  <dd><g:fieldValue bean="${patientInstance}" field="isDeleted"/></dd>
					  		  
				  </dl>
				  			
<%--				<g:if test="${patientInstance?.diagnoses}">--%>
<%--				<li class="fieldcontain">--%>
<%--					<span id="diagnoses-label" class="property-label"><g:message code="patient.diagnoses.label" default="Diagnoses" /></span>--%>
<%--					--%>
<%--						<g:each in="${patientInstance.diagnoses}" var="d">--%>
<%--						<span class="property-value" aria-labelledby="diagnoses-label"><g:link controller="diagnosis" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>--%>
<%--						</g:each>--%>
<%--					--%>
<%--				</li>--%>
<%--				</g:if>--%>
<%--			--%>
<%--				<g:if test="${patientInstance?.laboratoryResults}">--%>
<%--				<li class="fieldcontain">--%>
<%--					<span id="laboratoryResults-label" class="property-label"><g:message code="patient.laboratoryResults.label" default="Laboratory Results" /></span>--%>
<%--					--%>
<%--						<g:each in="${patientInstance.laboratoryResults}" var="l">--%>
<%--						<span class="property-value" aria-labelledby="laboratoryResults-label"><g:link controller="laboratoryResult" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>--%>
<%--						</g:each>--%>
<%--					--%>
<%--				</li>--%>
<%--						--%>
<%--				<g:if test="${patientInstance?.logs}">--%>
<%--				<li class="fieldcontain">--%>
<%--					<span id="logs-label" class="property-label"><g:message code="patient.logs.label" default="Logs" /></span>--%>
<%--					--%>
<%--						<g:each in="${patientInstance.logs}" var="l">--%>
<%--						<span class="property-value" aria-labelledby="logs-label"><g:link controller="log" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>--%>
<%--						</g:each>--%>
<%--					--%>
<%--				</li>--%>
<%--				</g:if>--%>
<%--			--%>
<%--				<g:if test="${patientInstance?.medicalHistories}">--%>
<%--				<li class="fieldcontain">--%>
<%--					<span id="medicalHistories-label" class="property-label"><g:message code="patient.medicalHistories.label" default="Medical Histories" /></span>--%>
<%--					--%>
<%--						<g:each in="${patientInstance.medicalHistories}" var="m">--%>
<%--						<span class="property-value" aria-labelledby="medicalHistories-label"><g:link controller="medicalHistory" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>--%>
<%--						</g:each>--%>
<%--					--%>
<%--				</li>--%>
<%--				</g:if>--%>
			
				<g:if test="${patientInstance?.mobileNumber}">
				<li class="fieldcontain">
					<span id="mobileNumber-label" class="property-label"><g:message code="patient.mobileNumber.label" default="Mobile Number" /></span>
					
						<span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${patientInstance}" field="mobileNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.prescriptions}">
				<li class="fieldcontain">
					<span id="prescriptions-label" class="property-label"><g:message code="patient.prescriptions.label" default="Prescriptions" /></span>
					
						<g:each in="${patientInstance.prescriptions}" var="p">
						<span class="property-value" aria-labelledby="prescriptions-label"><g:link controller="prescription" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.referrals}">
				<li class="fieldcontain">
					<span id="referrals-label" class="property-label"><g:message code="patient.referrals.label" default="Referrals" /></span>
					
						<g:each in="${patientInstance.referrals}" var="r">
						<span class="property-value" aria-labelledby="referrals-label"><g:link controller="referral" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.telNumber}">
				<li class="fieldcontain">
					<span id="telNumber-label" class="property-label"><g:message code="patient.telNumber.label" default="Tel Number" /></span>
					
						<span class="property-value" aria-labelledby="telNumber-label"><g:fieldValue bean="${patientInstance}" field="telNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.vitalSigns}">
				<li class="fieldcontain">
					<span id="vitalSigns-label" class="property-label"><g:message code="patient.vitalSigns.label" default="Vital Signs" /></span>
					
						<g:each in="${patientInstance.vitalSigns}" var="v">
						<span class="property-value" aria-labelledby="vitalSigns-label"><g:link controller="vitalSigns" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${patientInstance?.id}" />
					<g:link class="edit" action="edit" id="${patientInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</div>
		</div>
		</div>
	</body>
</html>
