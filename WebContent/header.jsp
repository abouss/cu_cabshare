<div style="position:fixed; top: 0; width:100%; height:100px; padding-top: 2px; background-color:#FFFFFF; z-index:999;">
   <div style="width: 1000px; margin: 0px auto;">
      <div style="float:left">
         <a href="index.jsp"><img src="img/logo.png" style="margin-left:12px;" /></a>
      </div>
   </div>
   <div style="clear:both;"></div>
   <div style="width:100%; margin-top: 5px; height: 30px; background-color:#192f5f;">
      <div style="padding-top:5px; width: 800px; height: 30px; margin: 0px auto;">
         <div class="navlinks" style="float:right; width:300px;">
            <%
               String uni = String.valueOf(session.getAttribute("name"));
               if (uni.equals("null")) {
               	out.print("<a href=\"register.jsp\">Sign Up</a>");
               } else {
                out.print("Cab your heart out, <a href=\'profile.jsp\'>" + uni + ".</a> <a href=\"logout.jsp\">Or logout?</a>");
               }  
               %>
         </div>
         
         
      </div>
   </div>
</div>