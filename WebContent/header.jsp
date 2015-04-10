
<div
	style="position: fixed; top: 0; width: 100%; height: 100px; padding-top: 2px; background-color: #FFFFFF; z-index: 999;">
	<div style="width: 1000px; margin: 0px auto;">
		<div style="float: left">
			<a href="index.jsp"><img src="img/logo.png"
				style="margin-left: 12px;" /></a>
		</div>
	</div>
	<div style="clear: both;"></div>
	<div
		style="width: 100%; margin-top: 5px; height: 30px; background-color: #192f5f;">
		<div class="btn-group" style="float: left;">
			<!-- Single button -->
			<div class="btn-group">
				<button type="button" style="margin-left: 125px;"
					class="btn btn-warning btn-sm dropdown-toggle"
					data-toggle="dropdown" aria-expanded="false">
					The Cabs <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li><a href="/cu_cabshare/company.jsp?t_id=4001">Yellow
							Cab</a></li>
					<li><a href="/cu_cabshare/company.jsp?t_id=4002">Uber</a></li>
					<li><a href="/cu_cabshare/company.jsp?t_id=4003">Quick
							Ride Corp</a></li>
					<li><a href="/cu_cabshare/company.jsp?t_id=4004">Future
							Cab</a></li>
					<li><a href="/cu_cabshare/company.jsp?t_id=4005">Metroline</a></li>
					<li><a href="/cu_cabshare/company.jsp?t_id=4006">Harlem
							Car Service</a></li>
					<li><a href="/cu_cabshare/company.jsp?t_id=4007">Hoyt Limo</a></li>
					<li><a href="/cu_cabshare/company.jsp?t_id=4008">New Bell</a></li>

				</ul>
			</div>

			<a class="btn btn-warning btn-sm" style="margin-left:10px;" href="/cu_cabshare/messages.jsp" role="button">Messages</a>

			<a class="btn btn-warning btn-sm" style="margin-left:10px;" href="/cu_cabshare/rides.jsp" role="button">Rides</a>


		</div>

		<div style="width: 800px; height: 30px; margin: 0px auto;">


			<div class="navlinks"
				style="padding-top: 5px; float: right; width: 300px;">
				<%
               String uni = String.valueOf(session.getAttribute("name"));
               if (uni.equals("null")) {
               	out.print("<a href=\"register.jsp\">Sign In</a>");
               } else {
                out.print("Cab your heart out, <a href=\'profile.jsp\'>" + uni + ".</a> <a href=\"logout.jsp\">Or just logout?</a>");
               }  
               %>

			</div>




		</div>

	</div>
</div>