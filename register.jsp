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
	<center>
		<b><p style="color: tomato; font-size: 50px;">WELCOME TO GESBK
				RESTAURANT</p></b>
	</center>
	<style type="text/css">
	.sticky {
  position: sticky;
  background-color: red;
  top: 0;
  padding: 10px;
  color: white;
  height:50px;
  align:down;
}
	
	</style>
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

  <div class="container-fluid">
  <div class="row">
  <div class = "col-sm-2">
  </div>
  <div class="col-sm-2" style="font-size:20px;">
      <a href="index.jsp">GR</a>
    </div>
    <div class="col-sm-2" style="font-size:20px;">
      <a href="register.jsp">SIGN UP</a>
    </div>
    <div class="col-sm-2" style="font-size:20px;">
      <a href="login.jsp">SIGN IN</a>
    </div>
    <div class="col-sm-2" style="font-size:20px;">
     <a href="contact.jsp">CONTACT US</a>
    </div>
  </div>
  </div>

	<br />
	<form onSubmit="return passwordvalidate(this)" autocomplete="off"
		action="RegistrationController" method="post"
		style="margin-top: 2%; margin-right: 40%; margin-left: 15%;">
		<div class="form-group">
			<label for="exampleInputEmail1">Enter User ID</label> <input
				type="email" class="form-control" placeholder="example@gmail.com"
				name="uid" required/>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Enter User Name</label> <input
				type="text" class="form-control" name="uname"
				placeholder="User Name" required/>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Enter Password</label> <input
				type="password" class="form-control" name="pwd"
				placeholder="Password" required/>
		</div>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Retype Password</label> <input
				type="password" class="form-control" name="retypepwd"
				placeholder="RetypePassword" required/>
		</div>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">Enter age</label> <input
				type="number" class="form-control" name="age" placeholder="age"
				required/>
		</div>
		<input type="radio" name="gender" value="male" required/> Male<br>
		<input type="radio" name="gender" value="female"required/> Female<br>
		<p></p>
		<input type="radio" name="foodtype" value="Veg"required/> Veg<br>
		<input type="radio" name="foodtype" value="Non-Veg"required/> Non Veg<br>
		<p></p>
		<button type="submit" class="btn btn-primary">Submit</button>
		
		
		
		<%if(request.getSession().getAttribute("myname")==null){ %>
 <%}else{String str=request.getSession().getAttribute("myname").toString(); %>
 <b style = "color:#FF0000">&nbsp;&nbsp; Please Change the Username Which is already exist  </b>
 <% request.getSession().setAttribute("myname",null);} %>
	
	
	
	</form>
	
	<script src="homefun.js"></script>
	
	<br/>
	<footer class ="sticky">
 <center><p>Contact Us</p>
<span class="glyphicon glyphicon-map-marker"></span> 54,M.G. Avenue, PTC, Chennai,603110<p></p>
 <span class="glyphicon glyphicon-envelope"></span> Gesbksupport@yahoo.com<p></p>
<span class="glyphicon glyphicon-phone-alt"></span> 110-44547
</center>
 </footer>
</body>
</html>