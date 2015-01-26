<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="login.user.User"%>
<!DOCTYPE html>

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="chosen/chosen.min.css">

<script src="js/jquery-1.11.1.min.js"></script>
<script src="chosen/chosen.jquery.min.js"></script>
<script src="js/semantic.min.js"></script>
<script src="js/main.js"></script>

</head>

<body>

	<div id="wrapper">
		<div id="header">

			<div class="ui tiered menu">
				<div class="menu">

					<a id="mpgicon" class="item"> <img src="./images/mpgicon.png" height="31"></a>

					<div class="right menu">
						<div class="ui dropdown item">

							<jsp:useBean id="user" class="login.user.User" scope="request">
							</jsp:useBean>
							<%=user.getFirstName()%>

							<i class="icon dropdown"></i>
							<div class="menu">
								<a class="item"><i class="user icon"></i> My Account</a> <a
									class="item"><i class="payment icon"></i> Billing</a> <a
									href="LogoutServlet" class="item"><i class="sign out icon"></i>
									Logout</a>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div id="sidemenu">

			<div id="menu"
				class="ui small orange secondary pointing vertical menu">
				<a href="forecast_panel.jsp" class="item">
					Forecast Panel
				</a> <a href="model_data.jsp" class="item">
					Model Data
				</a>
			</div>

		</div>
	</div>





</body>
</html>