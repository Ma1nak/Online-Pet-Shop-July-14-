<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Pet Shop</title>
	<meta  charset=iso-8859-1" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<!--[if IE 6]>
		<link href="css/ie6.css" rel="stylesheet" type="text/css" />
	<![endif]-->
	<!--[if IE 7]>
        <link href="css/ie7.css" rel="stylesheet" type="text/css" />  
	<![endif]-->
</head>
<%@ page import="java.sql.*" %>
<body>
<div id="header">
	           		<a href="Index.jsp" id="logo"><img src="images/logo.gif" width="310" height="114" alt="" title=""></a>
					<ul class="navigation">
						<li class="active"><a href="index.html">Home</a></li>
						<li><a href="Petmart.jsp">PetMart</a></li>
						<li><a href="About.jsp">About us</a></li>
						<li><a href="login.html">Login</a></li>
						<li><a href="Petguide.jsp">PetGuide</a></li>
						<li><a href="Contact.jsp">Contact us</a></li>
					</ul>
			</div>
		
<%
  String un=request.getParameter("t1");
  String pass=request.getParameter("t2");
  try
  {
	  Class.forName("oracle.jdbc.driver.OracleDriver");
	  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	  PreparedStatement ps=con.prepareStatement("select * from admin where username=? and password=?");
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
		  /* ADMIN INTERFACE PAGE */
		  
		  out.print("<br>Welcome : "+un);
		  %>
		  <br><a href="add_item.jsp">Click Here</a> to ADD ITEM. 
		  <br><a href="update_item.jsp">Click Here</a> to UPDATE ITEM.
		  <br><a href="remove_item.jsp">Click Here</a> to REMOVE ITEM.
		  <br><a href="show_item.jsp">Click Here</a> to SHOW ITEM.
	  <%
	  }
	  else
	  {
		  out.print("<br>Wrong username or Password...");%><a href="login.html">[Try Again]</a>
	 <% 
	  }
   }
  catch(Exception e)
  {
	  response.sendRedirect("error1.jsp");
  }
%>

	
</body>
</html>