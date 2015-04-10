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
	ResultSet rset4 = null;

	String loc1 = request.getParameter("loc1");
	String loc2 = request.getParameter("loc2");
	String t_id = request.getParameter("t_id");
	String date = request.getParameter("datetime");

	

	int numResults = 0;
	try {
		sql = "SELECT * FROM campus_loc where c_id='" + loc1 + "'";
		pstmt = conn.prepareStatement(sql);
		rset = pstmt.executeQuery();

		if (!rset.isBeforeFirst()) {

			sql = "SELECT * FROM airports where a_id='" + loc1 + "'";
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();

		}

		sql = "SELECT * FROM campus_loc where c_id='" + loc2 + "'";
		pstmt = conn.prepareStatement(sql);
		rset2 = pstmt.executeQuery();

		if (!rset2.isBeforeFirst()) {

			sql = "SELECT * FROM airports where a_id='" + loc2 + "'";
			pstmt = conn.prepareStatement(sql);
			rset2 = pstmt.executeQuery();

		}

		sql = "SELECT * FROM taxis where t_id='" + t_id + "'";
		pstmt = conn.prepareStatement(sql);
		rset3 = pstmt.executeQuery();

		sql = "SELECT * FROM airlines";
		pstmt = conn.prepareStatement(sql);
		rset4 = pstmt.executeQuery();

	} catch (SQLException e) {
		error_msg = e.getMessage();
		System.out.println(error_msg);
		if (conn != null) {
			conn.close();
		}
	} finally {

	}
%>
<%@include file="header.jsp"%>
</head>
<body>
	<div class="mainDiv">

		<div class="row">

			<%
		String uni1 = String.valueOf(session.getAttribute("uni"));

		if (uni1.equals("null")) {
			out.print("In order to book a ride, please <a class='btn btn-primary' type='button' href=\"register.jsp\">Sign up</a>");
		} else {

			out.print("<form name='advanced_search' action='addride.jsp' method='get'>");

			out.print("<div class='row'>");

			out.print("<div class='col-md-5'>");
			out.print("<div class='title' style='height: 32px;'>Here is the information about the ride you wish to add:</div>");
			if (rset != null) {
				while (rset.next()) {
					out.print("<p style='padding-top:30px;'>From: ");
					/* out.print(rset.getString(1) + " "); */
					out.print("<input type='checkbox' name='ride1' value='"+ rset.getString(1) + "'> "+ rset.getString(2)+ " " + rset.getString(3) + "<br></p>");

				}

			} else {
				out.print(error_msg);
			}

			if (rset2 != null) {
				while (rset2.next()) {
					out.print("<p>To: ");
					out.print("<input type='checkbox' name='ride2' value='"+ rset2.getString(1) + "'> "+ rset2.getString(2)+ " " + rset2.getString(3) + "<br></p>");

				}

			} else {
				out.print(error_msg);
			}

			if (rset3 != null) {
				while (rset3.next()) {
					out.print("<p>To: ");
					out.print("<input type='checkbox' name='cab' value='"+ rset3.getString(1) + "'> "+ rset3.getString(2)+ " " + rset3.getString(3) + "<br></p>");

				}

			} else {
				out.print(error_msg);
			}

			out.print("<p>At: <input type='checkbox' name='datetime' value='"+ date + "'> " + date + "<br></p>");

			
			out.print("</div>");

			out.print("<div class='col-md-3'>");
/* 			out.print("<form name='advanced_search' action='add.jsp' method='get'>");
 */
			%>

			<div class="title" style="height: 32px;">Pick an airline:</div>

			<%
			if (rset4 != null) {
/*  				out.print("<select name='airline'><option value='volvo'>Volvo</option></select>");
 */ 	
 				out.print("<select name='airline'>");
				while (rset4.next()) {
					
					out.print("<option value='"+ rset4.getString(1) + "'> "+ rset4.getString(2)+ " " + rset4.getString(3) + "</option></p>");

				}
				out.print("</select>");

				out.print("</div>");

				out.print("<div class='col-md-3'>");

				out.print("<div style='float: right;'><input type='submit' value='Go'></div>");
				
				out.print("</div>");


			} else {
				out.print(error_msg);
			}
			out.print("</div>");

			
		}
		out.print("</div>");
		
		out.print("</form>");


		
		
	%>
		</div>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>