<%@page import="Dao.ProductDAOImpl"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
	<nav class="navbar navbar-collapse-lg navbar-tranperency bg-transperency">
  <a class="navbar-brand" href="#">GR</a>
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>Profile
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <%=c_name%>
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#" onclick="changePassword();">Change Password</a>
          <a class="dropdown-item" href="#" onclick="logout();">Logout</a>
        </div>
         	</li>
	</div>
    <div class="col-md-6">
 <form class="navbar-form navbar-center" action="display.jsp">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
      </div>
      <button type="submit" class="btn btn-success">Submit</button>
    </form>	
    </div>
  </div>
  </div>
</nav>
<h3>List of all Available ITEMS :</h3>

<%
	List<Product> productList = new ArrayList<>();
productList = new ProductDAOImpl().getAllProducts();
%>

<table class="table table-hover">
	<%
		for( Product temp: productList) {
	%>
	<tr> <td> <%=temp.getInventory_Id() %> </td>   <td> <%=temp.getInventory_Name() %> </td> <td> <%= temp.getCreation_date() %> </td>   <td> <%=temp.getStart_date()%> </td>  <td> <%=temp.getEnd_date()%> </td>  <td>
	<%=temp.getTotal_Stock() %></td> <td>
	<a href="EditProductController?e1=<%=temp.getInventory_Id()%>"class="btn btn-info" ><span class="glyphicon glyphicon-edit"></span> EDIT</a></td><td>
	<a href="DeleteProductController?q1=<%=temp.getInventory_Id()%>" class="btn btn-danger"> <span class="glyphicon glyphicon-trash"></span> DELETE</a></td> </tr>
	<%} %>
</table>
</body>
</html>