<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*,java.util.*,p1.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Purchased Successfully</title>
<meta  charset=iso-8859-1" />
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
HashMap hm=(HashMap)session.getAttribute("hm");
Set s=hm.entrySet();
Iterator ir=s.iterator();
Object o=ir.next(); 
Map.Entry me=(Map.Entry)o;
String k=(String)me.getKey();
Pet p1=(Pet)me.getValue();

Calendar cs=Calendar.getInstance();
SimpleDateFormat f=new SimpleDateFormat("yyyy/MMM/dd HH:mm:ss");
String datenow=f.format(cs.getTime());

String un=(String)session.getAttribute("un");

String cat=p1.getCategory();		
String name=p1.getName();
String price=p1.getPrice();
String id=p1.getId();
try
{
	  Class.forName("oracle.jdbc.driver.OracleDriver");
	  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	  PreparedStatement ps1=con.prepareStatement("insert into Products values(?,?,?,?,?,?)");
	    ps1.setString(1, un);
	    ps1.setString(2, id);
		ps1.setString(3, cat);
		ps1.setString(4, name);
		ps1.setString(5, price);
		ps1.setString(6,datenow);
		int i=ps1.executeUpdate();
		 if(i>0)
		 { 
			 %>
			
			 <br><br><br><br><br><br><br><br><br><br><br><br>
<center><img src="images/purchased_banner.PNG" /></center>
     <%  }
}		 
 catch(Exception e)
	{
	 response.sendRedirect("error1.jsp");
	}	 
%>
</body>
</html>