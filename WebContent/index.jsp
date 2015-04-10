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
	<link rel="stylesheet" href="/path/to/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" media="screen"
     href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">

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

<<<<<<< HEAD
    <div class="well">
  <div id="datetimepicker2" class="input-append">
    <input data-format="MM/dd/yyyy HH:mm:ss PP" type="text"></input>
    <span class="add-on">
      <i data-time-icon="icon-time" data-date-icon="icon-calendar">
      </i>
    </span>
  </div>
</div>
<script type="text/javascript"
     src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.min.js">
    </script> 
    <script type="text/javascript"
     src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js">
    </script>
    <script type="text/javascript"
     src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.min.js">
    </script>
    <script type="text/javascript"
     src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.pt-BR.js">
    </script>
<script type="text/javascript">
  $(function() {
    $('#datetimepicker2').datetimepicker({
      language: 'en',
      pick12HourFormat: true
    });
  });
</script>
=======
											<div class="form-group">
												<div class='input-group date' id='datetimepicker3'>
													<input type='text' class="form-control" /> <span
														class="input-group-addon"> <span
														class="glyphicon glyphicon-time"></span>
													</span>
												</div>
											</div>
										<script type="text/javascript">
            $(function () {
                $('#datetimepicker3').datetimepicker({
                    format: 'LT'
                });
            });
        </script>
>>>>>>> origin/master
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
									<option value="1000">Columbia - Carman</option>
									<option value="1001">Columbia - Schapiro</option>
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
									<option value="1014">Barnard - Hewitt</option>

									<option value="3001">LaGuardia - A</option>
									<option value="3002">LaGuardia - B</option>
									<option value="3003">LaGuardia - C</option>
									<option value="3004">LaGuardia - D</option>
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