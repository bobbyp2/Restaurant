<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<h1>
	<center>
		<b><p style="color: tomato; font-size: 50px;">WELCOME TO GESBK
				RESTAURANT</p></b>
	</center>
</h1>
</head>
<body class="container-solid" background="restrobg.png"
	style="color: white;">

	<%
		String c_name = null;
		if (request.getSession().getAttribute("Current_User_Name") == null) {
			response.sendRedirect("login.jsp");
		} else {
			c_name = request.getSession().getAttribute("Current_User_Name").toString().toUpperCase();
		}
	%>
	<nav
		class="navbar navbar-collapse-lg navbar-tranperency bg-transperency">
	<a class="navbar-brand" href="#">GR</a>
	<button class="btn btn-primary dropdown-toggle" type="button"
		data-toggle="collapse" data-target="#navbarNavDropdown"
		aria-controls="navbarNavDropdown" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>Profile
	</button>
	<div class="collapse navbar-collapse" id="navbarNavDropdown">
		<ul class="navbar-nav">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#"
				id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> <%=c_name%>
			</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="#" onclick="changePassword();">Change
						Password</a> <a class="dropdown-item" href="#" onclick="logout();">Logout</a>
				</div></li>
	</div>
	</nav>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container-solid">
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<center>
				<a class="navbar-brand">Dishes</a>
			</center>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="adddetails.jsp">ADD Items</a></li>
			<li><a href="display.jsp">LIST ALL Items</a></li>
		</ul>
	</div>
	</nav>
</body>
</html>