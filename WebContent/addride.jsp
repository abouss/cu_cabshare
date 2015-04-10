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

    String from = request.getParameter("ride1");
    String to = request.getParameter("ride2");
    String t_id = request.getParameter("cab");
    String datetime = request.getParameter("datetime");
    String line_id = request.getParameter("airline");

    String c_id = "";
    String a_id = "";

    if (from.substring(0,1).equals(to.substring(0,1))) {
    	out.print("<script type='text/javascript'>alert('Invalid Trip: Cabshares can only be made from campus to airports, or from airports to campus.')</script>");

    } else {
    	
    	if(from.substring(0,1).equals("1")) {
    		c_id = from;
    		a_id = to;
    	} else {
    		a_id = from;
    		c_id = to;
    	}
    	
       	sql = "insert into rides (uni, c_id, a_id, line_id, t_id, datetime)";
    		sql += "values ('" + uni1 + "','" + c_id + "','" + a_id + "','" + line_id + "','" +  t_id + "','" +  datetime + "')";
    		ps = conn.prepareStatement(sql);
    		int rows = ps.executeUpdate();
    		
    	response.sendRedirect("profile.jsp");
    	
    }
    
    
   
 


    %>
    
    
<%@include file="footer.jsp" %>
</body>
</html>