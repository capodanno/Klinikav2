<html>

<head>
	<title><g:message code="default.welcome.title" args="[meta(name:'app.name')]"/> </title>
	<meta name="layout" content="kickstart" />
</head>

<body>

<div class="content">
      <div class="container">
        
	<div class="row topSlider">
		<div class="span3">
			<ul class="nav nav-list well">
				<li class="nav-header">
					START A TASK
				</li>
				<li><a href="#">
					Consult Patient</a>
				</li>
				<li>
					<a href="#">Doctor Appointment</a>
				</li>
				<li>
					<a href="#">Register Patient</a>
				</li>
				<li>
					<a href="#">Schedule Consultation</a>
				</li>
				<li class="nav-header">
					View
				</li>
				<li>
					<a href="#">Doctor Schedule</a>
				</li>
				<li  class="active">
					<a href="#">Patient Queue List</a>
				</li>
				<li>
					<a href="#">Pending Appointment</a>
				</li>
				<li class="divider">
				</li>
				<li>
					<a href="#">Help</a>
				</li>
			</ul>
		</div>
		<div class="span9">
			<h3><center>
				Patient Queue List</center>
			</h3>
			<table class="table table-hover table-bordered">
				<thead>
					<tr>
						<th>
							No.
						</th>
						<th>
							Patient
						</th>
						<th>
							Doctor
						</th>
						<th>
							Manage
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							1
						</td>
						<td>
							Gien Rose Vicencio
						</td>
						<td>
							Dr. Jaysan Romo
						</td>
						<td>
							<a href="#">Consultation</a> | 
							<a href="#">Remove</a>
						</td>
					</tr>
					<tr class="success">
						<td>
							2
						</td>
						<td>
							Jonah Katrina Jala
						</td>
						<td>
							Dr. Allaine Grace Chan
						</td>
						<td>
						<a href="#">Consultation</a> | 
							<a href="#">Remove</a>
						</td>
					</tr>
					<tr class="error">
						<td>
							3
						</td>
						<td>
							Charmaine Layawon
						</td>
						<td>
							Dr. Jema Joy Caballero
						</td>
						<td>
						<a href="#">Consultation</a> | 
							<a href="#">Remove</a>
						</td>
					</tr>
				</tbody>
			</table>
			<center>
			<a href="#" class="btn btn-success btn-mini">
			<h5><span class="cus-user_add"></span> Add Patient to Queue</h5>
            </a></center>
		</div>
	</div>
</body>
</html>