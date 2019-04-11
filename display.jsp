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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>	
<script>
function showResult(str) {
	
  if (str.length == 0) { 
    document.getElementById("result").innerHTML = "";
    return;
  } else {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("result").innerHTML = this.responseText;
      }
    };
    xmlhttp.open("GET", "SearchProductController?q=" + str, true);
    xmlhttp.send();
  }
}	 
</script>

<style type="text/css">
table{
align: right;
  font-family: arial, sans-serif;
  width: 1200px;
  height:30px;
  color:white;
  padding:20px;
  border-collapse:seperate;
  background-color:seagreen;
  font-size:15px;
  border-radius:30px;
}
</style>

</head>


<body class="container-solid" style="background:lightgoldenrodyellow;color: white;">
<center>
		<p style="color: tomato; font-size: 50px;">WELCOME TO GESBK
				RESTAURANT</p>
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
    <div class = "col-sm-2">
    <a href="home.jsp">Home</a>
      </div>
        <div class="col-sm-2" style="font-size:20px;">
         <a href="adddetails.jsp">ADD Inventory</a>
       </div>
       <div class="col-sm-2" style="font-size:20px;">
      <a href="display.jsp">Edit And Display of Inventory </a>
       </div>
       <div class="col-sm-2">
       </div>
       <div class="col-sm-2">
      <form>
      <div class="form-group">
        <input type="text" class="form-control" onkeyup = "showResult(this.value)" placeholder="Search" name="search">
      </div>
    </form>
       </div>
       <div class="col-sm-2" style="font-size:20px;">
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


<center><h3 style ="color:MediumSeaGreen">List of all Available ITEMS :</h3></center>

<%
	List<Product> productList = new ArrayList<>();
productList = new ProductDAOImpl().getAllProducts();
%>

<div id="result">
<b><center><table class="table1">
	<tr class ="table"><th>Inventory id</th><th>Inventory Name</th><th> Creation Date</th><th> Start Date</th><th> End Date</th><th>Total Stock</th><th> Edit</th><th>Delete</th></tr>
	</b>
	<%
		for( Product temp: productList) {
	%>
	<tr> <td> <%=temp.getInventory_Id() %> </td>   <td> <%=temp.getInventory_Name() %> </td> <td> <%= temp.getCreation_date() %> </td>   <td> <%=temp.getStart_date()%> </td>  <td> <%=temp.getEnd_date()%> </td>  <td>
	<%=temp.getTotal_Stock() %></td> <td>
	<a href="EditProductController?id=<%=temp.getInventory_Id()%>"class="btn btn-info" ><span class="glyphicon glyphicon-edit"></span> EDIT</a></td><td>
	<a href="DeleteProductController?q1=<%=temp.getInventory_Id()%>" class="btn btn-danger"> <span class="glyphicon glyphicon-trash"></span> DELETE</a></td> </tr>
	<%} %>
</table></center>
<script src="homefun.js"></script>
</div>
<%if(request.getSession().getAttribute("add")==null){ %>
 <%}else{String str=request.getSession().getAttribute("add").toString(); %>
 <b style = "color:MediumSeaGreen">&nbsp;&nbsp; Inventory added Successfully </b>
 <% request.getSession().setAttribute("add",null);} %>
</body>
</html>