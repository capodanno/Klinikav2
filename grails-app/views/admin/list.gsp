
<%@ page import="org.itech.klinikav2.domain.Admin"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="kickstart" />
<g:set var="entityName"
	value="${message(code: 'admin.label', default: 'Admin')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	<div class="content">
		<div class="container">
			<div class="page-header topSlider">
			<h1>Admin</h1>
			</div>
				<section id="list-admin" class="first">

					<table class="table table-bordered">
						<thead>
							<tr>

								<g:sortableColumn property="username"
									title="${message(code: 'admin.username.label', default: 'Username')}" />

								<g:sortableColumn property="password"
									title="${message(code: 'admin.password.label', default: 'Password')}" />

								<g:sortableColumn property="accountExpired"
									title="${message(code: 'admin.accountExpired.label', default: 'Account Expired')}" />

								<g:sortableColumn property="accountLocked"
									title="${message(code: 'admin.accountLocked.label', default: 'Account Locked')}" />

								<g:sortableColumn property="answer"
									title="${message(code: 'admin.answer.label', default: 'Answer')}" />

								<g:sortableColumn property="enabled"
									title="${message(code: 'admin.enabled.label', default: 'Enabled')}" />

							</tr>
						</thead>
						<tbody>
							<g:each in="${adminInstanceList}" status="i" var="adminInstance">
								<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

									<td><g:link action="show" id="${adminInstance.id}">
											${fieldValue(bean: adminInstance, field: "username")}
										</g:link></td>

									<td>
										${fieldValue(bean: adminInstance, field: "password")}
									</td>

									<td><g:formatBoolean
											boolean="${adminInstance.accountExpired}" /></td>

									<td><g:formatBoolean
											boolean="${adminInstance.accountLocked}" /></td>

									<td>
										${fieldValue(bean: adminInstance, field: "answer")}
									</td>

									<td><g:formatBoolean boolean="${adminInstance.enabled}" /></td>

								</tr>
							</g:each>
						</tbody>
					</table>
					<div class="pagination">
						<bs:paginate total="${adminInstanceTotal}" />
					</div>
				</section>
		</div>
	</div>
</body>

</html>
