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
	<link href="css/pw.css" rel="stylesheet" type="text/css" />
</head>

<body class="the-body">
	<div class="main-container">

		<div id="home-cont" class="home-cont">
				
				<div class="card card-container">
					<div id="changepw">
						<h2 class='login_title text-center'>
							<span class="pull-left">Change Password</span>
						</h2>
						<hr class="top-hr">
						<form class="form-forgot">
							<p class="input_title">Current Password</p>
							<input type="password" name="currentpw" size=15 maxlength="100" id="newpw" class="login_box" placeholder="*********" required autofocus>
							<p class="input_title">Change Password</p>
							<input type="password" name="newpw" size=15 maxlength="100" onkeyup="return passwordChanged();" id="newpw" class="login_box" placeholder="*********" required autofocus>
							<span color="black" id="strength">Type Password</span>
							<br>
							<div class="row">	
							<p class="input_title">Confirm Password</p>
							<input type="password" id="confirmpw" class="login_box" placeholder="*********" required>
							<br>
							<div class="alert alert-danger" id="passerror" role="alert">Password does not match!</div>
							<div class="alert alert-danger" id="currenterror" role="alert"> Current Password does not match! </div>
							<button class="btn btn-small btn-success btn-block submitbtn" id="submitpassword" type="button">Submit</button>	
														</div>
						</form><!-- /form -->
					</div>

					<div id="pwchange">
						<h2 class='login_title text-center'>
							<span class="pull-left">Change Password</span>
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
	<script type="text/javascript" src="js/pw.js"></script>
	<script type="text/javascript" src="js/validation.js"></script>	

	<!-- Main Script -->
	<script type="text/javascript">
	var passerror = $("#passerror"), currenterror = $("#currenterror");
		$(document).ready(function() {
			passerror.hide();
			currenterror.hide();
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
			
			$(document).on("click", "#submitpassword", function(){
				var currentpw = $("#currentpw").val();
				var newpw = $("#newpw").val();
				var confirmpw = $("#confirmpw").val();

				var data = {newpw:newpw, confirmpw:confirmpw, type:"3", currentpw:currentpw}
				$.ajax({
					url: "ChangePassServlet",
					type: "POST",
					data: data,
					success: function(status) {
						console.log(status);
						if(status == "error") {
							error.show();
							passerror.show(500);
						} else {
							console.log("pass");
							pwchange.show(500);
						}
					}
				});
			});
	</script>
	
		<script language="javascript">
		function passwordChanged() {
			var strength = document.getElementById("strength");
			var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
			var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
			var enoughRegex = new RegExp("(?=.{6,}).*", "g");
			var pwd = document.getElementById("newpw");
			console.log(pwd);
			if (pwd.value.length==0) {
			strength.innerHTML = '<span style="color:black">Type Password</span>';
			} 
			else if (false == enoughRegex.test(pwd.value)) {
			strength.innerHTML = '<span style="color:black">More Characters</span>';
			}
			else if (strongRegex.test(pwd.value)) {
			strength.innerHTML ='<span style="color:green">Strong!</span>';
			} 
			else if (mediumRegex.test(pwd.value)) {
			strength.innerHTML = '<span style="color:orange">Medium!</span>';
			} 
			else {
			strength.innerHTML = '<span style="color:red">Weak!</span>';
			}
		}
	</script>
</body>

</html>
