<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

try
{
	String s=request.getParameter("s");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
	PreparedStatement ps=con.prepareStatement("select * from Details");
  ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		String sn=rs.getString(1);
		request.setAttribute("sn",sn);
		
		if(sn.equalsIgnoreCase(s))
		{
			out.print("<br>After if "+sn);
			
			%>
			<jsp:forward page="${sn }.jsp"/>
			<%
			}
	
	}
}catch(Exception e)
{
	response.sendRedirect("error1.jsp");
}

%>

</body>
</html>