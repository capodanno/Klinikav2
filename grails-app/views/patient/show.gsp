<%@ page import="org.itech.klinikav2.domain.Patient" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'patient.label', default: 'Patient')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-patient" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-patient" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list patient">
			
				<g:if test="${patientInstance?.address_city}">
				<li class="fieldcontain">
					<span id="address_city-label" class="property-label"><g:message code="patient.address_city.label" default="Addresscity" /></span>
					
						<span class="property-value" aria-labelledby="address_city-label"><g:fieldValue bean="${patientInstance}" field="address_city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.address_province}">
				<li class="fieldcontain">
					<span id="address_province-label" class="property-label"><g:message code="patient.address_province.label" default="Addressprovince" /></span>
					
						<span class="property-value" aria-labelledby="address_province-label"><g:fieldValue bean="${patientInstance}" field="address_province"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.address_street}">
				<li class="fieldcontain">
					<span id="address_street-label" class="property-label"><g:message code="patient.address_street.label" default="Addressstreet" /></span>
					
						<span class="property-value" aria-labelledby="address_street-label"><g:fieldValue bean="${patientInstance}" field="address_street"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.address_town}">
				<li class="fieldcontain">
					<span id="address_town-label" class="property-label"><g:message code="patient.address_town.label" default="Addresstown" /></span>
					
						<span class="property-value" aria-labelledby="address_town-label"><g:fieldValue bean="${patientInstance}" field="address_town"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.birthDate}">
				<li class="fieldcontain">
					<span id="birthDate-label" class="property-label"><g:message code="patient.birthDate.label" default="Birth Date" /></span>
					
						<span class="property-value" aria-labelledby="birthDate-label"><g:formatDate date="${patientInstance?.birthDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.dateOfRegistration}">
				<li class="fieldcontain">
					<span id="dateOfRegistration-label" class="property-label"><g:message code="patient.dateOfRegistration.label" default="Date Of Registration" /></span>
					
						<span class="property-value" aria-labelledby="dateOfRegistration-label"><g:formatDate date="${patientInstance?.dateOfRegistration}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.diagnoses}">
				<li class="fieldcontain">
					<span id="diagnoses-label" class="property-label"><g:message code="patient.diagnoses.label" default="Diagnoses" /></span>
					
						<g:each in="${patientInstance.diagnoses}" var="d">
						<span class="property-value" aria-labelledby="diagnoses-label"><g:link controller="diagnosis" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.emailAddress}">
				<li class="fieldcontain">
					<span id="emailAddress-label" class="property-label"><g:message code="patient.emailAddress.label" default="Email Address" /></span>
					
						<span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${patientInstance}" field="emailAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="patient.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${patientInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="patient.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${patientInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="patient.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${patientInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.isDeleted}">
				<li class="fieldcontain">
					<span id="isDeleted-label" class="property-label"><g:message code="patient.isDeleted.label" default="Is Deleted" /></span>
					
						<span class="property-value" aria-labelledby="isDeleted-label"><g:formatBoolean boolean="${patientInstance?.isDeleted}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.laboratoryResults}">
				<li class="fieldcontain">
					<span id="laboratoryResults-label" class="property-label"><g:message code="patient.laboratoryResults.label" default="Laboratory Results" /></span>
					
						<g:each in="${patientInstance.laboratoryResults}" var="l">
						<span class="property-value" aria-labelledby="laboratoryResults-label"><g:link controller="laboratoryResult" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="patient.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${patientInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.logs}">
				<li class="fieldcontain">
					<span id="logs-label" class="property-label"><g:message code="patient.logs.label" default="Logs" /></span>
					
						<g:each in="${patientInstance.logs}" var="l">
						<span class="property-value" aria-labelledby="logs-label"><g:link controller="log" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.maritalStatus}">
				<li class="fieldcontain">
					<span id="maritalStatus-label" class="property-label"><g:message code="patient.maritalStatus.label" default="Marital Status" /></span>
					
						<span class="property-value" aria-labelledby="maritalStatus-label"><g:fieldValue bean="${patientInstance}" field="maritalStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.medicalHistories}">
				<li class="fieldcontain">
					<span id="medicalHistories-label" class="property-label"><g:message code="patient.medicalHistories.label" default="Medical Histories" /></span>
					
						<g:each in="${patientInstance.medicalHistories}" var="m">
						<span class="property-value" aria-labelledby="medicalHistories-label"><g:link controller="medicalHistory" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${patientInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="patient.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${patientInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
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
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${patientInstance?.id}" />
					<g:link class="edit" action="edit" id="${patientInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
