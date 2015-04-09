<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	 <link rel="stylesheet" type="text/css" href="css/main.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	 
	<title>User Messages</title>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="javax.servlet.*,java.text.*"%>
	<%@include file="init.jsp"%>
	
<%
        PreparedStatement pstmt = null;
        StringBuilder sb;
        String sql;
        ResultSet rset = null;
        ResultSet revset = null;
        
        String uni1 = request.getParameter("uni");
       
        
        int numResults = 0;
        try {
        	sql = "SELECT * FROM users where uni='" + uni1 + "'";
        	pstmt = conn.prepareStatement(sql);
            rset = pstmt.executeQuery();
        	
            sql = "SELECT * FROM messages where uni='" + uni1 + "' ORDER BY m.datetime DESC";
            pstmt = conn.prepareStatement(sql);
            revset = pstmt.executeQuery();
            
            if (revset != null) {
            	revset.last();
                numResults = revset.getRow();
                revset.beforeFirst();
            }
            
        } catch (SQLException e) {
            error_msg = e.getMessage();
            System.out.println(error_msg);
            if( conn != null ) {
                conn.close();
            }
        } finally {
            
        }
    %>


 	<%@include file="header.jsp" %>
</head>
<body>
	<div id="mainDiv">
		list of user messages goes here
	</div>


<%@include file="footer.jsp" %>
</body>
</html>