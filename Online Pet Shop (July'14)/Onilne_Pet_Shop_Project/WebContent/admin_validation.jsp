<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Pet Shop</title>
	<meta charset="utf-8">
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<!--[if IE 6]>
		<link href="css/ie6.css" rel="stylesheet" type="text/css" />
	<![endif]-->
	<!--[if IE 7]>
        <link href="css/ie7.css" rel="stylesheet" type="text/css" />  
	<![endif]-->
	
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/master.css" />
<script type="text/javascript" src="js/jquery-latest.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<%@ page import="java.sql.*" %>
<body>	
	
<%
  String un=request.getParameter("t1");
  String pass=request.getParameter("t2");
  try
  {
	  Class.forName("oracle.jdbc.driver.OracleDriver");
	  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	  PreparedStatement ps=con.prepareStatement("select * from admin where username=? and password=?");
	  ps.setString(1,un);
	  ps.setString(2,pass);
	  ResultSet rs=ps.executeQuery();
	  boolean b=false;
	  if(rs.next())
	  {
		  b=true;
	  }
	  if(b==true)
	  {
		  /* ADMIN INTERFACE PAGE */
		  %>
		<div id="header">
	           		<a href="Index.jsp" id="logo"><img src="images/logo.gif" width="310" height="114" alt="" title=""></a>
					<ul class="navigation">
					
						<li class="active"><a href="Index.jsp">Home</a></li>
						<li><a href="History.jsp">Purchase History</a></li>
						<li><a href="Logout.jsp">Logout</a></li>
						
					</ul>
			</div>
			<br>
			<br>
			<br>  
		  
		<center><img src="images/admin_banner.PNG" /></center>
    	<div class="container">
    		<div class="row">
    			<div class="col-xs-12 col-sm-3"?>
    				<a href="javascript:;" class="btn btn-warning btn-lg logHd addBtn">ADD ITEM</a>
    				<div class="logBod addBod">
    					<div class="pad20">
    					<form action="add_controller.jsp" method="post">
							<p>Item Category :</p>
							<select name="t1" class="form-control" > 
                                                            
			                                              <option >Select Category</option>
			                                              <option value="Bird">Bird</option>
                                                          <option value="Cat">Cat</option>
                                                          <option value="Dog">Dog</option>
                                                          <option value="Fish">Fish</option>
                                                          <option value="accesories">Accessories</option>
                                                          <option value="dogfood">Dog Food</option>
                                                          <option value="catfood">Cat Food</option>
                                                          <option value="birdfood">Bird Food</option>
                                                          <option value="fishfood">Fish Food</option>
                                                          <option value="groom">Groom</option>
                                                          <option value="training">Training</option>
                                                          <option value="health">Health</option>
                                           </select>
				
							<p>Item Name :</p>
							<select name="t2" class="form-control"> 
                                                            
			                                              <option>Select Name</option>
			                                              <option value="Abyssinian Lovebird">Bird:Abyssinian Lovebird</option>
                                                         
                                                          <option value="Bluefronted Amazon">Bird:Bluefronted Amazon</option>
                                                          <option value="Great-Billed parrot">Bird:Great-Billed parrot</option>
                                                          <option value="Masked Lovebird">Bird:Masked Lovebird</option>
                                                          <option value="Asian Semi-Longhair">Cat:Asian Semi-Longhair</option>
                                                          <option value="British Longhair">Cat:British Longhair</option>
                                                          <option value="Cyprus">Cat:Cyprus</option>
                                                          <option value="Munchkin">Cat:Munchkin</option>
                                                          <option value="Ragamuffin">Cat:Ragamuffin</option>
                                                          <option value="Afghan Hound">Dog:Afghan Hound</option>
                                                          <option value="American Bulldog">Dog:American Bulldog</option>
                                                          <option value="Border Collie">Dog:Border Collie</option>
                                                          <option value="Boxer">Dog:Boxer</option>
                                                          <option value="Dalmatian">Dog:Dalmatian</option>
                                                          <option value="Labrador">Dog:Labrador</option>
                                                        
                                                          <option value="regaltang">Fish:regaltang</option>
                                                          <option value="goldfish">Fish:Goldfish</option>
                                                          <option value="flameangel">Fish:Flameangel</option>
                                                          
                                                          <option value="clothes">Accessories:Clothes</option>
                                                          <option value="bed">Accessories:Beds</option>
                                                          <option value="muzzles">Accessories:Muzzles</option>
                                                          <option value="coat">Accessories:Cooling Dog Coat</option>
                                                          <option value="biscuit">Biscuit</option>
                                                          <option value="pedigree">Pedigree</option>
                                                          <option value="friski">Cat Food:Friski</option>
                                                          <option value="whiskas">Cat Food:Whiskas</option>
                                                          <option value="prestige">Bird Food:Prestige</option>
                                                          <option value="cichlid">Fish Food:Cichlid</option>
                                                          <option value="leash">Groom:Leash</option>
                                                          <option value="glove">Groom:Glove</option>
                                                          <option value="shampoo">Groom:Shampoo</option>
                                                          <option value="aroma">Groom:Aroma</option>
                                                          <option value="pad">Training:Pad</option>
                                                          <option value="aid">Training:Aid</option>
                                                          <option value="supplement">Health:Supplement</option>
                                                 </select>
							<p>Price :</p><input placeholder="Price" type="text" name="t3" class="form-control" />
							<p>Item ID :</p><input placeholder="ID" type="text" name="t4" class="form-control" />
							<br />
							<input type="submit" value="ADD" class="btn btn-primary" /></form>
    					</div>
    				</div>
    			</div>
    			<div class="col-xs-12 col-sm-3"?>
    				<a href="javascript:;" class="btn btn-warning btn-lg logHd upBtn">UPDATE ITEM</a>
    				<div class="logBod upBod">
    					<div class="pad20">
    					<form action="update_controller.jsp" method="post">
							<p>Item Category :</p>
							<select class="form-control" name="t1"> 
                                                           <option >Select Category</option>
			                                              <option value="Bird">Bird</option>
                                                          <option value="Cat">Cat</option>
                                                          <option value="Dog">Dog</option>
                                                          <option value="Fish">Fish</option>
                                                          <option value="accesories">Accessories</option>
                                                          <option value="dogfood">Dog Food</option>
                                                          <option value="catfood">Cat Food</option>
                                                          <option value="birdfood">Bird Food</option>
                                                          <option value="fishfood">Fish Food</option>
                                                          <option value="groom">Groom</option>
                                                          <option value="training">Training</option>
                                                          <option value="health">Health</option>
                                                          
                                                          
                                           </select>
							<p>Item Name :</p>
							<select class="form-control" name="t2"> 
                                                            
			                                             <option>Select Name</option>
			                                              <option value="Abyssinian Lovebird">Bird:Abyssinian Lovebird</option>
                                                         
                                                          <option value="Bluefronted Amazon">Bird:Bluefronted Amazon</option>
                                                          <option value="Great-Billed parrot">Bird:Great-Billed parrot</option>
                                                          <option value="Masked Lovebird">Bird:Masked Lovebird</option>
                                                          <option value="Asian Semi-Longhair">Cat:Asian Semi-Longhair</option>
                                                          <option value="British Longhair">Cat:British Longhair</option>
                                                          <option value="Cyprus">Cat:Cyprus</option>
                                                          <option value="Munchkin">Cat:Munchkin</option>
                                                          <option value="Ragamuffin">Cat:Ragamuffin</option>
                                                          <option value="Afghan Hound">Dog:Afghan Hound</option>
                                                          <option value="American Bulldog">Dog:American Bulldog</option>
                                                          <option value="Border Collie">Dog:Border Collie</option>
                                                          <option value="Boxer">Dog:Boxer</option>
                                                          <option value="Dalmatian">Dog:Dalmatian</option>
                                                          <option value="Labrador">Dog:Labrador</option>
                                                        
                                                          <option value="regaltang">Fish:regaltang</option>
                                                          <option value="goldfish">Fish:Goldfish</option>
                                                          <option value="flameangel">Fish:Flameangel</option>
                                                          
                                                          <option value="clothes">Accessories:Clothes</option>
                                                          <option value="bed">Accessories:Beds</option>
                                                          <option value="muzzles">Accessories:Muzzles</option>
                                                          <option value="coat">Accessories:Cooling Dog Coat</option>
                                                          <option value="biscuit">Biscuit</option>
                                                          <option value="pedigree">Pedigree</option>
                                                          <option value="friski">Cat Food:Friski</option>
                                                          <option value="whiskas">Cat Food:Whiskas</option>
                                                          <option value="prestige">Bird Food:Prestige</option>
                                                          <option value="cichlid">Fish Food:Cichlid</option>
                                                          <option value="leash">Groom:Leash</option>
                                                          <option value="glove">Groom:Glove</option>
                                                          <option value="shampoo">Groom:Shampoo</option>
                                                          <option value="aroma">Groom:Aroma</option>
                                                          <option value="pad">Training:Pad</option>
                                                          <option value="aid">Training:Aid</option>
                                                          <option value="supplement">Health:Supplement</option>
                                           </select>
							<br/><font color=BROWN>Enter Details to UPDATE :</font><br/>
								
							<p>Price :</p><input placeholder="Price" type="text" name="t3" class="form-control" />
							<p>Item ID :</p><input placeholder="ID" type="text" name="t4" class="form-control" />
							<br />
							<input type="submit" value="UPDATE" class="btn btn-primary" /></form>
    					</div>
    				</div>
    			</div>
    			<div class="col-xs-12 col-sm-3"?>
    				<a href="javascript:;" class="btn btn-warning btn-lg logHd rmBtn">REMOVE ITEM</a>
    				<div class="logBod rmBod">
    					<div class="pad20">
    					<form action="remove_controller.jsp" method="post">
							<p>Item ID</p><input placeholder="ID" type="text" name="t1" class="form-control" />
							<br />
							<input type="submit" value="REMOVE" class="btn btn-primary" /></form>
    					</div>
    				</div>
    			</div>
    			<div class="col-xs-12 col-sm-3"?>
    			<form action="show_item.jsp" method="post">
    				<a href="javascript:;" class="btn btn-warning btn-lg logHd shBtn">SHOW ITEM</a>
    				<div class="logBod shBod">
    					<div class="pad20">
					
							<input type="submit" value="SHOW DETAILS" class="btn btn-primary" />
							
    					</div>
    				</div>
    				</form>
    			</div>
    		</div>
		</div>


<script type="text/javascript">

	$(function(){
		$(".addBod").hide();
		$(".upBod").hide();
		$(".rmBod").hide();
		$(".shBod").hide();
		$(".addBtn").click(function(){
			$(".addBod").slideDown();
			$(".upBod").slideUp();
			$(".rmBod").slideUp();
			$(".shBod").slideUp();
		});
		$(".upBtn").click(function(){
			$(".addBod").slideUp();
			$(".upBod").slideDown();
			$(".rmBod").slideUp();
			$(".shBod").slideUp();
		});
		$(".rmBtn").click(function(){
			$(".addBod").slideUp();
			$(".upBod").slideUp();
			$(".rmBod").slideDown();
			$(".shBod").slideUp();
		});
		$(".shBtn").click(function(){
			$(".addBod").slideUp();
			$(".upBod").slideUp();
			$(".rmBod").slideUp();
			$(".shBod").slideDown();
		});
	});
	
	
	
</script>
		  
		  <%
	  }
	  else
	  {
		%>
		  <br><br><br>
		  <h2 align="center" style="font-family:'Times New Roman', Times, serif">WRONG USERNAME OR PASSWORD !!!</h2>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <img src="images/deny2.jpg" /> <img src="images/deny1.jpg" />
		  <a href="login.html"><br><h2 align="center" style="font-family:'Times New Roman', Times, serif">[Try Again]</h2></a>
    	<% 
	  }
   }
  catch(Exception e)
  {
	  response.sendRedirect("error1.jsp");
  }
%>

	
</body>
</html>