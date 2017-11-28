   <!DOCTYPE html >
<%@ page import="java.sql.*"%>
<!--  Website template by freewebsitetemplates.com  -->
<html>

<head>
	<title>BIRD FOOD</title>
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
						<li ><a href="Index.jsp">Home</a></li>
						<li class="active"><a href="Petmart.jsp">PetMart</a></li>
						<li><a href="About.jsp">About us</a></li>
						<li><a href="Petguide.jsp">PetGuide</a></li>
						<li><a href="Contact.jsp">Contact us</a></li>
						<li><a href="Logout.jsp">Logout</a></li>
					</ul>
			</div>
			
			<div id="body">
			
			       <div id="content">
				         
						 
						 <div class="search">
									<form action="Search.jsp" method="post">
									<input type="text" name="s" placeholder="Search"><button type="submit" value="search">&nbsp</button>
									</form>
								</div>
								<div class="content">
         	                       <ul>
                                   <%
		  try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	PreparedStatement ps=con.prepareStatement("select * from Details where itemcategory='birdfood'");
    ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		String s1=rs.getString("itemcategory");
		String s2=rs.getString("itemname");
		String s3=rs.getString("price"); 
		String s4=rs.getString("itemid");
		%><li>
        <form action="Control.jsp" method="post">
		<a href="<%=s2%>.jsp"><img src="images/<%=s2%>.jpg" width="140" height="250" alt="Pet Shop" title="Pet Shop"></a>
		<h2><%=s2%></h2>
		<input type="hidden" name="itemcategory" value='<%= s1 %>'/>
		<input type="hidden" name="itemname" value='<%= s2 %>'/>
		<input type="hidden" name="price" value='<%= s3 %>'/>
		<input type="hidden" name="itemid" value='<%= s4 %>'/>
            <%out.print("<br>Price"+s3);%> 
            
            
           
        	<span><a href="<%=s2%>.jsp">See Details</a></span>
		<input id="addToCartImg" name="sub" type="submit" value="" />
        </form></li>
        <%
	}
}catch(Exception e)
{
	response.sendRedirect("error1.jsp");
}
%>
</ul>
						</div>
						
					    <div id="sidebar">
								
                              								
								   <a href="Petmart.jsp"><img src="images/discount.jpg" width="300" height="790" alt="Pet Shop" title="Pet Shop"></a> 	
								
								
					    </div>
				   </div>
				   
				   <div class="featured">
				        <ul>
							<li><a href="Index.jsp"><img src="images/organic-and-chemical-free.jpg" width="300" height="90" alt="Pet Shop" title="Pet Shop" ></a></li>
							<li><a href="Index.jsp"><img src="images/good-food.jpg" width="300" height="90" alt="Pet Shop" title="Pet Shop" ></a></li>
							<li class="last"><a href="Index.jsp"><img src="images/pet-grooming.jpg" width="300" height="90" alt="Pet Shop" title="Pet Shop" ></a></li>
						</ul>
				        
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