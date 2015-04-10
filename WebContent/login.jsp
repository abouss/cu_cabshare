<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <LINK href="css/main.css" rel="stylesheet" type="text/css">
      <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
      
      <title>Columbia University Cabshare</title>
   </head>
   <%@ page import="java.sql.*"%>
   <%@ page import="javax.sql.*"%>
   <%@ page import="javax.servlet.*,java.text.*"%>
   <%@include file="init.jsp"%>
   <body>
      <%
         String email = request.getParameter("email");
         String password1 = request.getParameter("password1");
         String password2 = request.getParameter("password2");
         String usr = request.getParameter("user");
         String uni = request.getParameter("uni");
         String name = request.getParameter("name");
         
         getServletContext().getRequestDispatcher("/register.jsp").include(
         		request, response);
         PreparedStatement ps = null;
         ResultSet rs = null;
         
         //password and username not null
         if (!(email.equals(null) || email.equals(""))
         		&& !(password1.equals(null) || password1.equals(""))) {
         	try {
         		String sql;
         
         		if (usr.equals("old")) {
         			/* ------------ login old user --------------- */
         
         			sql = "select * from users where email='" + email
         					+ "' AND password='" + password1 + "'";
         			ps = conn.prepareStatement(sql);
         			rs = ps.executeQuery();
         
         			if (rs != null && rs.next()) {
         				session.setAttribute("name", rs.getString("name"));
         				session.setAttribute("uni", rs.getString("uni"));
         				response.sendRedirect("index.jsp");
         			} else {
         				out.print("<script type='text/javascript'>alert('Invalid Login')</script>");
         			}
         
         		} else {
         			//passwords match
         			if (password1.equals(password2)) {
         				//get random username --TO DO: RANDOMLY GENERATE USERNAMES
         				String username = name;
         
         				sql = "insert into users (uni, name, email, password)";
         				sql += "values ('" + uni + "','" + username
         						+ "','" + email + "','" + password1 + "')";
         				ps = conn.prepareStatement(sql);
         				int rows = ps.executeUpdate();
         
         				//set the u_id in the setAttributes space
         				String u_id = "0";
         
         				try {
         					//select the u_id that was just inserted into the users table
         					String sql2 = "SELECT * from users where email='"
         							+ email + "'";
         					ps = null;
         					ps = conn.prepareStatement(sql2);
         
         					ResultSet set = ps.executeQuery();
         
         					while (set.next()) {
         						u_id = set.getString("name");
         					}
         
         					if (u_id != "0") {
         						session.setAttribute("name", u_id);
                 				session.setAttribute("uni", uni);

         					} else {
         						System.out.println("uni of 0... error");
         					}
         
         				} catch (SQLException e) {
         					error_msg = e.getMessage();
         					System.out.println(error_msg);
         				}
         
         				//upon successful registration redirects to index/home page
         				response.sendRedirect("index.jsp");
         			} else {
         %>
      <center>
         <p style="color: red">Your passwords don't match.</p>
      </center>
      <%
         }
         		}
         
         	} catch (SQLException sqe) {
         		out.print(sqe);
         %>
      <center>
         <p style="color: red">Your account is already registered. Please
            login.
         </p>
      </center>
      <%
         }
         } else {
         %>
      <center>
         <p style="color: red">Sorry, your registration is not complete!</p>
      </center>
      <%
         }
         %>
      <%@include file="footer.jsp"%>
   </body>
</html>