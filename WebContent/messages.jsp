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
        ResultSet revset2 = null;

        
        String uni1 = String.valueOf(session.getAttribute("uni"));
       
        
        int numResults = 0;
        try {
        	sql = "SELECT * FROM users where uni='" + uni1 + "'";
        	pstmt = conn.prepareStatement(sql);
            rset = pstmt.executeQuery();
        	
            sql = "SELECT * FROM messages where uni1='" + uni1 + "' ORDER BY m_datetime DESC";
            pstmt = conn.prepareStatement(sql);
            revset = pstmt.executeQuery();
       
            sql = "SELECT * FROM messages where uni2='" + uni1 + "' ORDER BY m_datetime DESC";
            pstmt = conn.prepareStatement(sql);
            revset2 = pstmt.executeQuery();
            
        } catch (SQLException e) {
            error_msg = e.getMessage();
            System.out.println(error_msg);
            if( conn != null ) {
                conn.close();
            }
        } finally {
            
        }
    %>


<%@include file="header.jsp"%>
</head>
<body>
	<div class="mainDiv">


		<div style="margin-top: 10px">
			Messages
						<%
			if(revset != null) {
				while(revset.next()) {			
					out.print("<p>" + revset.getString("m_datetime") + "</p>");
					out.print("<p>" + revset.getString("m_body") + "</p>");
					out.print("<p>" + revset.getString("uni2") + "</p>");

				}
				
				
				} else {
				out.print(error_msg);
				}

			if(revset2 != null) {
				while(revset2.next()) {			
					out.print("<p>" + revset2.getString("m_datetime") + "</p>");
					out.print("<p>" + revset2.getString("m_body") + "</p>");
					out.print("<p>" + revset2.getString("uni2") + "</p>");

				}
				
				
				} else {
				out.print(error_msg);
				}
					
				
		%>
			
			</div>



	</div>


	<%@include file="footer.jsp"%>
</body>
</html>