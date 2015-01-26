<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/semantic.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>

<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/semantic.min.js"></script>
<script src="js/main.js"></script>


<title>Login</title>
</head>
<body>

	<jsp:include page="header_login.jsp"></jsp:include>

	<form action="login" method="post">
		<div class="ui three column grid">

			<div class="ui column"></div>


			<div class="ui column">

				<div id="login_form" class="ui small form segment">

					<div class="ui error message">
						<p>Please enter valid Username and Password</p>
					</div>

					<div id="usernameField" class="field">
						<label>Username</label>
						<div class="ui left labeled icon input">
							<input name="username" placeholder="ex@gmail.com" type="text">
							<i class="user icon"></i>
							<div class="ui corner label">
								<i class="icon asterisk"></i>
							</div>
						</div>
					</div>
					<div id="passwordField" class="field">
						<label>Password</label>
						<div class="ui left labeled icon input">
							<input name="password" type="password"> <i
								class="lock icon"></i>
							<div class="ui corner label">
								<i class="icon asterisk"></i>
							</div>
						</div>
					</div>

					<div class="ui submitForm small blue submit button"
						onclick="switchbutton(this)">Login</div>



					<a href="register.jsp"
						style="TEXT-DECORATION: none; border-bottom: 0;">Register</a>



				</div>
			</div>
		</div>
	</form>
</body>
</html>