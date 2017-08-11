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
	<jsp:include page="navbar.jsp" />
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
