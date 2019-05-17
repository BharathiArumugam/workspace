package test123;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/Sfww")

public class TestServlet extends HttpServlet{
	
public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException
{
	PrintWriter out = response.getWriter();
	response.setContentType("text/html");
	if(request.getParameter("userid").equals("iamuser")  &&  request.getParameter("passwd").equals("thisispassword"))
	{
		out.print("Valid user");
	}
	else
		out.print("Invalid user");
}

}
