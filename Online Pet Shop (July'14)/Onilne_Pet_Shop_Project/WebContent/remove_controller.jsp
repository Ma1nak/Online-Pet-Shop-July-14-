<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
<body>
<%
  String id=request.getParameter("t1");
try
{
	  Class.forName("oracle.jdbc.driver.OracleDriver");
	  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	  PreparedStatement ps1=con.prepareStatement("delete from Details where itemid=?");
		ps1.setString(1, id);
		int i=ps1.executeUpdate();
		 if(i>0)
		 {
			 %>
			 <div id="header">
			 	           		<a href="admin_validation.jsp" id="logo"><img src="images/logo.gif" width="310" height="114" alt="" title=""></a>
			 					<ul class="navigation2">
			 					<li><a href="Logout.jsp">Logout</a></li>
			 						
			 					</ul>
			 			</div>
			 			<br>
			 			<br>
			 			<br>
			 			<center><img src="images/admin_banner.PNG" /></center><hr />
			 			<br />
			 			<br /><center><img src="images/items_removed_banner.PNG" /></center>
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