<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="add_controller.jsp" method="post" name="addform">
Enter the Item details below--
<table>
<tr><td>Item Category : <input type="text" name="t1" id="t1"></td></tr> 
<tr><td>Item Name : <input type="text" name="t2" id="t2"></td></tr>
<tr><td>Price: <input type="text" name="t3" id="t3"></td></tr>
<tr><td>Item ID : <input type="text" name="t4" id="t4"></td></tr>
<tr><td><input type="submit" value="ADD TO STOCK"> 
</table>
</form>
</body>
</html>