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
<%@include file="header.jsp"%>
</head>
<body>
	<div class="mainDiv">
		<%
               String name = String.valueOf(session.getAttribute("name"));
        	   String uni1 = String.valueOf(session.getAttribute("uni"));

               if (name.equals("null")) {
               	out.print("In order to see a list of your rides, please <a class='btn btn-primary' type='button' href=\"register.jsp\">Sign up</a>");
               } else {
            	
            	out.print("<div class='row' style='margin-top: 40px'><div class='col-md-8'>");
            	
               	out.print("Here are all your rides, " + name +":");
               	
               	
                PreparedStatement pstmt = null;
                StringBuilder sb;
                String sql;
                ResultSet rset = null;
                ResultSet revset = null;
                
                try {
                	sql = "SELECT * FROM rides where uni='" + uni1 + "' ORDER BY datetime ";
                	pstmt = conn.prepareStatement(sql);
                    rset = pstmt.executeQuery();
                	
                    
                    
                } catch (SQLException e) {
                    error_msg = e.getMessage();
                    System.out.println(error_msg);
                    if( conn != null ) {
                        conn.close();
                    }
                } finally {
                    
                }
                
            	if(rset != null) {
    				while(rset.next()) {			
/*     					out.print("<p>" + rset.getString("uni") + "</p>");
    					out.print("<p>" + rset.getString("c_id") + "</p>");
    					out.print("<p>" + rset.getString("a_id") + "</p>");
    					out.print("<p>" + rset.getString("line_id") + "</p>");
    					out.print("<p>" + rset.getString("t_id") + "</p>");
    					out.print("<p>" + rset.getString("datetime") + "</p>"); */
    					
    					out.print("<div class=\"reviewRow\">");

    					out.print("<div style=\"width: 600px; height: 30px; float:right; position:relative;\">");

    					out.print("<div style=\"height: 20px; position:absolute; bottom:0; right:5px;\" class=\"boldTxt\">"
    							+ rset.getString("uni") );
    					out.print("</div><div style=\"clear:both;\"></div>"+ "</div>");

    					out.print("<div class=\"boldTxt\" style=\"padding: 5px;\">");
    					out.print("<h4>" + rset.getString("datetime") + "</h4>");

    					//out.print("</div>");

    					//out.print("<div style=\"float:left; margin-top: 20px;\"><h3>");

    					/* out.print(" story:"); */
    					//out.print("</h3></div>");
    					out.print("</div>");

    					out.print("<div style=\"padding: 10px;\">");
    					out.print("<p>" + rset.getString("c_id") + "</p>");
    					out.print("<p>" + rset.getString("a_id") + "</p>");
    					out.print("<p>" + rset.getString("line_id") + "</p>");
    					out.print("<p>" + rset.getString("t_id") + "</p>");
    					out.print("</div>");
    					

    					out.print("</div>");

    				}
    				
    				
    				} else {
    				out.print(error_msg);
    				}
                   
               } 
               
               out.print("</div><div class='col-md-4'>Make sure to check out your <a href='/cu_cabshare/messages.jsp'style='color:black'>messages!</a>");
               
               
               
               
               out.print("</div></div>");
               
               
               
       	
       		
       		
               %>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>