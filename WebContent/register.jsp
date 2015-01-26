<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/semantic.min.js"></script>
<script src="js/main.js"></script>
<script src="js/formValidation.js"></script>

<title>Register</title>


</head>
<body>
	<jsp:include page="header_login.jsp"></jsp:include>


	<div class="ui three column grid">
		<div class="ui column"></div>
		<div class="ui column">
			<div id="register_form" class="ui form">

				<h4 class="ui center aligned gray black block header">Register</h4>

				<div class="ui small form segment">



					<div class="two fields">
						<div class="field">
							<label>First Name</label> <input name="first-name" type="text" />
						</div>

						<div class="field">
							<label>Last Name</label> <input name="last-name" type="text">
						</div>
					</div>

					<div class="field">
						<label>Username</label> <input name="username"
							placeholder="ex@gmail.com" type="text">
					</div>

					<div class="field">
						<label>Password</label> <input name="password" type="password">
					</div>

					<div class="field">
						<label>Access Key</label> <input id="access-key" type="text">
					</div>

					<div class="inline field">
						<div class="ui checkbox">
							<input name="terms" type="checkbox"> <label>I
								agree to the Terms and Conditions</label>
						</div>
					</div>

					<div class="ui submitForm small blue submit button" onclick="loader()">Register</div>


					<a href="login.jsp"
						style="TEXT-DECORATION: none; border-bottom: 0;">Back to login</a>

				</div>
			</div>
		</div>
	</div>
</body>
</html>