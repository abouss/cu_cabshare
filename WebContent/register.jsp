<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	
	<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">


<link
	href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" media="screen"
	href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">

<title>Registration</title>
<script src='https://www.google.com/recaptcha/api.js'></script>
<%@include file="header.jsp"%>
</head>
<body>

	<div class="mainDiv">

		<br>
		<div style="float: left; width: 400px; height: 100%;">
			<form action="login.jsp" method="post">
				<div style="margin-top: 20px;">

					<div
						style="width: 160px; height: 30px; padding-right: 10px; float: left; text-align: right;">
						Email:</div>
					<div style="width: 180px; height: 30px; float: left;">
						<input style="width: 150px;" type="text" name="email" />
					</div>

					<div
						style="width: 160px; height: 30px; padding-right: 10px; float: left; text-align: right;">
						Password:</div>
					<div style="width: 180px; height: 30px; float: left;">
						<input style="width: 150px;" type="password" name="password1" />
					</div>


					<div style="width: 50px; margin-left: 310px;">
						<input type="hidden" name="user" value="old" /> <input
							type="submit" value="login" />
					</div>
				</div>
				<br>

			</form>

		</div>

		<div style="float: right; width: 400px; height: 100%;">
			<form action="login.jsp" method="post">
				<div style="margin-top: 20px;">
					<div
						style="width: 160px; height: 30px; padding-right: 10px; float: left; text-align: right;">
						Uni:</div>
					<div style="width: 180px; height: 30px; float: left;">
						<input style="width: 150px;" type="text" name="uni" />
					</div>
					
					<div
						style="width: 160px; height: 30px; padding-right: 10px; float: left; text-align: right;">
						Name:</div>
					<div style="width: 180px; height: 30px; float: left;">
						<input style="width: 150px;" type="text" name="name" />
					</div>
					
					<div
						style="width: 160px; height: 30px; padding-right: 10px; float: left; text-align: right;">
						Email:</div>
					<div style="width: 180px; height: 30px; float: left;">
						<input style="width: 150px;" type="text" name="email" />
					</div>

					<div
						style="width: 160px; height: 30px; padding-right: 10px; float: left; text-align: right;">
						New User Password:</div>
					<div style="width: 180px; height: 30px; float: left;">
						<input style="width: 150px;" type="password" name="password1" />
					</div>

					<div
						style="width: 160px; height: 30px; padding-right: 10px; float: left; text-align: right;">
						Confirm Your Password:</div>
					<div style="width: 180px; height: 30px; float: left;">
						<input style="width: 150px;" type="password" name="password2" />
					</div>



					<div style="width: 50px; margin-left: 310px;">
						<input type="hidden" name="user" value="new" /> <input
							type="submit" value="register" />
					</div>

					<div style="padding-top: 20px; height: 100px; width: 400px;">

					</div>
				</div>
				<br>
				<center>
					<div class="g-recaptcha"
						data-sitekey="6LcT7v4SAAAAAO5WchV_q_WyrV-asheOD3aDhixx"></div>
				</center>
			</form>
		</div>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>