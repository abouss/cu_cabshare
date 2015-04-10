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
        	
         /*    sql = "SELECT * FROM messages where uni1='" + uni1 + "' ORDER BY m_datetime DESC";
            pstmt = conn.prepareStatement(sql);
            revset = pstmt.executeQuery(); */
            
            sql = "SELECT * FROM messages where uni2='" + uni1 + "' ORDER BY m_datetime DESC";
            pstmt = conn.prepareStatement(sql);
            revset3 = pstmt.executeQuery();
  
  
            
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

						if(revset3 != null) {
							while(revset3.next()) {			

								
								out.print("<div class=\"reviewRow\">");

								out.print("<div style=\"width: 600px; height: 30px; float:right; position:relative;\">");

								out.print("<div style=\"height: 20px; position:absolute; bottom:0; right:5px;\" class=\"boldTxt\">"
										+ revset3.getString("m_datetime") );
								out.print("</div><div style=\"clear:both;\"></div>"+ "</div>");

								out.print("<div class=\"boldTxt\" style=\"padding: 10px;\">");
								out.print("<h4> Sent by: " + revset3.getString("uni1") + "</h4>");


								//out.print("</div>");

								//out.print("<div style=\"float:left; margin-top: 20px;\"><h3>");

								/* out.print(" story:"); */
								//out.print("</h3></div>");
								out.print("</div>");

								out.print("<div style=\"padding: 10px;\">");
								out.print(revset3.getString("m_body"));
								out.print("</div>");

								out.print("</div>");

							}
							
							} else {
							out.print(error_msg);
							}
		
				
		%>

		</div>
		<hr>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="well well-sm">
					<form class="form-horizontal" action="messagesend.jsp"
						method="post">
						<fieldset>
							<legend class="text-center">Send a Message!</legend>

							<!-- Name input-->
							<div class="form-group">
								<label class="col-md-3 control-label" for="name">Send
									to:</label>
								<div class="col-md-9">
									<input id="UNI" name="UNI" type="text" placeholder="ab1234"
										class="form-control">
								</div>
							</div>

							<!-- Message body -->
							<div class="form-group">
								<label class="col-md-3 control-label" for="message">Your
									message</label>
								<div class="col-md-9">
									<textarea class="form-control" id="message" name="message"
										placeholder="Please enter your message here..." rows="5"></textarea>
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