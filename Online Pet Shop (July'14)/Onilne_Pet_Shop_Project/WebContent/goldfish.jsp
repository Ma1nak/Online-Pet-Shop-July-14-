      <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Pet Shop</title>
	<meta  charset="iso-8859-1" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<!--[if IE 6]>
		<link href="css/ie6.css" rel="stylesheet" type="text/css" />
	<![endif]-->
	<!--[if IE 7]>
        <link href="css/ie7.css" rel="stylesheet" type="text/css" />  
	<![endif]-->
		<script type="text/javascript">
    var image1 = new Image();
    image1.src = "images/goldfish.jpg";
    var image2 = new Image();
    image2.src = "images/goldfish1.jpg";
    var image3 = new Image();
    image3.src = "images/goldfish2.jpg";
    var image4 = new Image();
    image4.src = "images/goldfish3.jpg";
</script>
</head>
<body>

	  
			<div id="header">
	           		<a href="index.html" id="logo"><img src="images/logo.gif" width="310" height="114" alt="" title=""></a>
					<ul class="navigation">
						<li ><a href="index.html">Home</a></li>
						<li class="active"><a href="petmart.html">PetMart</a></li>
						<li><a href="about.html">About us</a></li>
						<li><a href="blog.html">Blog</a></li>
						<li><a href="petguide.html">PetGuide</a></li>
						<li><a href="contact.html">Contact us</a></li>
						<li><a href="Logout.jsp">Logout</a></li>
					</ul>
			</div>
			
			<div id="body">
			<div class="content">
			
			       <div id="content">
						<br /><br /><br /><center><img src="images/goldfish.PNG" /></center><hr />

<br /><br /><center><img id="roundEdge" src="images/goldfish.jpg" width="500" height="350" name="slide" /></center><br /><br />



<script type="text/javascript">
   		var step=1;
            function slideit()
            {
                document.images.slide.src = eval("image"+step+".src");
                if(step<4)
                    step++;
                else
                    step=1;
                setTimeout("slideit()",2500);
            }
            slideit();
            
    </script>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The goldfish (Carassius auratus auratus) is a freshwater fish in the family Cyprinidae of order Cypriniformes. It was one of the earliest fish to be domesticated, and is one of the most commonly kept aquarium fish.

A relatively small member of the carp family (which also includes the koi carp and the crucian carp), the goldfish is a domesticated version of a less-colorful carp (Carassius auratus) native to east Asia. It was first domesticated in China more than a thousand years ago, and several distinct breeds have since been developed. Goldfish breeds vary greatly in size, body shape, fin configuration and coloration (various combinations of white, yellow, orange, red, brown, and black are known).
As of April 2008, the largest goldfish in the world was believed by the BBC to measure 19 inches (48 cm), and be living in the Netherlands.[13] At the time, a goldfish named "Goldie", kept as a pet in a tank in Folkestone, England, was measured as 15 inches (38 cm) and over 2 pounds (0.91 kg), and named as the second largest in the world behind the Netherlands fish.[13] The secretary of the Federation of British Aquatic Societies (FBAS) stated of Goldie's size that "I would think there are probably a few bigger goldfish that people don't think of as record holders, perhaps in ornamental lakes".[13] In July 2010, a goldfish measuring 16 inches (41 cm) and 5 pounds (2.3 kg) was caught in a pond in Poole, England, thought to have been abandoned there after outgrowing a tank.[14]
</p>
 
   

<br />

<center><a href="Cart.jsp" ><img id="temp" src="images/View_my_cart_button_277x60.png" /></a></center><br /><br />
	
					    </div>
				   </div>  
				   <div class="featured">
				        <ul>
							<li><img src="images/organic-and-chemical-free.jpg" width="300" height="90" alt="Pet Shop" title="Pet Shop" ></a></li>
							<li><img src="images/good-food.jpg" width="300" height="90" alt="Pet Shop" title="Pet Shop" ></a></li>
							<li class="last"><img src="images/pet-grooming.jpg" width="300" height="90" alt="Pet Shop" title="Pet Shop" ></a></li>
						</ul>   
				   </div>
			
			<div id="footer">        
					<div id="footnote">
						<div class="section">
						   &copy; 2014 <a href="Index.jsp">Petshop</a>. All Rights Reserved.
						</div>
					</div>
			</div>
			</div>
			
		
</body>
</html>