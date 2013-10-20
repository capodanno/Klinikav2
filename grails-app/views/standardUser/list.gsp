
<%@ page import="org.itech.klinikav2.domain.StandardUser"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="kickstart" />
<g:set var="entityName"
	value="${message(code: 'standardUser.label', default: 'StandardUser')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	<div class="content">
		<div class="container">
			<div class="page-header">
				<section id="list-standardUser" class="first">

					<table class="table table-bordered">
						<thead>
							<tr>

								<g:sortableColumn property="username"
									title="${message(code: 'standardUser.username.label', default: 'Username')}" />

								<g:sortableColumn property="password"
									title="${message(code: 'standardUser.password.label', default: 'Password')}" />

								<th><g:message code="standardUser.profile.label"
										default="Profile" /></th>

								<g:sortableColumn property="accountExpired"
									title="${message(code: 'standardUser.accountExpired.label', default: 'Account Expired')}" />

								<g:sortableColumn property="accountLocked"
									title="${message(code: 'standardUser.accountLocked.label', default: 'Account Locked')}" />

								<g:sortableColumn property="answer"
									title="${message(code: 'standardUser.answer.label', default: 'Answer')}" />

							</tr>
						</thead>
						<tbody>
							<g:each in="${standardUserInstanceList}" status="i"
								var="standardUserInstance">
								<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

									<td><g:link action="show" id="${standardUserInstance.id}">
											${fieldValue(bean: standardUserInstance, field: "username")}
										</g:link></td>

									<td>
										${fieldValue(bean: standardUserInstance, field: "password")}
									</td>

									<td>
										${fieldValue(bean: standardUserInstance, field: "profile")}
									</td>

									<td><g:formatBoolean
											boolean="${standardUserInstance.accountExpired}" /></td>

									<td><g:formatBoolean
											boolean="${standardUserInstance.accountLocked}" /></td>

									<td>
										${fieldValue(bean: standardUserInstance, field: "answer")}
									</td>

								</tr>
							</g:each>
						</tbody>
					</table>
					<div class="pagination">
						<bs:paginate total="${standardUserInstanceTotal}" />
					</div>
				</section>
			</div>
		</div>
	</div>
</body>

</html>
