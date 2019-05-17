<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
       <h1> Be happy and make others happy!!!</h1>
        
      
       <%  
                out.println("Have a happiest day");
                int a=10;
                int b=20;
                int res = a+b;
                out.println("The result is "+res);
                %>
                <%= "this is expression tag" %>
       <%!
            int area(int size)
            {
    	           return size*size;
            }
       %>
       <%
           out.println("The area of the square with the side 20 is "+area(20));
       %>
       
       
       
</body>
</html>