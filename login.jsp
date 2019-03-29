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
<title>Login</title>
<h1><center><b><p style="color:tomato;font-size:50px;">WELCOME TO GESBK RESTAURANT</p></b></center></h1>
</head>
<body class="container-fluid" background="restrobg.png" style ="color:White">
<div class="container">

		<nav class="navbar navbar-collapse">
		<div class="container">
			<a class="navbar-brand" href="#"><p style="font-size: 20px;">GR</p></a>|
			<a href="register.jsp"><p style="font-size: 20px;">SIGN UP</p></a> | <a
				href="login.jsp"><p style="font-size: 20px;">SIGN IN</p></a> | <a
				href="contact.jsp"><p style="font-size: 20px;">CONTACT US</p></a> |

		</div>
		</nav>

	</div>
	<br />
<form autocomplete="off" action="LoginController" method="post" style="margin-top:2%;margin-right:40%; margin-left:15%;">
  <div class="form-group">
    <label for="exampleInputEmail1">Username</label>
    <input type="text" class="form-control" placeholder="Enter  Username" name="uname" required>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="pwd" placeholder="Password" required>
  </div>
  <div class="form-group form-check">
    <input type="checkbox" required class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Confirm My Information</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
 <script src="homefun.js"></script>
</body>
</html>