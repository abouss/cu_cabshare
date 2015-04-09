<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	 <link rel="stylesheet" type="text/css" href="css/main.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	 
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
        ResultSet aliasSet = null;
        int numAlias = 0;
        
        String t_id = request.getParameter("t_id");
       
        
        int numResults = 0;
        try {
        	sql = "SELECT * FROM taxis where t_id='" + t_id + "'";
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
    %>
 	<%@include file="header.jsp" %>
</head>
<body>
	
	
	<div class="container"><div class="row" style="margin-top: 130px">
  		<div class="col-md-4">PICTURE</div>
  		
  		<div class="col-md-8"><div> <H2>Tables</H2>
	<TABLE>
		<tr>
			<td>TABLE</td>
		</tr>
		<tr>
			<td><b>----------</b></td>
		</tr>
		<%
			if(rset != null) {
				while(rset.next()) {
				out.print("<tr>");
				out.print("<td>" + rset.getString(1) + "</td>");
				out.print("</tr>");
				}
				} else {
				out.print(error_msg);
				}
				if( conn != null ) {
				conn.close();
				}
		%>
	</TABLE>
	</div> </div>
	</div></div>
	

<%@include file="footer.jsp" %>
</body>
</html>