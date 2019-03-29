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
<title>Registration form</title>
<h1>
	<center>
		<b><p style="color: tomato; font-size: 50px;">WELCOME TO GESBK
				RESTAURANT</p></b>
	</center>
</h1>
<script>
	function passwordvalidate(form) {
		pwd = form.pwd.value;
		retypepwd = form.retypepwd.value;

		// If password not entered 
		if (pwd == '')
			alert("Please enter Password");

		// If confirm password not entered 
		else if (retypepwd == '')
			alert("Please enter confirm password");

		// If Not same return False.     
		else if (pwd != retypepwd) {
			alert("\nPassword did not match: Please try again...")
			return false;
		}

		// If same return True. 
		else {
			return true;
		}
	}
</script>
</head>
<body background="restrobg.png" style="color: white;">

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
	<form onSubmit="return passwordvalidate(this)" autocomplete="off"
		action="RegistrationController" method="post"
		style="margin-top: 2%; margin-right: 40%; margin-left: 15%;">
		<div class="form-group">
			<label for="exampleInputEmail1">Enter User ID</label> <input
				type="text" class="form-control" placeholder="example@gmail.com"
				name="uid" required>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Enter User Name</label> <input
				type="text" class="form-control" name="uname"
				placeholder="User Name" required>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Enter Password</label> <input
				type="password" class="form-control" name="pwd"
				placeholder="Password" required>
		</div>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Retype Password</label> <input
				type="password" class="form-control" name="retypepwd"
				placeholder="RetypePassword" required>
		</div>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Enter age</label> <input
				type="text" class="form-control" name="age" placeholder="age"
				required>
		</div>
		<input type="radio" name="gender" value="male"> Male<br>
		<input type="radio" name="gender" value="female"> Female<br>
		<p></p>
		<input type="radio" name="foodtype" value="Veg"> Veg<br>
		<input type="radio" name="foodtype" value="Non-Veg"> Non Veg<br>
		<p></p>
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>


	<script src="homefun.js"></script>




</body>
</html>