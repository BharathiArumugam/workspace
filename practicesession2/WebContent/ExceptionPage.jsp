<%@ page errorPage="ShowError.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error Handling Example</title>
</head>
<body>
<%
   int x=1;

   if(x==1)
   {
	throw new RuntimeException("Error condition!!!!");
   }

%>
</body>
</html>