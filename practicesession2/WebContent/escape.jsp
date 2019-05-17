<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
form{
text-align:center;
font-family: fantasy;
font-size: x-large;
}
body
{
background-image:url("sunset.jpeg");
background-size:cover;
}
</style>


</head>
<body>
<%@ include file="header.html" %>
<h3 align="center"><b>Login Form</b></h3><br>
<form  name="login" >
<label align="center"> First User</label><br>
<table align="center">
<tbody>
<tr>

<td><label for ="username" align="center">UserName</label></td>
<td><input type="text" name="userid" maxlength="10"/></td>
</tr>
<tr>
<td><label for = "password" align="center">Password</label></td>
<td><input type="password" name="passwd" maxlength="10"/></td>
</tr>
<tr>
<td colspan="2" align="center" ><a href="thankyou.jsp"><b>Register here</b> </a></td>
</tr>

</tbody>
</table>
</form>




<%@ include file="footer.html" %>

</body>
</html>