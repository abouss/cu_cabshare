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

<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">


<link
	href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" media="screen"
	href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">

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
               	out.print("In order to see a list of your rides, please <a class='btn btn-warning' type='button' href=\"register.jsp\">Sign up</a>");
               } else {
            	
            	out.print("<div class='row' style='margin-top: 40px; padding-bottom: 2cm;'><div class='col-md-8'>");
            	
            	out.print("<div class='title'>Hi, "+ name + "! </div>");
            	
               	out.print("<h5>Here are all your rides, " + name +":</h5>");
               	
               	
                PreparedStatement pstmt = null;
                StringBuilder sb;
                String sql;
                ResultSet rset = null;

                ResultSet revset = null;
                ResultSet revset2 = null;
                ResultSet revset3 = null;
                ResultSet revset4 = null;
                                
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

    					sql = "SELECT * FROM campus_loc where c_id='" + rset.getString("c_id") + "'";
                    	pstmt = conn.prepareStatement(sql);
                        revset = pstmt.executeQuery();
                       
                        
                        if(revset != null) {
            				while(revset.next()) {
            					out.print("<p>Between: ");
            					out.print(revset.getString(2));
            					
            				}

                        }else {
            				out.print(error_msg);
        				}

                    	sql = "SELECT * FROM airports where a_id='" + rset.getString("a_id") + "'";
                    	pstmt = conn.prepareStatement(sql);
                        revset2 = pstmt.executeQuery();
                       
                        if(revset2 != null) {
            				while(revset2.next()) {
            					out.print(" and ");
            					out.print(revset2.getString(2) + "</p>");
            					
            				}

                        }else {
            				out.print(error_msg);
        				}
                        
                        sql = "SELECT * FROM airlines where line_id='" + rset.getString("line_id") + "'";
                    	pstmt = conn.prepareStatement(sql);
                        revset3 = pstmt.executeQuery();
                        
                        if(revset3 != null) {
            				while(revset3.next()) {
            					out.print("You indicated your airline is:  ");

            					out.print(revset3.getString(2) + ", ");
            					out.print(revset3.getString(3) + "</p>");

            					
            				}

                        }else {
            				out.print(error_msg);
        				}
                        
                        sql = "SELECT * FROM taxis where t_id='" + rset.getString("t_id") + "'";
                    	pstmt = conn.prepareStatement(sql);
                        revset4 = pstmt.executeQuery();
                        
                        if(revset4 != null) {
            				while(revset4.next()) {
            					out.print("The cab company you'll be using is:  ");
								out.print("<a class='btn btn-warning' type='button' href=\"company.jsp?t_id=" + revset4.getString(1) + "\">" + revset4.getString(2) + "</a></p>");
/*             					out.print(revset4.getString(2) + "</p>");
 */
            					
            				}

                        }else {
            				out.print(error_msg);
        				}
                        
/*     					out.print("<p>" + rset.getString("c_id") + "</p>");
     					out.print("<p>" + rset.getString("a_id") + "</p>"); 
    					out.print("<p>" + rset.getString("line_id") + "</p>");*/
/*     					out.print("<p>" + rset.getString("t_id") + "</p>");
 */    					out.print("</div>");
    					

    					out.print("</div>");

    				}
    				
    				
    				} else {
    				out.print(error_msg);
    				}

               } 
               
               out.print("</div><div class='col-md-4'>Make sure to check out your <a href='/cu_cabshare/messages.jsp'style='color:black'>messages!</a>");
               
               
               
               
               out.print("</div></div>");
               
               
               
       	
       		
       		
               %>
		<div style="padding-bottom: 100px;"></div>

	</div>

	<%@include file="footer.jsp"%>
</body>
</html>