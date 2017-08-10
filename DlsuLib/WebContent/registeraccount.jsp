<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1">
	<title>Get Started | De La Salle University - SHS Online Library</title>

	<!-- Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Lato" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet">

	<!-- Stylesheets -->
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="css/registeraccount.css" rel="stylesheet" type="text/css" />
</head>

<body class="the-body">
	<div class="main-container">

		<div id="home-cont" class="home-cont">
			<div id="login-cont">
				<div class="card card-container">
					<h2 class='login_title text-center'>
						<span class="pull-left">GET STARTED</span>
					</h2>
					<hr class="top-hr">
					<div class="alert alert-info" id="info" role="alert">Your account is still temporary. Just wait for the administrator to confirm your account. But please fill-up the following details to help him know you.</div>
					<div class="alert alert-danger" id="error" role="alert">Please fill-up all the details</div>
					<form class="form-signin" action="RegisterServlet" method="POST">
						<input type="hidden" value="${email}" name="email">
						<input type="hidden" value="${tempPw}" name="password">
						<div class="row">
							<div class="col-md-6">
								<p class="input_title">Username</p>
								<input type="text" id="inputUser" name="username" class="login_box" placeholder="user1234" required autofocus>
							</div>
							<div class="col-md-6">
								<p class="input_title">Temporary Password</p>
								<input type="text" id="inputPassword" value="${tempPw}" name="tempPassword" class="login_box" placeholder="******" disabled="disabled">
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-4">
								<p class="input_title">First Name</p>
								<input type="text" id="inputFirstName" name="firstName" class="login_box" placeholder="John" required>
							</div>
							<div class="col-md-4">
								<p class="input_title">Middle Name</p>
								<input type="text" id="inputMiddleName" name="middleName" class="login_box" placeholder="Middle" required>
							</div>
							<div class="col-md-4">
								<p class="input_title">Last Name</p>
								<input type="text" id="inputLastName" name="lastName" class="login_box" placeholder="Doe" required>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-4">
								<p class="input_title">ID Number</p>
								<input type="text" id="inputIDnumber" name="idNumber" class="login_box" placeholder="ID Number" required>
							</div>
							<div class="col-md-8">
								<p class="input_title">Birthday</p>
								<div class="col-md-4">
									<select type="text" class="login_box" id="inputBirthdate" name="bDate" required>
										<option selected disabled="true">Day</option>
										<option value="1">1</option> <option value="2">2</option>
										<option value="3">3</option> <option value="4">4</option> 
										<option value="5">5</option> <option value="6">6</option>
										<option value="7">7</option> <option value="8">8</option> 
										<option value="9">9</option> <option value="10">10</option> 
										<option value="10">10</option> <option value="11">11</option>
										<option value="12">12</option> <option value="12">12</option>
										<option value="13">13</option> <option value="14">14</option>
										<option value="15">15</option> <option value="16">16</option>
										<option value="17">17</option> <option value="18">18</option>
										<option value="19">19</option> <option value="20">20</option>
										<option value="21">21</option> <option value="22">22</option>
										<option value="23">23</option> <option value="24">24</option>
										<option value="25">25</option> <option value="26">26</option>
										<option value="27">27</option> <option value="28">28</option>
										<option value="29">29</option> <option value="30">30</option>
										<option value="31">31</option>
									</select>
								</div>
								<div class="col-md-4">
									<select type="text" class="login_box" id="inputBirthMonth" name="bMonth" required>
										<option selected disabled="true">Month</option>
										<option value="1">January</option>
										<option value="2">February</option>
										<option value="3">March</option>
										<option value="4">April</option>
										<option value="5">May</option>
										<option value="6">June</option>
										<option value="7">July</option>
										<option value="8">August</option>
										<option value="9">September</option>
										<option value="10">October</option>
										<option value="11">November</option>
										<option value="12">December</option>
									</select>
								</div>
								<div class="col-md-4">
									<input type="text" id="inputBirthyear" class="login_box" name="bYear" placeholder="Year" required>
								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-6">
								<p class="input_title">Security Question</p>
								<select type="text" id="inputSQ" name="securityQuestion" class="login_box" required>
									<option selected disabled="true">Choose a security question</option>
									<c:forEach var = "s" items = "${sq}">
										<option value="${s.id}">${s.question}</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-md-6">
								<p class="input_title">Security Answer</p>
								<input type="text" id="inputSQAnswer" name="sqAnswer" class="login_box" placeholder="Answer" required>
							</div>
						</div>
						<br>								
						<div class="row">
							<div class="col-md-6">
								<p class="input_title">Are you a Student or an Employee?</p>
								<select type="text" id="inputSQ" name="role" class="login_box" onkeyup = "Validate(this)" required>
									<option selected disabled="true">Choose role</option>
									<option value="1"> I am a Student </option>
									<option value="5"> I am an Employee </option>
								</select>
							</div>
							<div class="col-md-6">
								<br>
								<button class="btn btn-small btn-success btn-block submitbtn" type="submit">LET'S GET STARTED!</button>
							</div>
						</div>
					</form><!-- /form -->
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
		var errorBar = $("#error");

		$(document).ready(function() {
			errorBar.hide();

			$(document).on("click", "#openSignin", function() {
				logo.hide();
				maindiv.hide();
				logindiv.show(500);
			});

			$(document).on("click", "#back", function() {
				logo.show();
				maindiv.show();
				logindiv.hide();
				otherdiv.hide();
			});

			$(document).on("click", "#openOthers", function() {
				logo.hide();
				maindiv.hide();
				otherdiv.show(500);
			});
		});
	</script>

</body>

</html>
