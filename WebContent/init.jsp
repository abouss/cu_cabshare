<!-- This import is necessary for JDBC -->
<%@ page import="java.sql.*"%>
<%@ page import="java.awt.Point"%>
<!-- Database connection and query -->

<%

		
	Connection conn = null; //autocommit, commit(), rollback()
	String error_msg = "";
	String url = "jdbc:mysql://cs4111.cfb0w4yecpl2.us-west-2.rds.amazonaws.com:3306/cs4111";
	String userId = "ab3750";
	String password = "databases2015";
	
	try {
        Class.forName("com.mysql.jdbc.Driver");
        //new connection for each page??
        conn = DriverManager.getConnection(url, userId, password);
	} catch (SQLException e) {
        error_msg = e.getMessage();
        System.out.println(error_msg);
        //if( conn != null ) {
           // conn.close();
        //}
    } finally {
        
    }
%>