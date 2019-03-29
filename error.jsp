<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error</title>
</head>
<body background="restrobg.png">
<%String name = (String)request.getAttribute("myname"); %>
<p><h4>User Name <%= name.toString() %> already existed :( </h4></p>
<p>Click here to <a href="register.jsp">Sign Up</a> again</p>
</body>
</html>