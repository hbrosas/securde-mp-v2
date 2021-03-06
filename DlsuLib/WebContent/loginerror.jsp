<%   if (session.getAttribute("ewow") != null ) { %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
if(request.getAttribute("action").equals("create")) {
	Cookie cookie = new Cookie ("trie", "1"); 
	cookie.setMaxAge(24 * 60 * 60); 
	response.addCookie(cookie);

	cookie.setPath("/"); 
	cookie.setDomain("localhost");
}
%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta http-equiv="expires" content="now">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="Cache-Control" content="no-cache">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1">
	<title>De La Salle University - SHS Online Library</title>
	<jsp:include page="user_dependencies.jsp" />
	<link href="./css/index-style.css" rel="stylesheet" type="text/css" />
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
					<div class="alert alert-danger" id="error" role="alert">${message}</div>
					<form class="form-signin" id="formsignin" action="LoginServlet" method="POST">	
						<p class="input_title">Username/Email</p>
						<input type="text" name="inputEmail" id="inputEmail" class="login_box" onkeyup="validatespecial(this)" placeholder="user@dlsu.edu.ph" required autofocus>
						<br>
						<p class="input_title">Password</p>
						<input type="password" name="inputPassword" id="inputPassword" class="login_box" placeholder="******" required>
						<br>
						<div class="inline-form" name="password">
							<div class="form-group">
								<label class="checkbox-inline remember" for="checkRememberMe">
									<input type="checkbox" id="checkRememberMe" value="remember" name="remember">
									Remember Me
								</label>
								<a class="pull-right forgot" href="forgot.jsp">Forgot password?</a>
							</div>
						</div>
						<c:if test="${locked == 'false'}">
							<button class="btn btn-small btn-success btn-block submitbtn" id="signin" type="submit">SIGN IN</button>
						</c:if>
						<c:if test="${locked == 'true'}">
							<button class="btn btn-small btn-success btn-block submitbtn" id="signin" type="submit" disabled="disabled">SIGN IN</button>
						</c:if>
						
					</form><!-- /form -->
		        </div><!-- /card-container -->
			</div>

			<div id="other-cont">
				<div class="card card-container">
					<h2 class='login_title text-center'>
						<span class="pull-right backbtn" id="back"><< Back</span>
					</h2>
					<hr class="top-hr">
					<form class="form-request-acct" action="ComposeAccount" method="POST">
						<div class="alert alert-danger" id="emailerror" role="alert">Email Address already taken</div>
						<p class="input_title">Email Address</p>
						<input type="email" id="inputReqEmail" name="inputReqEmail" class="login_box" placeholder="user@dlsu.edu.ph" required autofocus><br>
						<button class="btn btn-small btn-success btn-block submitbtn" id="reqBtn" type="button">REQUEST AN ACCOUNT</button>
					</form><!-- /form -->
					<hr>
					<form id="guestLoginForm" action="GuestServlet" method="POST">
						<button class="btn btn-small btn-default btn-block submitbtn" type="submit">SIGN IN AS GUEST</button>
					</form>
		        </div><!-- /card-container -->
			</div>

		</div> <!-- Home Container -->
	</div>
	
	<!-- body -->
	<script type="text/javascript" src="js/indexerror.js"></script>
	<script type="text/javascript" src="js/validation.js"></script>
</body>

</html>
<% } 
	else {
		request.getRequestDispatcher("StartServlet").forward(request, response);
	}
%>