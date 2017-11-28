<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Afghan Hound</title>
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
    image1.src = "images/Afghan_Hound_face_1.jpg";
    var image2 = new Image();
    image2.src = "images/Afghan_Hound_face_2.jpg";
    var image3 = new Image();
    image3.src = "images/Afghan_Hound_face_3.jpg";
    var image4 = new Image();
    image4.src = "images/Afghan_Hound_face_4.jpg";
</script>
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
			<div class="content">
			
			       <div id="content">
						<br /><br /><br /><center><img src="images/Afghan_Hound_banner.PNG" /></center><hr />

<br /><br /><center><img id="roundEdge" src="images/Afghan_Hound_face_1.jpg" width="600" height="350" name="slide" /></center><br />
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

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Afghan Hound is a hound that is one of the oldest dog breeds in existence. Distinguished by its thick, fine, silky coat and its tail with a ring curl at the end, the breed acquired its unique features in the cold mountains of Afghanistan.</p>

<br /><h2>Health concerns</h2>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Major health issues are allergies, cancer, and hip dysplasia. Sensitivity to anesthesia is an issue the Afghan hound shares with the rest of the sighthound group, as sighthounds have relatively low levels of body fat. <p><br /><br />

<br />

<center><a href="Cart.jsp" ><img id="temp" src="images/View_my_cart_button_277x60.png" /></a></center><br /><br />
	
					    </div>
				   </div>  
				   <div class="featured">
				        <ul>
							<li><img src="images/organic-and-chemical-free.jpg" width="300" height="90" alt="Pet Shop" title="Pet Shop" ></li>
							<li><img src="images/good-food.jpg" width="300" height="90" alt="Pet Shop" title="Pet Shop" ></li>
							<li class="last"><img src="images/pet-grooming.jpg" width="300" height="90" alt="Pet Shop" title="Pet Shop" ></li>
						</ul>   
				   </div>
			
			<div id="footer">        
					<div id="footnote">
						<div class="section">
						   &copy; 2014 Petshop. All Rights Reserved.
						</div>
					</div>
			</div>
			</div>
			
		
</body>
</html>