<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1">
	<title>Forgot | De La Salle University - SHS Online Library</title>

	<!-- Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Lato" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet">

	<!-- Stylesheets -->
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="css/index-style.css" rel="stylesheet" type="text/css" />
</head>

<body class="the-body">
	<div class="main-container">

		<div id="home-cont" class="home-cont">
				
				<div class="card card-container">
					<div id="inputuser">
						<h2 class='login_title text-center'>
							<span class="pull-left">Forgot Password</span>	
						</h2>
						<hr class="top-hr">
						<form class="form-signin">
							<p class="input_title">Email</p>
							<input type="email" id="inputEmail" class="forgotEmail login_box" placeholder="user@dlsu.edu.ph" required autofocus>
							<br>
							<button class="btn btn-small btn-success btn-block submitbtn" id="changenow" type="button">SUBMIT</button>
						</form><!-- /form -->
					</div>

					<div id="answersq">
						<h2 class='login_title text-center'>
							<span class="pull-left">Forgot Password</span>
							<span class="pull-right backbtn" id="back1"><< Back</span>	
						</h2>
						<hr class="top-hr">
						<form class="form-signin">
							<span class="input_title">Security Question</span>
							<br>
							<label class="input_title" id="securityQuestion"> Question </label>
							<br><br>
							<p class="input_title">Security Answer</p>
							<input type="text" id="secanswer" class="sqans login_box" placeholder="Security Answer" required autofocus>
							<br>
							<button class="btn btn-small btn-success btn-block submitbtn" id="submitanswer" type="button">SUBMIT</button>							
						</form><!-- /form -->
					</div>

					<div id="changepw">
						<h2 class='login_title text-center'>
							<span class="pull-left">Forgot Password</span>
							<span class="pull-right backbtn" id="back2"><< Back</span>	
						</h2>
						<hr class="top-hr">
						<form class="form-forgot">
							<p class="input_title">Change Password</p>
							<input type="password" id="newpw" class="login_box" placeholder="*********" required autofocus>
							<br>
							<p class="input_title">Confirm Password</p>
							<input type="password" id="confirmpw" class="login_box" placeholder="*********" required>
							<br>
							<button class="btn btn-small btn-success btn-block submitbtn" id="submitpassword" type="button">Submit</button>	
						</form><!-- /form -->
					</div>

					<div id="pwchange">
						<h2 class='login_title text-center'>
							<span class="pull-left">Forgot Password</span>
							<span class="pull-right backbtn" id="back3"><< Back</span>	
						</h2>
						<hr class="top-hr">
						<span class="input_title" action="index.jsp">Password has been successfully changed!</p></span>
						<a class="btn btn-small btn-success btn-block submitbtn" id="confirm" href="index.jsp" type="button">
						CONTINUE</a>
					</div>
		        </div><!-- /card-container -->
			</div>


		</div> <!-- Home Container -->
	</div>	
	<!-- body -->

	<!-- Scripts -->
	<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/typed.min.js"></script>

	<!-- Main Script -->
	<script type="text/javascript">
		var otherdiv = $("#other-cont"), error = $("#error");
		var user = $("#inputuser"), sqanswer = $("#answersq"), changepw = $("#changepw"), pwchange = $("#pwchange");

		$(document).ready(function() {
			sqanswer.hide();
			changepw.hide();
			pwchange.hide();
			otherdiv.hide();
			error.hide();

			$(document).on("click", "#back1", function() {
				user.show(500);
				sqanswer.hide();
			});

			$(document).on("click", "#back2", function() {
				changepw.hide();
				sqanswer.show(500);
			});

			$(document).on("click", "#back3", function() {
				pwchange.hide();
				changepw.show(500);
			});			

			/*$(document).on("click", "#changenow", function(){
				user.hide();
				sqanswer.show(500);
			});*/

			/* $(document).on("click", "#submit", function(){
				sqanswer.hide();
				changepw.show(500);
			}); */

			/*$(document).on("click", "#submitpassword", function(){
				changepw.hide();
				pwchange.show(500);
			});*/		
			
		});

		$(document).on("click", "#changenow", function(){
		var email = $(".forgotEmail").val();

		var data = {email:email, type:"1"}
		$.ajax({
			url: "ForgotServlet",
			type: "POST",
			data: data,
			success: function(status) {
				console.log(status);
				if(status == "error") {
					error.show();
				} else {
					error.hide();
					$("#securityQuestion").text(status);
					user.hide();
					sqanswer.show(500);
				}
			}
		});
	});
		
		$(document).on("click", "#submitanswer", function(){
			var sqans = $("#secanswer").val();
			var email = $(".forgotEmail").val();

			var data = {sqans:sqans, type:"2", email:email}
			$.ajax({
				url: "ForgotServlet",
				type: "POST",
				data: data,
				success: function(status) {
					console.log(status);
					if(status == "error") {
						error.show();
					} else {
						console.log("pass");
						error.hide();
						user.hide();
						sqanswer.hide();
						changepw.show(500);
					}
				}
			});
			
			$(document).on("click", "#submitpassword", function(){
				var sqans = $("#secanswer").val();
				var email = $(".forgotEmail").val();
				var newpw = $("#newpw").val();
				var confirmpw = $("#confirmpw").val();

				var data = {newpw:newpw, confirmpw:confirmpw, sqans:sqans, type:"3", email:email,}
				$.ajax({
					url: "ForgotServlet",
					type: "POST",
					data: data,
					success: function(status) {
						console.log(status);
						if(status == "error") {
							error.show();
						} else {
							console.log("pass");
							error.hide();
							user.hide();
							sqanswer.hide();
							changepw.hide();
							pwchange.show(500);
						}
					}
				});
			});
		});
	</script>

</body>

</html>
