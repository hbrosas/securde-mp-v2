<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1">
	<title>Search - De La Salle University - SHS Online Library</title>

	<!-- Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Lato" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet">

	<!-- Stylesheets -->
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="css/list-catalog-style.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/sweetalert.css">
  <link rel="stylesheet" href="css/jquery.dataTables.min.css">
</head>

<body>
	<jsp:include page="navbar.jsp" />
	<div class="main-container container">
    <h2>Displaying results for 'Singing'</h2>
    <br>
    <table id="search-table" class="display" cellspacing="0" width="100%">
      <thead>
        <tr>
          <th>Title</th>
          <th>Author</th>
					<th>Publisher</th>
          <th>Category</th>
					<th>Location</th>
					<th>Tags</th>
          <th>Availability</th>
          <th> </th>
        </tr>
      </thead>

      <tbody>
				<tr>
					<td>Singing in the rain</td>
					<td>Rihanna</td>
					<td>Tom Holland</td>
					<td>Magazine</td>
					<td>100029</td>
					<td>lip,sync,battle</td>
					<td><span class="label label-success">Available</span></td>
					<td><button class="btn btn-block" data-toggle="modal" data-target="#bookModal">View Details</button></td>
				</tr>
				<tr>
					<td>How to be badass</td>
					<td>John Wick</td>
					<td>Keanu Reeves</td>
					<td>Book</td>
					<td>17289</td>
					<td>bad,ass,mofo</td>
					<td><span class="label label-success">Available</span></td>
					<td><button class="btn btn-block" data-toggle="modal" data-target="#bookModal">View Details</button></td>
				</tr>
				<tr>
					<td>Magic 101</td>
					<td>Dumbledore</td>
					<td>Gandalf the grey</td>
					<td>Thesis</td>
					<td>176682</td>
					<td>magic,wizardry,muggle</td>
					<td><span class="label label-success">Available</span></td>
					<td><button class="btn btn-block" data-toggle="modal" data-target="#bookModal">View Details</button></td>
				</tr>
				<tr>
					<td>Cussing and cooking</td>
					<td>Gordon Ramsay</td>
					<td>Simon Cowell</td>
					<td>Book</td>
					<td>19278</td>
					<td>word,food,fuck</td>
					<td><span class="label label-danger">Unavailable</span></td>
					<td><button class="btn btn-block" data-toggle="modal" data-target="#bookModal">View Details</button></td>
				</tr>
      </tbody>
    </table>
	</div>

	<!-- Modal -->
	<div class="modal fade modal-book" id="bookModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h1 class="modal-title">How to be badass</h1>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-3">
							<img src="images/book.png" class="img-responsive" alt="Responsive image">
						</div>
						<div class="col-md-9">
							<p>by John Wick</p>
							<p style="font-style: italic;">type: book</p>
							<span class="label label-success">Available</span></div>
					</div>

					<h2>Overview</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
						dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-success" id="reserveButton">Reserve</button>
				</div>
			</div>
		</div>

	</div>
	</div>

	<!-- Scripts -->
	<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/navbar.js"></script>

	<!-- Sweet Alert -->
	<script type="text/javascript" src="js/sweetalert.min.js"></script>

  <!-- JQuery Data Tables -->
  <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>

  <!-- Search Catalog Script -->
  <script type="text/javascript" src="js/search-catalog.js"></script>
</body>

</html>
