<%@ page import="org.itech.klinikav2.domain.Admin"%>
<!doctype html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="kickstart" />
<g:set var="entityName"
	value="${message(code: 'admin.label', default: 'Admin')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>

<body>
	<div class="content">
		<div class="container">
			<div class="page-header topSlider">
			<h1>Create</h1>
			</div>
				<section id="create-admin" class="first">

					<g:hasErrors bean="${adminInstance}">
						<div class="alert alert-error">
							<g:renderErrors bean="${adminInstance}" as="list" />
						</div>
					</g:hasErrors>

					<g:form action="save" class="form-horizontal">
						<fieldset class="form">
							<g:render template="form" />
						</fieldset>
						<div class="form-actions">
							<g:submitButton name="create" class="btn btn-primary"
								value="${message(code: 'default.button.create.label', default: 'Create')}" />
							<button class="btn" type="reset">
								<g:message code="default.button.reset.label" default="Reset" />
							</button>
						</div>
					</g:form>

				</section>
		</div>
	</div>
</body>

</html>
