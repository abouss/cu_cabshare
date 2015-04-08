<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <LINK href="css/main.css" rel="stylesheet" type="text/css">
      <title>Columbia University Cabshare</title>
   </head>
   <%@ page import="java.sql.*"%>
   <%@ page import="javax.sql.*"%>
   <%@ page import="javax.servlet.*,java.text.*"%>
   <%@include file="init.jsp"%>
   <body>
   
   <div style="float:left; width:400px; height:100%;">
	<form action="reg1.jsp" method="post">
     <div style="margin-top:20px;">

         <div style="width:160px; height: 30px; padding-right: 10px; float:left; text-align:right;">
             Email:
         </div>
         <div style="width:180px; height: 30px; float:left;">
             <input style="width: 150px;" type="text" name="email" />
         </div>
         
         <div style="width:160px; height: 30px; padding-right: 10px; float:left; text-align:right;">
             Password:
         </div>
         <div style="width:180px; height: 30px; float:left;">
             <input style="width: 150px;" type="password" name="password1" />
         </div>
         
         
         <div style="width: 50px; margin-left:310px;">
         <input type="hidden" name="user" value="old" />
         <input type="submit" value="login" />
         </div>
     </div>
     <br>
      
     </form>
     
</div>
      <% 
      String email = request.getParameter("email");
      String password1 = request.getParameter("password1");
      String password2 = request.getParameter("password2");
      String usr = request.getParameter("user");
      %>
        
<%@include file="footer.jsp" %>
   </body>
</html>