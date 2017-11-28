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
    image1.src = "images/flameangel.jpg";
    var image2 = new Image();
    image2.src = "images/flameangel1.jpg";
    var image3 = new Image();
    image3.src = "images/flameangel2.jpg";
    var image4 = new Image();
    image4.src = "images/flameangel3.jpg";
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
						<br /><br /><br /><center><img src="images/flameangel.PNG" /></center><hr />

<br /><br /><center><img id="roundEdge" src="images/regaltang.jpg" width="500" height="350" name="slide" /></center><br /><br />



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
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The flame angelfish's coloration is bright orange-red with a vertical elongated black spot and four or five bars on the sides, the posterior part of the dorsal, and anal fins, with alternating short purple-blue and black bands.Specimens from the Marquesas lack the vertical black bars. Generally, males may be larger and slightly more colored.

The life span of the flame angelfish is 5-7 years or more.

  
   

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