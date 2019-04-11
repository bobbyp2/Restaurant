<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
<title>Home</title>
</head>
<body class="container-fluid" background="restrobg.png"
	style="color: white;">
<center>
		<p style="color: tomato; font-size: 50px;">WELCOME TO GESBK
				RESTAURANT</p>
	</center>
	<%
		String c_name = null;
		if (request.getSession().getAttribute("Current_User_Name") == null) {
			response.sendRedirect("login.jsp");
		} else {
			c_name = request.getSession().getAttribute("Current_User_Name").toString().toUpperCase();
		}
	%>                                     
 
<div class="container-fluid">
  <div class="row">
    <div class = "col-sm-3">
    <a href="#">Logo</a>
      </div>
        <div class="col-sm-3" style="font-size:20px;">
         <a href="displayStaff.jsp">Staff Details</a>
       </div>
       <div class="col-sm-3" style="font-size:20px;">
        <a href="display.jsp">Inventory Details </a>
       </div>
       <div class="col-sm-3" style="font-size:20px;">
         <div class="dropdown">
           <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"style="float:right"><%=c_name%>
           <span class="caret"></span></button>
            <ul class="dropdown-menu">
             <li class = "dropdown-item"><a href="#"onclick="changePassword();">Change Password</a></li>
             <li class = "dropdown-item"><a href="LogoutController">Logout</a></li>
            </ul>
         </div>
      </div>
   </div>
</div>
   <script src="homefun.js"></script>
</body>
</html>
