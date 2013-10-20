<%@ page import="org.itech.klinikav2.domain.StandardUser"%>
<!doctype html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="kickstart" />
<g:set var="entityName"
	value="${message(code: 'standardUser.label', default: 'StandardUser')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>

<body>
	<div class="content">
		<div class="container">
			<div class="page-header">
				<div class="content">
					<div class="container">
						<div class="page-header">
							<section id="create-standardUser" class="first">

								<g:hasErrors bean="${standardUserInstance}">
									<div class="alert alert-error">
										<g:renderErrors bean="${standardUserInstance}" as="list" />
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
				</div>
			</div>
		</div>
	</div>
</body>

</html>
