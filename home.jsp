<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Home</title>
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
		if (request.getSession().getAttribute("Current_User_Name")== null) {
			response.sendRedirect("login.jsp");
		} else {
			c_name = request.getSession().getAttribute("Current_User_Name").toString().toUpperCase();
		}
	%>

     <div class="dropdown-blue">
  <button class="btn btn-secondary dropdown-toggle" style="background-color:blue;"" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   <%=c_name %>
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
     <a class="dropdown-item-transperency bg-transperency"  href="#" onclick="changePassword();">Change Password</a><br/>
          <a class="dropdown-item-transperncy" href="LogoutController">Logout</a>
  </div>
</div>  
	<script src="homefun.js"></script>
	<p>
	<h6>
		For Staff Details <a href="staff.jsp">Click here !</a>
	</h6>
	</p>
	<p>
	<h6>
		For inventory Details <a href="adddetails.jsp">Click here !</a>
	</h6>
	</p>
</body>
</html>
