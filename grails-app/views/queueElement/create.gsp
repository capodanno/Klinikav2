<%@ page import="org.itech.klinikav2.domain.QueueElement" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<<<<<<< HEAD
	<meta name="layout" content="kickstart" />
=======
	<meta name="layout" content="main" />
>>>>>>> bb48a62eb7e8b0b707970056c93b29e950a1b324
	<g:set var="entityName" value="${message(code: 'queueElement.label', default: 'QueueElement')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>

<section id="create-queueElement" class="first">

	<g:hasErrors bean="${queueElementInstance}">
	<div class="alert alert-error">
		<g:renderErrors bean="${queueElementInstance}" as="list" />
	</div>
	</g:hasErrors>
	
	<g:form action="save" class="form-horizontal" >
		<fieldset class="form">
			<g:render template="form"/>
		</fieldset>
		<div class="form-actions">
			<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            <button class="btn" type="reset"><g:message code="default.button.reset.label" default="Reset" /></button>
		</div>
	</g:form>
	
</section>
		
</body>

</html>
