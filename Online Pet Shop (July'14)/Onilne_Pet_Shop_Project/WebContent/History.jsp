
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PURCHASE_HISTORY</title>
<meta charset="utf-8">
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<!--[if IE 6]>
		<link href="css/ie6.css" rel="stylesheet" type="text/css" />
	<![endif]-->
	<!--[if IE 7]>
        <link href="css/ie7.css" rel="stylesheet" type="text/css" />  
	<![endif]-->
	
</head>
<body>
<div id="header">
	           		<a href="Index.jsp" id="logo"><img src="images/logo.gif" width="310" height="114" alt="" title=""></a>
					<ul class="navigation">
						<li class="active"><a href="Index.jsp">Home</a></li>
						<li><a href="Petmart.jsp">PetMart</a></li>
						<li><a href="About.jsp">About us</a></li>
						<li><a href="Petguide.jsp">PetGuide</a></li>
						<li><a href="Contact.jsp">Contact us</a></li>
						<li><a href="Logout.jsp">Logout</a></li>
					</ul>
			</div>
<%
 try
{
	  Class.forName("oracle.jdbc.driver.OracleDriver");
	  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	  PreparedStatement ps1=con.prepareStatement("select * from Products");
		
	/*	ps1.setString(3, cat);
		ps1.setString(4, name); */
		
		ResultSet rs=ps1.executeQuery();
	%>
	
	<div class="gap"></div>
		<table class="showItem">
		<tr>
			<th>&nbsp;&nbsp;&nbsp;&nbsp;Username</th>
			<th>&nbsp;&nbsp;Item ID</th>
			<th>&nbsp;&nbsp;Item Category</th>
			<th>&nbsp;&nbsp;Item Name</th>
			<th>&nbsp;&nbsp;&nbsp;&nbsp;Price</th>
			<th>&nbsp;&nbsp;Date of Purchase</th></tr></table>
	<%
	while(rs.next())
	{   String un=rs.getString(1);
		String cat=rs.getString(3);
		String name=rs.getString(4);
		String price=rs.getString(5);
		String id=rs.getString(2);
		String dt=rs.getString(6);
		
		%><table class="showItem"><tr>
			<td><%=un%></td>
&nbsp;&nbsp;<td><%=id%></td>
			<td><%=cat%></td>
			<td><%=name%></td>
			<td><%=price%></td>
			<td><%=dt%></td>
		</tr>
		</table>
		<%
	}
}

 catch(Exception e)
	{
	 response.sendRedirect("error1.jsp");
	}
%>		</body>
</html>