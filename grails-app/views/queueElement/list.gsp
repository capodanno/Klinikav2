
<%@ page import="org.itech.klinikav2.domain.QueueElement" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'queueElement.label', default: 'QueueElement')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	<div class="content">
	      <div class="container">
	       <div class="page-header">
	          <h1>Lists <small>Patient</small></h1>
	        </div>
	
<section id="list-queueElement" class="first">
	<g:render template="table"></g:render>
</section>
</div>
</div>

	<g:javascript>
		$(document).ready( function() { 
			refresh();
		});
			
		function refresh() 
		{
		var link = "${createLink(action: "list")}"
			$( "#list-queueElement" ).load(link); 
		 setTimeout ( "refresh()", 1000 ); 
		}
		</g:javascript>

</body>

</html>
