<%@ page import="org.itech.klinikav2.domain.Item" %>
<!DOCTYPE html>
<html>

<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<r:require module="dataTables" />
		
		
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/DT_bootstrap.css">

		<r:script type="text/javascript" charset="utf-8"  src="js/jquery.js"></r:script>
		<r:script type="text/javascript" charset="utf-8"  src="js/jquery.dataTables.js"></r:script>
		<r:script type="text/javascript" charset="utf-8"  src="js/DT_bootstrap.js"></r:script>
		<style type="text/css"></style>
		
</head>


<r:script type="text/javascript" charset="utf-8">
		$(document).ready(function() {
			$('#example').dataTable( {
				"bPaginate": false,
				"bLengthChange": false,
				"bFilter": true,
				"bSort": false,
				"bInfo": false,
				"bAutoWidth": false } );
		} );
		</r:script>

<body>
<div class="container" style="margin-top: 10px">

<div id="example_wrapper" class="dataTables_wrapper form-inline" role="grid">












</div>
</div>
</body>








</html>