
<%@ page import="org.itech.klinikav2.domain.Admin"%>
<!doctype html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="kickstart" />
<g:set var="entityName"
	value="${message(code: 'admin.label', default: 'Admin')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>
	<div class="content">
		<div class="container">
			<div class="page-header">
				<section id="show-admin" class="first">

					<table class="table">
						<tbody>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="admin.username.label" default="Username" /></td>

								<td valign="top" class="value">
									${fieldValue(bean: adminInstance, field: "username")}
								</td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="admin.password.label" default="Password" /></td>

								<td valign="top" class="value">
									${fieldValue(bean: adminInstance, field: "password")}
								</td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="admin.accountExpired.label" default="Account Expired" /></td>

								<td valign="top" class="value"><g:formatBoolean
										boolean="${adminInstance?.accountExpired}" /></td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="admin.accountLocked.label" default="Account Locked" /></td>

								<td valign="top" class="value"><g:formatBoolean
										boolean="${adminInstance?.accountLocked}" /></td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="admin.answer.label" default="Answer" /></td>

								<td valign="top" class="value">
									${fieldValue(bean: adminInstance, field: "answer")}
								</td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="admin.enabled.label" default="Enabled" /></td>

								<td valign="top" class="value"><g:formatBoolean
										boolean="${adminInstance?.enabled}" /></td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="admin.isfirstLog.label" default="Isfirst Log" /></td>

								<td valign="top" class="value"><g:formatBoolean
										boolean="${adminInstance?.isfirstLog}" /></td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="admin.passwordExpired.label" default="Password Expired" /></td>

								<td valign="top" class="value"><g:formatBoolean
										boolean="${adminInstance?.passwordExpired}" /></td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="admin.question.label" default="Question" /></td>

								<td valign="top" class="value">
									${adminInstance?.question?.encodeAsHTML()}
								</td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="admin.registrationDate.label"
										default="Registration Date" /></td>

								<td valign="top" class="value"><g:formatDate
										date="${adminInstance?.registrationDate}" /></td>

							</tr>

						</tbody>
					</table>
				</section>
			</div>
		</div>
	</div>
</body>

</html>
