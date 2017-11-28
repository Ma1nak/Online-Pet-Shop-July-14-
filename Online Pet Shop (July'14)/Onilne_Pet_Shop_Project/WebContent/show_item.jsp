<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Item List</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/master.css" />
<script type="text/javascript" src="js/jquery-latest.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
<div id="header">
	           		<a href="Index.jsp" id="logo"><img src="images/logo.gif" width="310" height="114" alt="" title=""></a>
					<ul class="navigation">
					
						<li class="active"><a href="admin_validation.jsp">Home</a></li>
						<li><a href="Logout.jsp">Logout</a></li>
						
					</ul>
			</div>

<%
try
{
	  Class.forName("oracle.jdbc.driver.OracleDriver");
	  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	  PreparedStatement ps1=con.prepareStatement("select * from Details");
		
	/*	ps1.setString(3, cat);
		ps1.setString(4, name); */
		
		ResultSet rs=ps1.executeQuery();
	%>
	
	<div class="gap"></div>
		<table class="showItem">
		<tr >
			<th>&nbsp;&nbsp;&nbsp;&nbsp;Item ID</th>
			<th>Item Category</th>
			<th>Item Name</th>
			<th>Price</th></tr></table>
	<%
	while(rs.next())
	{
		String cat=rs.getString(1);
		String name=rs.getString(2);
		String price=rs.getString(3);
		String id=rs.getString(4);
		
		%><table class="showItem"><tr >
			<td><%=id%></td>
&nbsp;&nbsp;<td>&nbsp;&nbsp;&nbsp;&nbsp;<%=cat%></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;
			
			<%=name%></td>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<%=price%></td>
		</tr>
		</table>
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