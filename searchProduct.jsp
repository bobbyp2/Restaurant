<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<H1>WELCOME TO SEARCH PRODUCT PAGE</H1>

<form action="SearchProductController"> 
ENTER PRODUCT NAME TO SEARCH : <input type="text" id="txt1" onkeyup="showHint(this.value)">
</form>

<div id="txtHint"></div>




<script type="text/javascript">
function showHint(str) {
  var xhttp;
  if (str.length == 0) { 
    document.getElementById("txtHint").innerHTML = "";
    return;
  }
  xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("txtHint").innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "SearchProductController?pname="+str, true);
  xhttp.send();   
}
</script>



</body>
</html>