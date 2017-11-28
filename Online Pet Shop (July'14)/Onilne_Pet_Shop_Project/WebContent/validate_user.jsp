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
						<li class="active"><a href="Index.jsp">Home</a></li>
						<li><a href="Petmart.jsp">PetMart</a></li>
						<li><a href="About.jsp">About us</a></li>
						<li><a href="login.html">Login</a></li>
						<li><a href="Petguide.jsp">PetGuide</a></li>
						<li><a href="Contact.jsp">Contact us</a></li>
					</ul>
			</div>
		
<%
String name=request.getParameter("t1");
String add=request.getParameter("t2");
String email=request.getParameter("t3");
String uname=request.getParameter("t4");
String pass=request.getParameter("t5");

String ndemo=uname;
char[] a=ndemo.toCharArray();
int c=0;
for(int i=0;i<ndemo.length();i++)
{
	if(a[i]==' ')
		c++;
}
boolean create=false;

	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	PreparedStatement ps=con.prepareStatement("select * from users where username=?");
	ps.setString(1, uname);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		String oldn=rs.getString(1);
		if(oldn.equals(uname))
		{
			out.print("<br>The UserName already exists,,,,....TRY another");
			create=true;
		}
	}
	if((!create) && (c==0))
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
			
			PreparedStatement ps1=con1.prepareStatement("insert into users values(?,?,?,?,?)");
			ps1.setString(1, name);
			ps1.setString(2, add);
			ps1.setString(3, email);
			ps1.setString(4, uname);
			ps1.setString(5, pass);
			int i=ps1.executeUpdate();
			 if(i>0)
			 {
				%>
				<br><br><br>
<h2 align="center" style="font-family:'Times New Roman', Times, serif">Welcome in our page <%= uname %>...</h2>
<h2 align="center" style="font-family:'Times New Roman', Times, serif">Do you want to <a href="login.html">LOGIN NOW ?</a></h2>
			<%
			 }
		}catch(Exception e)
		{
			%> 
			<br><br>
			   <h2 align="center" style="font-family:'Times New Roman', Times, serif">Username Already in use...Try different Username.</h2>
			   <h2 align="center" style="font-family:'Times New Roman', Times, serif"> <a href="signup.html">[Register Here]</a></h2> 
		<%
		}

	}
	else
	{
		out.print("<br> Check your Username...Don't give space in between UserName");
	}
%>

	
</body>
</html>