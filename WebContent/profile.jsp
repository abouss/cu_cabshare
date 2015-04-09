<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	 <link rel="stylesheet" type="text/css" href="css/main.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	 
	<title>Add a Ride</title>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="javax.servlet.*,java.text.*"%>
	<%@include file="init.jsp"%>
 	<%@include file="header.jsp" %>
</head>
<body>
	<div class="mainDiv">
  		<%
               String name = String.valueOf(session.getAttribute("name"));
        	   String uni1 = String.valueOf(session.getAttribute("uni"));

               if (name.equals("null")) {
               	out.print("In order to see a list of your rides, please <a class='btn btn-primary' type='button' href=\"register.jsp\">Sign up</a>");
               } else {
               	out.print("Here are all your rides, " + name +":");
               	
               	
                PreparedStatement pstmt = null;
                StringBuilder sb;
                String sql;
                ResultSet rset = null;
                ResultSet revset = null;
                
                try {
                	sql = "SELECT * FROM rides where uni='" + uni1 + "'";
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
    					out.print("<p>" + rset.getString("uni") + "</p>");
    					out.print("<p>" + rset.getString("c_id") + "</p>");
    					out.print("<p>" + rset.getString("a_id") + "</p>");
    					out.print("<p>" + rset.getString("line_id") + "</p>");
    					out.print("<p>" + rset.getString("t_id") + "</p>");
    					out.print("<p>" + rset.getString("p_datetime") + "</p>");

    				}
    				
    				
    				} else {
    				out.print(error_msg);
    				}
                   
               } 
               
               
               
       	
       		
       		
               %></div>

<%@include file="footer.jsp" %>
</body>
</html>