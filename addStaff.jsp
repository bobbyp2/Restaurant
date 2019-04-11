`<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
<title>To Add Staff Details</title>
</head>
<body class="container-solid" background="gr bg.jpg"
	style="color: white;">
<center>
		<b style="color: tomato; font-size: 50px;">WELCOME TO GESBK
				RESTAURANT</b>
	</center>
	<%
		String c_name = null;
		if (request.getSession().getAttribute("Current_User_Name")== null) {
			response.sendRedirect("login.jsp");
		} else {
			c_name = request.getSession().getAttribute("Current_User_Name").toString().toUpperCase();
		}
	%>
	<div class="container-fluid">
  <div class="row">
    <div class = "col-sm-3">
    <a href="home.jsp">Home</a>
      </div>
        <div class="col-sm-3" style="font-size:20px;">
         <a href="displayStaff.jsp">Staff Details</a>
       </div>
       <div class="col-sm-3" style="font-size:20px;">
        <a href="addStaff.jsp">Add Staff  </a>
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
<b>
   <script src="homefun.js"></script>
<p style ="color:tomato;center">Enter Staff Details</p>
<form autocomplete="off" action="AddStaffController" method="post" style="margin-top:2%;margin-right:40%; margin-left:7%; color:SlateBlue;">
  <div class="form-group">
  
    <label for="exampleInputEmail1">Enter First Name</label>
    <input type="text" class="form-control" placeholder="First Name" name="fname" required>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Last Name</label>
    <input type="text" class="form-control" name="lname" placeholder="Last Name" required>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Enter Age</label>
    <input type="text" class="form-control" name="age" placeholder="Age" required>
  </div>
  <label for="exampleInputPassword1">Gender</label></br>
		<input type="radio" name="gender" value="male"> Male<br>
		<input type="radio" name="gender" value="female"> Female<br>
		<p></p>
  <div class="form-group">
    <label for="exampleInputPassword1">Address</label>
    <input type="text" class="form-control" name="address" placeholder="Address" required>
  </div>
 </b>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
<script src="homefun.js"></script>
</body>
</html>