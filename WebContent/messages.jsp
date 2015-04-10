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
        ResultSet revset3 = null;
        
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
            revset3 = pstmt.executeQuery();
            
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


<%@include file="header.jsp"%>
</head>
<body>
	<div class="mainDiv">


		<div class="container" style="margin-top: 10px">
			<div class="title">Messages</div>
			<%
			if(revset != null) {
				while(revset.next()) {			
					out.print("<p>" + "Date: " + revset.getString("m_datetime") + "</p>");
					out.print("<p>" + "Message: " + revset.getString("m_body") + "</p>");
					out.print("<p>" + "From: " + revset.getString("uni2") + "</p>");

				}
				
				
				} else {
				out.print(error_msg);
				}
						
						if(revset3 != null) {
							while(revset3.next()) {			
								out.print("<p>" + revset3.getString("m_datetime") + "</p>");
								out.print("<p>" + revset3.getString("m_body") + "</p>");
								out.print("<p>" + revset3.getString("uni2") + "</p>");

							}
							
							
							} else {
							out.print(error_msg);
							}

					
				
		%>

		</div>



	</div>
	<div class="container">
	<div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="well well-sm">
          <form class="form-horizontal" action="" method="post">
          <fieldset>
            <legend class="text-center">Send a Message!</legend>
    
            <!-- Name input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">Send to:</label>
              <div class="col-md-9">
                <input id="UNI" name="UNI" type="text" placeholder="ab1234" class="form-control">
              </div>
            </div>
    
            <!-- Message body -->
            <div class="form-group">
              <label class="col-md-3 control-label" for="message">Your message</label>
              <div class="col-md-9">
                <textarea class="form-control" id="message" name="message" placeholder="Please enter your message here..." rows="5"></textarea>
              </div>
            </div>
    
            <!-- Form actions -->
            <div class="form-group">
              <div class="col-md-12 text-right">
                <button type="submit" class="btn btn-primary btn-lg">Submit</button>
              </div>
            </div>
          </fieldset>
          </form>
        </div>
      </div>
	</div>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>