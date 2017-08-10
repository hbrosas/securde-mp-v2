<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1">
	<title>Search | De La Salle University - SHS Online Library</title>

	<!-- Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Lato" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet">

	<!-- Stylesheets -->
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="css/mainsearch.css" rel="stylesheet" type="text/css" />
	<!-- <link rel="stylesheet" href="css/sweetalert.css"> -->
</head>

<body class="the-body">
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
				<a class="navbar-brand" href="AllCatalogServlet">DLSU SHS Online Library</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="/"> Reserve Meeting Room <span class="sr-only">(current)</span></a></li>
					<!-- <li><a href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li> -->
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${user.firstname} ${user.lastname} <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="borrow_history.html">Borrow History</a></li>
							<li><a href="#">Reservation History</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="edit_profile.jsp">Edit Profile</a></li>
							<li><a href="LogoutServlet">Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>

	<div class="main-container">
		<div id="home-cont" class="home-cont">
			<h2 align="center">Search Catalog</h2> <br>
			<form class="container" action="SearchServlet" method="GET">
				<div class="row">
					<div class="col-md-3 col-sm-3 col-xs-3"></div>
					<div class="col-md-3 col-sm-3 col-xs-3 sec">
					 	<select class="form-control" name="inputReference">
					 		<option selected disabled="true">Reference</option>
					 		<option value="libro">Books</option>
					 		<option value="magasin">Magazines</option>
					 		<option value="pinaghirapan">Thesis</option>
					 	</select>
				 	</div>
				 	<div class="col-md-3 col-sm-3 col-xs-3 sec">
					 	<select class="form-control" name="inputBy">
					 		<option selected disabled="true">By</option>
					 		<option value="titulo">Title</option>
					 		<option value="otor">Author</option>
					 		<option value="publiso">Publisher</option>
					 		<option value="taon">Year</option>
					 		<option value="saan">Location</option>
					 	</select>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-3"></div>
				</div>
				<br>
				<div class="row">
    				<div class="col-md-3 col-sm-3 col-xs-3"></div>
   					<div class="col-md-6 col-sm-6 col-xs-6 center">
        				<input type="search" class="form-control" onkeyup="validatespecial(this)" name="inputSearch" placeholder="What are you looking for?">
        			</div>
    				<div class="col-md-3 col-sm-3 col-xs-3"></div>
    			</div>
		        <br>
		        <div class="row">
		            <div class="col-md-4 col-sm-4 col-xs-5"></div>
		            <div class="col-md-4 col-sm-4 col-xs-5">
		            	<button type="submit" class="btn btn-block btn-success">Search</button>
		            </div>
		            <div class="col-md-5 col-sm-5 col-xs-35"></div>
		        </div>
			</form>
		</div> <!-- Home Container -->
	</div>
	
	<!-- Scripts -->
	<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/navbar.js"></script>
	<script type="text/javascript" src="js/validation.js"></script>
</body>

</html>
