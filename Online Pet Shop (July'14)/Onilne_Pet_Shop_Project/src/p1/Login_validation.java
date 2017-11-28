package p1;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;

/**
 * Servlet implementation class Home
 */
@WebServlet("/lg")
public class Login_validation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login_validation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		  String un=request.getParameter("t1");
		  String pass=request.getParameter("t2");
		  PrintWriter out=response.getWriter();
		  try
		  {
			  Class.forName("oracle.jdbc.driver.OracleDriver");
			  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
			  PreparedStatement ps=con.prepareStatement("select * from users where username=? and password=?");
			  ps.setString(1,un);
			  ps.setString(2,pass);
			  ResultSet rs=ps.executeQuery();
			  
			  boolean b=false;
			  if(rs.next())
			  {
				  b=true;
			  }
			if(b==true)
			{
				HttpSession session=request.getSession();
				session.setAttribute("un", un);
				HashMap hm=new HashMap();
				ArrayList al=new ArrayList();
				session.setAttribute("hm", hm);
				session.setAttribute("al",al);
				
				
				RequestDispatcher rd=request.getRequestDispatcher("Petmart.jsp");
				rd.include(request, response);				
			}
			else
			{
				response.sendRedirect("error.jsp");
			}
		}catch(Exception e)
		{
			response.sendRedirect("error1.jsp");
		}
	}

}
