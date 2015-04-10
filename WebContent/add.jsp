<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

	<title>Add a Ride</title>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="javax.servlet.*,java.text.*"%>
	<%@include file="init.jsp"%>
	
	<%
	PreparedStatement pstmt = null;
	StringBuilder sb;
	String sql;
	ResultSet rset = null;
	ResultSet rset2 = null;
	ResultSet rset3 = null;

	String loc1 = request.getParameter("loc1");
	String loc2 = request.getParameter("loc2");
	String t_id = request.getParameter("t_id");


	int numResults = 0;
	try {
		sql = "SELECT * FROM campus_loc where c_id='" + loc1 + "'";
		pstmt = conn.prepareStatement(sql);
		rset = pstmt.executeQuery();
		
		if (!rset.isBeforeFirst() ) { 
			
			sql = "SELECT * FROM airports where a_id='" + loc1 + "'";
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			
		}
		
		sql = "SELECT * FROM campus_loc where c_id='" + loc2 + "'";
		pstmt = conn.prepareStatement(sql);
		rset2 = pstmt.executeQuery();
		
		if (!rset2.isBeforeFirst() ) {
			
			sql = "SELECT * FROM airports where a_id='" + loc2 + "'";
			pstmt = conn.prepareStatement(sql);
			rset2 = pstmt.executeQuery();
			
			
		}
		
		sql = "SELECT * FROM taxis where t_id='" + loc2 + "'";
		pstmt = conn.prepareStatement(sql);
		rset3 = pstmt.executeQuery();


	} catch (SQLException e) {
		error_msg = e.getMessage();
		System.out.println(error_msg);
		if (conn != null) {
			conn.close();
		}
	} finally {

	}
%>
 	<%@include file="header.jsp" %>
</head>
<body>
	<div class="mainDiv">Here is the information about the ride you wish to add:
	<% 
	
	if (rset != null) {
		while (rset.next()) {
			out.print("<p>From: ");
			out.print(rset.getString(1) + " ");
			out.print(rset.getString(2) + " ");
			out.print(rset.getString(3) + "</p>");
		}

	} else {
		out.print(error_msg);
	}
	
	if (rset2 != null) {
		while (rset2.next()) {
			out.print("<p>To: ");
			out.print(rset2.getString(1) + " ");
			out.print(rset2.getString(2) + " ");
			out.print(rset2.getString(3) + "</p>");
		}

	} else {
		out.print(error_msg);
	}
	
	if (rset3 != null) {
		while (rset3.next()) {
			out.print("<p>To: ");
			out.print(rset3.getString(1) + " ");
			out.print(rset3.getString(2) + " ");
			out.print(rset3.getString(3) + "</p>");
		}

	} else {
		out.print(error_msg);
	}
	%></div>

<%@include file="footer.jsp" %>
</body>
</html>