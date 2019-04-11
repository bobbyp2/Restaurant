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
<style type="text/css">
.sticky {
  position: sticky;
  background-color: red;
  top: 0;
  padding: 10px;
  color: white;
  height:50px;
  align: down;
}
</style>
</head>
<body class="spiltup" background="restrobg.png" style ="color:White">
<center><b style="color:tomato;font-size:50px;">WELCOME TO GESBK RESTAURANT</b></center>
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
<form autocomplete="off" action="LoginController" method="post" style="margin-top:2%;margin-right:40%; margin-left:15%;">
  <div class="form-group">
    <label for="exampleInputEmail1">Username</label>
    <input type="text" class="form-control" placeholder="Enter  Username" name="uname" required>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="pwd" placeholder="Password" required>
  </div>
 
  <button type="submit" class="btn btn-primary">Submit</button>
<p></p>
 
 <%if(request.getSession().getAttribute("regname")==null){ %>
 <%}else{String str=request.getSession().getAttribute("regname").toString(); %>
 <b style = "color:green">&nbsp;&nbsp; Your Details are Submitted Successfully Login with Username Password </b>
 <% request.getSession().setAttribute("regname",null);} %> 
 
 <%if(request.getSession().getAttribute("access")==null){ %>
 <%}else{String str=request.getSession().getAttribute("access").toString(); %>
 <b style = "color:#FF0000">&nbsp;&nbsp; Please Provide Valid Username Or Password </b>
 <% request.getSession().setAttribute("access",null);} %>
 </form>
 <script src="homefun.js"></script>
 <footer class ="sticky">
 <center><p>Contact Us</p>
<span class="glyphicon glyphicon-map-marker"></span> 54,M.G. Avenue, PTC, Chennai,603110<p></p>
 <span class="glyphicon glyphicon-envelope"></span> Gesbksupport@yahoo.com<p></p>
<span class="glyphicon glyphicon-phone-alt"></span> 110-44547
</center>
 </footer>

</body>




</html>
