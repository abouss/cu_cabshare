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

<title>CU Cabshare</title>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.servlet.*,java.text.*"%>
<%@include file="init.jsp"%>
<%@include file="header.jsp"%>
</head>
<body>

	<div class="container" style="margin-top: 200px">

		<div id="input_form">
			<div style="margin: 0px auto;">
				<div>

					<form name="advanced_search" action="add.jsp" method="get">

						<div class="row">

							<div class="col-md-3">
								<div class="title" style="height: 32px;">Date:</div>

								somehow put date in here
							</div>

							<div class="col-md-3">
								<div class="title" style="height: 32px;">Starting
									Location:</div>

							<!-- 	<div class="radio">
									<label> <input type="radio" name="optionsRadios"
										id="optionsRadios1" value="1000" checked> Columbia - Carmen
									</label>
								</div> -->

								<select id="stst" name="loc1">
									<option value="1000">Columbia - Carmen</option>
									<option value="1001">Columbia - Shapiro</option>
									<option value="1002">Columbia - Woodbridge</option>
									<option value="1003">Columbia - Wien</option>
									<option value="1004">Columbia - EC</option>
									<option value="1008">Columbia - Watt</option>
									<option value="1009">Columbia - McBain</option>
									<option value="1010">Columbia - Wallach</option>
									<option value="1011">Columbia - Hartley</option>
									<option value="1005">Barnard - 600</option>
									<option value="1006">Barnard - 616</option>
									<option value="1007">Barnard - 620</option>
									<option value="1012">Barnard - Sulzberger</option>
									<option value="1013">Barnard - Reid</option>
									<option value="1014">Barnard - Hewit</option>

									<option value="3001">Laguardia - A</option>
									<option value="3002">Laguardia - B</option>
									<option value="3003">Laguardia - C</option>
									<option value="3004">Laguardia - D</option>
									<option value="3005">JFK - 1</option>
									<option value="3006">JFK - 2</option>
									<option value="3007">JFK - 4</option>
									<option value="3008">JFK - 5</option>
									<option value="3009">JFK - 7</option>
									<option value="3010">JFK - 8</option>
									<option value="3011">Newark - A</option>
									<option value="3012">Newark - B</option>
									<option value="3013">Newark - C</option>
								</select>
							</div>
							<div class="col-md-3">
								<div class="title" style="height: 32px;">End Location:</div>
								<select id="stst2" name="loc2">
									<option value="1000">Columbia - Carmen</option>
									<option value="1001">Columbia - Shapiro</option>
									<option value="1002">Columbia - Woodbridge</option>
									<option value="1003">Columbia - Wien</option>
									<option value="1004">Columbia - EC</option>
									<option value="1008">Columbia - Watt</option>
									<option value="1009">Columbia - McBain</option>
									<option value="1010">Columbia - Wallach</option>
									<option value="1011">Columbia - Hartley</option>
									<option value="1005">Barnard - 600</option>
									<option value="1006">Barnard - 616</option>
									<option value="1007">Barnard - 620</option>
									<option value="1012">Barnard - Sulzberger</option>
									<option value="1013">Barnard - Reid</option>
									<option value="1014">Barnard - Hewit</option>

									<option value="3001">Laguardia - A</option>
									<option value="3002">Laguardia - B</option>
									<option value="3003">Laguardia - C</option>
									<option value="3004">Laguardia - D</option>
									<option value="3005">JFK - 1</option>
									<option value="3006">JFK - 2</option>
									<option value="3007">JFK - 4</option>
									<option value="3008">JFK - 5</option>
									<option value="3009">JFK - 7</option>
									<option value="3010">JFK - 8</option>
									<option value="3011">Newark - A</option>
									<option value="3012">Newark - B</option>
									<option value="3013">Newark - C</option>
								</select>
							</div>




							<div class="col-md-3">
								<div class="title" style="height: 32px;">Cab Company:</div>

								<select id="stst3" name="t_id">
									<option value="4001">Yellow Cab</option>
									<option value="4002">Uber</option>
									<option value="4003">Quick Ride Corp</option>
									<option value="4004">Future Cab</option>
									<option value="4005">Metroline</option>
									<option value="4006">Harlem Car Service</option>
									<option value="4007">Hoyt Limo</option>
									<option value="4008">New Bell</option>
								</select>

								<div style="float: right;">
									<input type="submit" value="Go">
								</div>
							</div>
						</div>
					</form>

				</div>
			</div>

		</div>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>