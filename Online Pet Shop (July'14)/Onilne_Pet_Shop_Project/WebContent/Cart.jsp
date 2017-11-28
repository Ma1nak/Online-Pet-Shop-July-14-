<%@ page import="java.sql.*,java.util.*,p1.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Shopping Cart</title>
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


<h1 align="center">Your shopping Cart</h1>
<h3 align="center">------------------------------------------------------------------------</h3>

<% 
HashMap hm=(HashMap)session.getAttribute("hm");
Set s=hm.entrySet();
Iterator ir=s.iterator();
while(ir.hasNext())
{
	Object o=ir.next(); 
	Map.Entry me=(Map.Entry)o;
	String k=(String)me.getKey();
	Pet pet=(Pet)me.getValue();
	
%>
<li>
<form action="remove.jsp" align="center" method="post">

		<input type="hidden" name="itemcategory" id="itemcategory" value='<%= pet.getCategory() %>'/>
		<input type="hidden" name="itemname" id="itemname" value='<%= pet.getName() %>'/>
		<input type="hidden" name="price" id="price" value='<%= pet.getPrice() %>'/>
		<input type="hidden" name="itemid" id="itemid" value='<%= pet.getId() %>'/>
 <a href="<%=pet.getName()%>.jsp"><img src="images/<%=pet.getName()%>.jpg" width="140" height="250" alt="Pet Shop" title="Pet Shop"></a>           
<h2><%=pet.getName()%></h2><% out.print("<br>Price : "+pet.getPrice()); %><br>
<input id="removeFromCartImg" name="sub" type="submit" value="" />
</form>
</li>

<%
}

%>
<br>
<form action="Purchase_controller.jsp" align="center" method="post">
<input id="purchaseImg" name="purchase" type="submit" value=""/>
</form>
<div id="sidebar">
<div class="featured">
				    <marquee>   
							<img src="images/organic-and-chemical-free.jpg" width="300" height="90" alt="Pet Shop" title="Pet Shop" >
							<img src="images/good-food.jpg" width="300" height="90" alt="Pet Shop" title="Pet Shop" >
							<img src="images/pet-grooming.jpg" width="300" height="90" alt="Pet Shop" title="Pet Shop" >
						</marquee>
				        
				   </div>
</div>				  

<div id="footer">
			        <div class="section">
						<ul>
							<li>
								<img src="images/friendly-pets.jpg" width="240" height="186" alt="Pet Shop" title="Pet Shop">
								<h2><font color=GREENYELLOW>Friendly Pets</font></h2>
								<p><br>
								 Keep Your Pets Safe this Summer. Summer can be a special time to bond with our pets .
								</p>
							</li>	
							<li>
								<img src="images/pet-lover2.jpg" width="240" height="186" alt="Pet Shop" title="Pet Shop">
								<h2><font color=GREENYELLOW>How dangerous are they</font></h2>
								<p><br>
								  Keeping wild and exotic animals as pets threatens public health and safety .
								</p>
							</li>	
							<li>
								<img src="images/healthy-dog.jpg" width="240" height="186" alt="Pet Shop" title="Pet Shop">
								<h2><font color=GREENYELLOW>Keep them healthy</font></h2>
								<p><br><br>
								  Simple Steps Ensure a Long Life for Your Pet. 
								</p>
							</li>	
							<li>
								
								<h2><font color=GREENYELLOW>Love...love...love...pets</font></h2>
								<p><br>
								    Love Your Pet is completely committed to the health and well being of your pet .
								</p>
								<img src="images/pet-lover.jpg" width="240" height="186" alt="Pet Shop" title="Pet Shop">
							</li>	
						</ul>
					</div>
					<div id="footnote">
						<div class="section">
						 &copy; 2014 <a href="Index.jsp">Petshop</a>. All Rights Reserved.
						</div>
					</div>
			</div>
			


</body>
</html>