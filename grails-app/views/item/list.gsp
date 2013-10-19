
<%@ page import="org.itech.klinikav2.domain.Item"%>
<!doctype html>
<html>
<head>

<r:require module="grailsEvents" />
<r:script>
  var grailsEvents = new grails.Events("http://localhost:7070/app/");
 	grailsEvents.send('notifyMinStocks', data)
 	grailsEvents.on('notifyMinStocks', function (data) {
            alert ("Testing data received : "+data)
        }, {});
</r:script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="kickstart" />
<g:set var="entityName"
	value="${message(code: 'item.label', default: 'Item')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>


	<section id="list-item" class="first">

		<table class="table table-bordered">
			<thead>
				<tr>

					<g:sortableColumn property="currentQuantity"
						title="${message(code: 'item.currentQuantity.label', default: 'Current Quantity')}" />

					<g:sortableColumn property="description"
						title="${message(code: 'item.description.label', default: 'Description')}" />

					<g:sortableColumn property="minStockLevel"
						title="${message(code: 'item.minStockLevel.label', default: 'Min Stock Level')}" />

					<g:sortableColumn property="name"
						title="${message(code: 'item.name.label', default: 'Name')}" />

					<g:sortableColumn property="retailPrice"
						title="${message(code: 'item.retailPrice.label', default: 'Retail Price')}" />

					<g:sortableColumn property="hasReachedMinimum"
						title="${message(code: 'item.hasReachedMinimum.label', default: 'Has Reached Minimum')}" />

				</tr>
			</thead>
			<tbody>
				<g:each in="${itemInstanceList}" status="i" var="itemInstance">
					<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

						<td><g:link action="show" id="${itemInstance.id}">
								${fieldValue(bean: itemInstance, field: "currentQuantity")}
							</g:link></td>

						<td>
							${fieldValue(bean: itemInstance, field: "description")}
						</td>

						<td>
							${fieldValue(bean: itemInstance, field: "minStockLevel")}
						</td>

						<td>
							${fieldValue(bean: itemInstance, field: "name")}
						</td>

						<td>
							${fieldValue(bean: itemInstance, field: "retailPrice")}
						</td>

						<td><g:formatBoolean
								boolean="${itemInstance.hasReachedMinimum}" /></td>

					</tr>
				</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<bs:paginate total="${itemInstanceTotal}" />
		</div>
	</section>

</body>

</html>
