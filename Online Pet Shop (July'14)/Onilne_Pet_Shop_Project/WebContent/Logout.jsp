<%@ page import="java.sql.*,java.util.*,p1.Pet"  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
						<li><a href="login.html">Login</a></li>
						<li><a href="Petguide.jsp">PetGuide</a></li>
						<li><a href="Contact.jsp">Contact us</a></li>
					</ul>
			</div>
<%
HashMap hm=(HashMap)session.getAttribute("hm");
session.invalidate();
%>
<br><br><br>
<h2 align="center" style="font-family:'Times New Roman', Times, serif">YOU HAVE SUCCESSFULLY LOGGED OUT.</h2>
</body>
</html> 