<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
    
 <%@ page import="com.rcpit.blackspot.*" %>
<%@ page import="java.sql.*" %>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  
	int pid=Integer.parseInt(request.getParameter("bid"));
	try
	{
		Connection con = ConnectionDB.connect(); 
		PreparedStatement ps1=con.prepareStatement("delete from blackspot where bid=?");
		ps1.setInt(1, pid); 
		int rs = ps1.executeUpdate();
		if(rs>0)
		{
			response.sendRedirect("viewBlackSpotD.jsp");
		}
		else
		{
			response.sendRedirect("404.html");
		}
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>
</body>
</html>