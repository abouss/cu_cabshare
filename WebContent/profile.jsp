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
                String dorm = "not working";
                String c_id = "not working";
                
                try {
                	sql = "SELECT * FROM rides where uni='" + uni1 + "' ORDER BY datetime ";
                	pstmt = conn.prepareStatement(sql);
                    rset = pstmt.executeQuery();
                    
                    
                	if(rset != null) {
        				while(rset.next()) {

        					c_id = rset.getString("c_id");
        					String a_id = rset.getString("a_id");
        					String line_id = rset.getString("line_id");
        					String t_id= rset.getString("t_id");
        					
        					ResultSet revset = null;
        	                ResultSet revvset = null;
        	                ResultSet revvvset = null;
        	                ResultSet revvvvset = null;
        					
        					
        					sql = "SELECT * FROM campus_loc where c_id='" + c_id;
                            pstmt = conn.prepareStatement(sql);
                            revset = pstmt.executeQuery();
                            
                            sql = "SELECT * FROM airports where a_id='" + a_id;
                            pstmt = conn.prepareStatement(sql);
                            revvset = pstmt.executeQuery();
                            
                            sql = "SELECT * FROM airlines where line_id='" + line_id;
                            pstmt = conn.prepareStatement(sql);
                            revvvset = pstmt.executeQuery();
                            
                            sql = "SELECT * FROM taxis where t_id='" + t_id;
                        	pstmt = conn.prepareStatement(sql);
                        	revvvvset = pstmt.executeQuery();
        				
    /*     					out.print("<p>" + rset.getString("uni") + "</p>");
        					out.print("<p>" + rset.getString("c_id") + "</p>");
        					out.print("<p>" + rset.getString("a_id") + "</p>");
        					out.print("<p>" + rset.getString("line_id") + "</p>");
        					out.print("<p>" + rset.getString("t_id") + "</p>");
        					out.print("<p>" + rset.getString("datetime") + "</p>"); */
        					
        					out.print("<div class=\"reviewRow\">");
        					out.print("<div style=\"width: 600px; height: 30px; float:right; position:relative;\">");
        					out.print("<div style=\"height: 20px; position:absolute; bottom:0; right:5px;\" class=\"boldTxt\">" + rset.getString("uni") );
        					out.print("</div><div style=\"clear:both;\"></div>"+ "</div>");
        					out.print("<div class=\"boldTxt\" style=\"padding: 5px;\">");
        					out.print("<h4>" + rset.getString("datetime") + "</h4>");

        					//out.print("</div>");

        					//out.print("<div style=\"float:left; margin-top: 20px;\"><h3>");

        					/* out.print(" story:"); */
        					//out.print("</h3></div>");
        					out.print("</div>");

        					out.print("<div style=\"padding: 10px;\">");
        					
        					if (revset != null) {
        						while (revset.next()) {
                 					out.print(revset.getString("dorm"));
        						}
        						
        					} else {
        						out.print(error_msg);
        					}
        					
        					
         					out.print("<p>" + revset.getString("dorm") + "</p>");
        					out.print("<p>" + revvset.getString("airport_name") + "</p>");
        					out.print("<p>" + revvvset.getString("line_name") + "</p>");
        					out.print("<p>" + revvvvset.getString("t_name") + "</p>"); 
        					out.print("</div>");
        					

        					out.print("</div>");

        				}
        				
        				
        				} else {
        				out.print(error_msg);
        				}
                    
                } catch (SQLException e) {
                    error_msg = e.getMessage();
                    System.out.println(error_msg);
                    if( conn != null ) {
                        conn.close();
                    }
                } finally {
                    
                }
                
                out.print(dorm);
                
                
        
                   
               } 
               
               out.print("</div><div class='col-md-4'>Make sure to check out your <a href='/cu_cabshare/messages.jsp'style='color:black'>messages!</a>");
               
               
               
               
               out.print("</div></div>");
               
               
               
       	
       		
       		
               %>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>