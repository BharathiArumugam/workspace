<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
  String name = request.getParameter("username");
  String pwd = request.getParameter("password");
 if(name.equals("google"))
  {
	  response.sendRedirect("http://www.google.com");
  }
  else
  {
	  out.println("Welcome to Cognizant "+name);
  }
  if(name.equalsIgnoreCase("bharathi")  && pwd.equalsIgnoreCase("thisispwd"))
  {
	  System.out.println("Valid user");
	  session.setAttribute("username",name);
  }
  else
  {
	  System.out.println("Invalid user");
	  session.setAttribute("username", "Invaliduser");
  }

 %>
 <a href="secondfile.jsp"> Next</a>
 
</body>
</html>