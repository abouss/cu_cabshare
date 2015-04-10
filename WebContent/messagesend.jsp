<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<LINK href="css/main.css" rel="stylesheet" type="text/css">
   	   <link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	</head>
	<%@ page import="java.sql.*"%>
   <%@ page import="javax.sql.*"%>
   <%@ page import="javax.servlet.*,java.text.*"%>
   <%@include file="init.jsp"%>	
   <%
   	PreparedStatement ps = null;
	StringBuilder sb;
	String sql;
	ResultSet rset = null;
	ResultSet revset = null;%>
	<body>
	<%
	String uni1 = String.valueOf(session.getAttribute("uni"));
	
	
    String uni2 = request.getParameter("UNI");
    String message = request.getParameter("message");
   
 
   	sql = "insert into messages (m_id, m_datetime, m_body, uni1, uni2)";
		sql += "values ('" + "4046" + "','" + "2015-07-17 09:45:00.0" + "','" + message + "','" + uni1 + "','" +  uni2 + "')";
		ps = conn.prepareStatement(sql);
		int rows = ps.executeUpdate();
		
	response.sendRedirect("messages.jsp");

    %>
    
    
<%@include file="footer.jsp" %>
</body>
</html>