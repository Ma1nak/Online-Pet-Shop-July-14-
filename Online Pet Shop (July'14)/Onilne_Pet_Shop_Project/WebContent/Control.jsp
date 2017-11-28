<%@ page import="java.sql.*,java.util.*,p1.Pet"  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PetMart</title>
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

<%

	
    String s1=request.getParameter("itemcategory");		
    String s2=request.getParameter("itemname");
    String s3=request.getParameter("price");
    String s4=request.getParameter("itemid");
	HashMap hm=(HashMap)session.getAttribute("hm");
	Pet p=new Pet();
	p.setCategory(s1);
	p.setName(s2);
	p.setPrice(s3);
	p.setId(s4)	;
	
	hm.put( s4 , p );
 
    session.setAttribute("hm",hm);
    %>  
 <div id="header">
	           		<a href="Index.jsp" id="logo"><img src="images/logo.gif" width="310" height="114" alt="" title=""></a>
					<ul class="navigation">
						<li><a href="Index.jsp">Home</a></li>
						<li class="active"><a href="Petmart.jsp">PetMart</a></li>
						<li><a href="About.jsp">About us</a></li>
						<li><a href="Petguide.jsp">PetGuide</a></li>
						<li><a href="Contact.jsp">Contact us</a></li>
						<li><a href="Logout.jsp">Logout</a></li>
					</ul>
			</div>
			<br><br>
<h2 align="center" style="font-family:'Times New Roman', Times, serif">Item was Successfully added to Cart.</h2>			   
 <form action="Cart.jsp" method="post" align="center">
 <input id="viewCartImg" name="view" type="submit" value="" />
 </form>   

</body>
</html>