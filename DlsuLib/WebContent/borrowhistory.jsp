<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="edu.securde.beans.User" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1">
	<title>Borrow History | De La Salle University - SHS Online Library</title>

	<!-- Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Lato" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet">

	<!-- Stylesheets -->
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="css/borrowhistory.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/sweetalert.css">
</head>

<body>
	<% User user=(User)session.getAttribute("ucx"); %>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				<a class="navbar-brand" href="#">DLSU SHS Online Library</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="/"> <span class="glyphicon glyphicon-search"></span> Search</a> <span class="sr-only">(current)</span></a></li>
					<li class="active"><a href="/"> Reserve Meeting Room <span class="sr-only">(current)</span></a></li>
					<!-- <li><a href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li> -->
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><%=user.getFirstname() %> <%=user.getLastname()%> <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li class="active"><a>Borrow History</a></li>
							<li><a href="#">Reservation History</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="edit_profile.html">Edit Profile</a></li>
							<li><a href="LogoutServlet">Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>

	<div class="main-container">
		<div class="container">
			<h2>Borrow History</h2><br>
        	<div class="row">
        		<table class="table table-striped table-bordered">
				  <thead>
				  	<th>Catalog Type</th>
				  	<th>Catalog Title</th>
				  	<th>Date Borrowed</th>
				  	<th>Anticipated Date Return</th>
				  	<th>Status</th>
				  </thead>
				  <!-- BORROW DETAILS -->
				  
				  <c:forEach var = "b" items = "${borrows}">
				  	<c:forEach var = "c" items = "${catalogs}">
				  		<c:if test="${b.catalogid == c.catalogid}">
				  			<tr>
				  				<c:if test="${c.catalogtype == 1}">
		                        	<td>Book</td>
		                        </c:if>
		                        <c:if test="${c.catalogtype == 2}">
		                        	<td>Magazine</td>
		                        </c:if>
		                        <c:if test="${c.catalogtype == 3}">
		                        	<td>Thesis</td>
		                        </c:if>
					  			<td>${c.title}</td>
					  			<td>${b.dateborrowed}</td>
					  			<td>${b.dateexpectreturn}</td>
					  			<td>
					  				<c:if test="${b.statusid == 3}">
			                        	<button type="button" class="btn btn-success btn-block">Reserved</button>
			                        </c:if>
			                        <c:if test="${b.statusid == 2}">
			                        	<button type="button" class="btn btn-warning btn-block">On Hand</button>
			                        </c:if>
			                        <c:if test="${b.statusid == -1}">
			                        	<button type="button" class="btn btn-info btn-block">Returned</button>
			                        </c:if>
							  	</td>
							</tr>
				  		</c:if>
				  	</c:forEach>
				  </c:forEach>
				</table>
        	</div>
        </div>
	</div>

	<!-- Scripts -->
	<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>

	<!-- Sweet Alert -->
	<script type="text/javascript" src="js/sweetalert.min.js"></script>

	<!-- List Catalog Script -->
	<script type="text/javascript" src="js/list-catalog.js">
	</script>
</body>

</html>
