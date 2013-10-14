<%@ page import="org.itech.klinikav2.domain.Patient" %>



<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'address_city', 'error')} ">
	<label for="address_city">
		<g:message code="patient.address_city.label" default="Addresscity" />
		
	</label>
	<g:textField name="address_city" value="${patientInstance?.address_city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'address_province', 'error')} ">
	<label for="address_province">
		<g:message code="patient.address_province.label" default="Addressprovince" />
		
	</label>
	<g:textField name="address_province" value="${patientInstance?.address_province}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'address_street', 'error')} ">
	<label for="address_street">
		<g:message code="patient.address_street.label" default="Addressstreet" />
		
	</label>
	<g:textField name="address_street" value="${patientInstance?.address_street}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'address_town', 'error')} ">
	<label for="address_town">
		<g:message code="patient.address_town.label" default="Addresstown" />
		
	</label>
	<g:textField name="address_town" value="${patientInstance?.address_town}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'birthDate', 'error')} required">
	<label for="birthDate">
		<g:message code="patient.birthDate.label" default="Birth Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="birthDate" precision="day"  value="${patientInstance?.birthDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'dateOfRegistration', 'error')} required">
	<label for="dateOfRegistration">
		<g:message code="patient.dateOfRegistration.label" default="Date Of Registration" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfRegistration" precision="day"  value="${patientInstance?.dateOfRegistration}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'diagnoses', 'error')} ">
	<label for="diagnoses">
		<g:message code="patient.diagnoses.label" default="Diagnoses" />
		
	</label>
	<g:select name="diagnoses" from="${org.itech.klinikav2.domain.Diagnosis.list()}" multiple="multiple" optionKey="id" size="5" value="${patientInstance?.diagnoses*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'emailAddress', 'error')} ">
	<label for="emailAddress">
		<g:message code="patient.emailAddress.label" default="Email Address" />
		
	</label>
	<g:textField name="emailAddress" value="${patientInstance?.emailAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="patient.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${patientInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="patient.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${org.itech.klinikav2.enums.Gender?.values()}" keys="${org.itech.klinikav2.enums.Gender.values()*.name()}" required="" value="${patientInstance?.gender?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="patient.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${patientInstance?.isActive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'isDeleted', 'error')} ">
	<label for="isDeleted">
		<g:message code="patient.isDeleted.label" default="Is Deleted" />
		
	</label>
	<g:checkBox name="isDeleted" value="${patientInstance?.isDeleted}" />
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'laboratoryResults', 'error')} ">
	<label for="laboratoryResults">
		<g:message code="patient.laboratoryResults.label" default="Laboratory Results" />
		
	</label>
	<g:select name="laboratoryResults" from="${org.itech.klinikav2.domain.LaboratoryResult.list()}" multiple="multiple" optionKey="id" size="5" value="${patientInstance?.laboratoryResults*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="patient.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${patientInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'logs', 'error')} ">
	<label for="logs">
		<g:message code="patient.logs.label" default="Logs" />
		
	</label>
	<g:select name="logs" from="${org.itech.klinikav2.domain.Log.list()}" multiple="multiple" optionKey="id" size="5" value="${patientInstance?.logs*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'maritalStatus', 'error')} required">
	<label for="maritalStatus">
		<g:message code="patient.maritalStatus.label" default="Marital Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="maritalStatus" from="${org.itech.klinikav2.enums.MaritalStatus?.values()}" keys="${org.itech.klinikav2.enums.MaritalStatus.values()*.name()}" required="" value="${patientInstance?.maritalStatus?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'medicalHistories', 'error')} ">
	<label for="medicalHistories">
		<g:message code="patient.medicalHistories.label" default="Medical Histories" />
		
	</label>
	<g:select name="medicalHistories" from="${org.itech.klinikav2.domain.MedicalHistory.list()}" multiple="multiple" optionKey="id" size="5" value="${patientInstance?.medicalHistories*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="patient.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" value="${patientInstance?.middleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'mobileNumber', 'error')} ">
	<label for="mobileNumber">
		<g:message code="patient.mobileNumber.label" default="Mobile Number" />
		
	</label>
	<g:textField name="mobileNumber" value="${patientInstance?.mobileNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'prescriptions', 'error')} ">
	<label for="prescriptions">
		<g:message code="patient.prescriptions.label" default="Prescriptions" />
		
	</label>
	<g:select name="prescriptions" from="${org.itech.klinikav2.domain.Prescription.list()}" multiple="multiple" optionKey="id" size="5" value="${patientInstance?.prescriptions*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'referrals', 'error')} ">
	<label for="referrals">
		<g:message code="patient.referrals.label" default="Referrals" />
		
	</label>
	<g:select name="referrals" from="${org.itech.klinikav2.domain.Referral.list()}" multiple="multiple" optionKey="id" size="5" value="${patientInstance?.referrals*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'telNumber', 'error')} ">
	<label for="telNumber">
		<g:message code="patient.telNumber.label" default="Tel Number" />
		
	</label>
	<g:textField name="telNumber" value="${patientInstance?.telNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: patientInstance, field: 'vitalSigns', 'error')} ">
	<label for="vitalSigns">
		<g:message code="patient.vitalSigns.label" default="Vital Signs" />
		
	</label>
	<g:select name="vitalSigns" from="${org.itech.klinikav2.domain.VitalSigns.list()}" multiple="multiple" optionKey="id" size="5" value="${patientInstance?.vitalSigns*.id}" class="many-to-many"/>
</div>

