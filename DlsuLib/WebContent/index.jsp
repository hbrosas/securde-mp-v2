
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1">
	<title>De La Salle University - SHS Online Library</title>
	<jsp:include page="user_dependencies.jsp" />
	<link href="css/index-style.css" rel="stylesheet" type="text/css" />
</head>

<body class="the-body">
	<div class="main-container">

		<div id="home-cont" class="home-cont">
			<img src="images/logo.png" class="img-responsive" id="logo" alt="Responsive image" style="width: 150px;">
			<div id="main">
				<h1 class="header">De La Salle University - SHS Online Library</h1>
				<br>
				<button class="btn btn-small btn-success btn-block submitbtn mainbtn" id="openSignin">SIGN IN</button>
				<button class="btn btn-small btn-default btn-block submitbtn mainbtn" id="openOthers">DON'T HAVE AN ACCOUNT?</button>
			</div>
			
			<div id="login-cont">
				<div class="card card-container">
					<h2 class='login_title text-center'>
						<span class="pull-left">SIGN IN</span>
						<span class="pull-right backbtn" id="back"><< Back</span>
					</h2>
					<hr class="top-hr">
					<div class="alert alert-danger" id="error" role="alert">Login Error. Invalid Username/Password</div>
					<form class="form-signin" name="username">	
						<p class="input_title">Username/Email</p>
						<input type="text" id="inputEmail" class="login_box" onkeyup="validatespecial(this)" placeholder="user@dlsu.edu.ph" required autofocus>
						<br>
						<p class="input_title">Password</p>
						<input type="password" id="inputPassword" class="login_box" placeholder="******" required>
						<br>
						<div class="inline-form" name="password">
							<div class="form-group">
								<label class="checkbox-inline remember" for="checkRememberMe">
									<input type="checkbox" id="checkRememberMe" value="remember">
									Remember Me
								</label>
								<a class="pull-right forgot" href="#">Forgot password?</a>
							</div>
						</div>
						<button class="btn btn-small btn-success btn-block submitbtn" type="submit">SIGN IN</button>
					</form><!-- /form -->
		        </div><!-- /card-container -->
			</div>

			<div id="other-cont">
				<div class="card card-container">
					<h2 class='login_title text-center'>
						<span class="pull-right backbtn" id="back"><< Back</span>
					</h2>
					<hr class="top-hr">
					<form class="form-request-acct">
						<p class="input_title">Email Address</p>
						<input type="email" id="inputEmail" class="login_box" placeholder="user@dlsu.edu.ph" required autofocus><br>
						<button class="btn btn-small btn-success btn-block submitbtn" type="submit">REQUEST AN ACCOUNT</button>
					</form><!-- /form -->
					<hr>
					<button class="btn btn-small btn-default btn-block submitbtn">SIGN IN AS GUEST</button>
		        </div><!-- /card-container -->
			</div>

		</div> <!-- Home Container -->
	</div>
	<!-- body -->
	
	<script type="text/javascript" src="js/index.js"></script>
	<script type="text/javascript" src="js/validation.js"></script>
</body>

</html>
