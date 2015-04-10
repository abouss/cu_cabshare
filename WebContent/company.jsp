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


<title>Taxi Company</title>
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

	String t_id = request.getParameter("t_id");

	int numResults = 0;
	try {
		sql = "SELECT * FROM taxis where t_id='" + t_id + "'";
		pstmt = conn.prepareStatement(sql);
		rset = pstmt.executeQuery();

		sql = "SELECT * FROM reviews where t_id='" + t_id
				+ "' ORDER BY r_rating DESC";
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

		<div class="row" style="margin-top: 40px">
			<div class="col-md-4">

				<%
					String t_name = "";
					String t_desc = "";
					String img = "";
					if (rset != null) {
						while (rset.next()) {
							t_name = rset.getString("t_name");
							t_desc = rset.getString("t_desc");
							img = rset.getString("img");
						}

					} else {
						out.print(error_msg);
					}

					out.print("<img src='img/" + img + "' alt='...' class='img-rounded'/>");
					out.print("</div>");

					out.print("<div class='col-md-6'><div>");

					out.print("<h3>" + t_name + "</h3>");
					out.print("<p>" + t_desc + "</p>");
				%>




			</div>
		</div>
	</div>

	<div class="reviews" style="margin-top: 50px; margin-left: 10px;">
		Reviews</div>

	<%
		if (revset != null) {

			while (revset.next()) {

				out.print("<div class=\"reviewRow\">");

				out.print("<div style=\"width: 600px; height: 30px; float:right; position:relative;\">");

				out.print("<div style=\"height: 20px; position:absolute; bottom:0; right:5px;\" class=\"boldTxt\">"
						+ revset.getString("r_rating") + "</div>");
				out.print("</div><div style=\"clear:both;\"></div>");

				out.print("<div class=\"boldTxt\" style=\"padding: 10px;\">");
				out.print("anonymous says:");

				//out.print("</div>");

				//out.print("<div style=\"float:left; margin-top: 20px;\"><h3>");

				/* out.print(" story:"); */
				//out.print("</h3></div>");
				out.print("</div>");

				out.print("<div style=\"padding: 10px;\">");
				out.print(revset.getString("r_body"));
				out.print("</div>");

				out.print("</div>");

			}
		} else {
			out.print(error_msg);
		}
		if (conn != null)
			conn.close();
		if (pstmt != null)
			pstmt.close();
	%>

	</div>


	<%@include file="footer.jsp"%>
</body>
</html>