
<%@ page import="org.itech.klinikav2.domain.StandardUser"%>
<!doctype html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="kickstart" />
<g:set var="entityName"
	value="${message(code: 'standardUser.label', default: 'StandardUser')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>
	<div class="content">
		<div class="container">
			<div class="page-header">
				<section id="show-standardUser" class="first">

					<table class="table">
						<tbody>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="standardUser.username.label" default="Username" /></td>

								<td valign="top" class="value">
									${fieldValue(bean: standardUserInstance, field: "username")}
								</td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="standardUser.password.label" default="Password" /></td>

								<td valign="top" class="value">
									${fieldValue(bean: standardUserInstance, field: "password")}
								</td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="standardUser.profile.label" default="Profile" /></td>

								<td valign="top" class="value"><g:link controller="profile"
										action="show" id="${standardUserInstance?.profile?.id}">
										${standardUserInstance?.profile?.encodeAsHTML()}
									</g:link></td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="standardUser.accountExpired.label"
										default="Account Expired" /></td>

								<td valign="top" class="value"><g:formatBoolean
										boolean="${standardUserInstance?.accountExpired}" /></td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="standardUser.accountLocked.label"
										default="Account Locked" /></td>

								<td valign="top" class="value"><g:formatBoolean
										boolean="${standardUserInstance?.accountLocked}" /></td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="standardUser.answer.label" default="Answer" /></td>

								<td valign="top" class="value">
									${fieldValue(bean: standardUserInstance, field: "answer")}
								</td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="standardUser.enabled.label" default="Enabled" /></td>

								<td valign="top" class="value"><g:formatBoolean
										boolean="${standardUserInstance?.enabled}" /></td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="standardUser.isfirstLog.label" default="Isfirst Log" /></td>

								<td valign="top" class="value"><g:formatBoolean
										boolean="${standardUserInstance?.isfirstLog}" /></td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="standardUser.passwordExpired.label"
										default="Password Expired" /></td>

								<td valign="top" class="value"><g:formatBoolean
										boolean="${standardUserInstance?.passwordExpired}" /></td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="standardUser.question.label" default="Question" /></td>

								<td valign="top" class="value">
									${standardUserInstance?.question?.encodeAsHTML()}
								</td>

							</tr>

							<tr class="prop">
								<td valign="top" class="name"><g:message
										code="standardUser.registrationDate.label"
										default="Registration Date" /></td>

								<td valign="top" class="value"><g:formatDate
										date="${standardUserInstance?.registrationDate}" /></td>

							</tr>

						</tbody>
					</table>
				</section>
			</div>
		</div>
	</div>
	</div>
</body>

</html>
