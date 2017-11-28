<%@ page import="java.sql.*,java.util.*,p1.Pet"  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<!--  Website template by freewebsitetemplates.com  -->
<html>

<head>
	<title>Petmart</title>
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
       HashMap hm=(HashMap)session.getAttribute("hm");
			if(hm==null)
	/*If user is not logged in..then access denied otherwise user can view PETMART page*/
			{
				%>
		<div id="header">
	           		<a href="Index.jsp" id="logo"><img src="images/logo.gif" width="310" height="114" alt="" title=""></a>
					<ul class="navigation">
						<li><a href="Index.jsp">Home</a></li>
						<li class="active"><a href="Petmart.jsp">PetMart</a></li>
						<li><a href="About.jsp">About us</a></li>
						<li><a href="Petguide.jsp">PetGuide</a></li>
						<li><a href="Contact.jsp">Contact us</a></li>
					</ul>
			</div>		
				
			<br><br>       
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
            
                				
				<img src="images/deny1.jpg"/>
				<h2 align="center" style="font-family:'Times New Roman', Times, serif">You are not Logged In.</h2>
				<h2 align="center" style="font-family:'Times New Roman', Times, serif">Please LogIn to Continue.</h2>
		       <a href="login.html"><br><h2 align="center" style="font-family:'Times New Roman', Times, serif">[LOGIN HERE]</h2></a>
<%		}
			else
			{
 %>               <div id="header">
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
			
			
			<div id="body">
			
			       <div id="content">
				         
						 
						 <div class="search">
									<form action="Search.jsp" method="post">
									<input type="text" name="s" placeholder="Search"><button type="submit" value="search">&nbsp</button>
									</form>
									
								</div>
								
       
								
                                
                                
				        <div class="content">
						
						        
								<ul>
									<li>
										<a href="Petmart.jsp"><img src="images/koi2.jpg" width="140" height="250" alt="Pet Shop" title="Pet Shop"></a>
										    <h2>Food Area</h2>
										    <span><a href="dogfood.jsp"><h3>Dog Food</a></</span><br>
											<span><a href="catfood.jsp"><h3>Cat Food</a></</span><br>
											<span><a href="birdfood.jsp"><h3>Bird Food</a></</span><br>
											<span><a href="fishfood.jsp"><h3>Fish Food</h3></a></span>
											
										    
											
									</li>
									<li>
										<a href="accesories.jsp"><img src="images/cat3.jpg" width="140" height="250" alt="Pet Shop" title="Pet Shop"></a>
							<span>		<a href="accesories.jsp "><h2>Accessories</h2></a>	</span>
											<br><span>Clothes</a></span><br>
											<span>Beds</a></span><br>
											<span>Muzzles</a></span><br>
											
											<span>Cooling Dog Coat</a></span>
																					  
									</li>
									<li>
										<a href="Petmart.jsp"><img src="images/dog2.jpg" width="140" height="240" alt="Pet Shop" title="Pet Shop"></a>
										<h2>Animals Available</h2>
                                        
    
										    <span><a href="Dog.jsp"><h3>Dog</h3> </a></span>
											<span><a href="Cat.jsp"><h3>Cat</h3> </a></span>
											<span><a href="Bird.jsp"><h3>Bird</h3> </a></span>
											<span><a href="fish.jsp"><h3>Fish</h3> </a></span>
											
										    
									</li>
									<li>
										<a href="health.jsp"><img src="images/bird3.jpg" width="140" height="240" alt="Pet Shop" title="Pet Shop"></a>
							<br>
							<span>	<a href="health.jsp"><h2>Health Center</h2></a></span>										    
										
										    
									</li>
									<li>
										<a href="training.jsp"><img src="images/bird-in-cage.jpg" width="140" height="250" alt="Pet Shop" title="Pet Shop"></a>
						<span>		<a href="training.jsp">	<h2>Training Essentials</h2></a></span>
										
											<br><br>
											<span>Training Pads</h3> </a></span>
											<br><br>
											<span>Training Aids</h3></a></span>
								
									</li>
									<li>
										<a href="groom.jsp"><img src="images/puppy3.jpg" width="140" height="240" alt="Pet Shop" title="Pet Shop"></a>
							<span>		<a href="groom.jsp"><h2>Grooming</h2></a></span>										
											
											
											
										<br>	<span>Leash</a></span><br>
											<span>Shampoo</a></span><br>
											<span>Glove</a></span><br>
											<span>Aroma</span>
											</li>
								</ul>
						</div>
						
					    <div id="sidebar">
								
                              								
								   <a href="Petmart.jsp"><img src="images/discount.jpg" width="300" height="790" alt="Pet Shop" title="Pet Shop"></a> 	
								
								
					    </div>
				   </div>   
	<%} %>			
	    
				   <div class="featured">
				    <marquee>    <ul>
							<img src="images/organic-and-chemical-free.jpg" width="300" height="90" alt="Pet Shop" title="Pet Shop" >
							<img src="images/good-food.jpg" width="300" height="90" alt="Pet Shop" title="Pet Shop" >
							<img src="images/pet-grooming.jpg" width="300" height="90" alt="Pet Shop" title="Pet Shop" >
						</ul></marquee>
				        
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