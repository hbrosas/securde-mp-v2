<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1">
	<title>Reserve Room | De La Salle University - SHS Online Library</title>

	<!-- Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Lato" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet">

	<!-- Stylesheets -->
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="css/mainsearch.css" rel="stylesheet" type="text/css" />
	<link href="css/reserve.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css">
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
				<a class="navbar-brand" href="#">DLSU SHS Online Library</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="/"> Reserve Meeting Room <span class="sr-only">(current)</span></a></li>
					<!-- <li><a href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li> -->
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hazel Brosas <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="borrow_history.html">Borrow History</a></li>
							<li><a href="#">Reservation History</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="edit_profile.html">Edit Profile</a></li>
							<li><a href="#">Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>

	<div class="main-container">
		<div id="home-cont" class="home-cont">
			<div class="container">
				<div class = "row">
					<div class="col-md-4">
						<div class="input-group">
							<span class="input-group-addon" id="basic-addon2">
								<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
							</span>
							<input type="text" class="form-control dateReserve" placeholder="Date of Reservation" aria-describedby="basic-addon2" id="datetimepicker1">

							<input type="hidden" id="data" value="ma1 l11 d5 ma2 bo10">
						</div>
					</div>

					<div class="col-md-4"></div>

					<div class="col-md-4">
						<button class="btn btn-info btn-small btn-review pull-right" id="contReserveBtn" type="submit">
							Continue Reservation <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						</button>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="alert alert-info" role="alert" id="info-message">
						Choose the time of reservation by clicking the box below.
					</div>

					<div class="alert alert-success" role="alert" id="success-message">
						Timeslot have been successfully added to the reservation list.
					</div>

					<div class="alert alert-danger" role="alert" id="error-message">
						Sorry, it's already taken. Choose the one that is available.
					</div>
				</div>
				<div class="row" id="timeslot">
					<div class="table-responsive table-bordered">
			            <table class="table">
			                  <thead>
			                  <tr class= "table-head">
			                      <th>Room</th>
			                      <th>7:00</th>
			                      <th>7:30</th>
			                      <th>8:00</th>
			                      <th>8:30</th>
			                      <th>9:00</th>
			                      <th>9:30</th>
			                      <th>10:00</th>
			                      <th>10:30</th>
			                      <th>11:00</th>
			                      <th>11:30</th>
			                      <th>12:00</th>
			                      <th>12:30</th>
			                      <th>13:00</th>
			                      <th>13:30</th>
			                      <th>14:00</th>
			                      <th>14:30</th>
			                      <th>15:00</th>
			                      <th>15:30</th>
			                      <th>16:00</th>
			                      <th>16:30</th>
			                      <th>17:00</th>
			                      <th>17:30</th>
			                      <th>18:00</th>
			                      <th>18:30</th>
			                      <th>19:00</th>
			                      <th>19:30</th>
			                  </tr>
			              </thead>   
			              <tbody>
			                  
			                <!--row-->
			                <tr>
			                    <td class="room-title">MichaelAngelo</td>
			                    <td class="slot available" id="ma1">&nbsp;</td>
			                    <td class="slot available" id="ma2">&nbsp;</td>
			                    <td class="slot available" id="ma3">&nbsp;</td>
			                    <td class="slot available" id="ma4">&nbsp;</td>
			                    <td class="slot available" id="ma5">&nbsp;</td>
			                    <td class="slot available" id="ma6">&nbsp;</td>
			                    <td class="slot available" id="ma7">&nbsp;</td>
			                    <td class="slot available" id="ma8">&nbsp;</td>
			                    <td class="slot available" id="ma9">&nbsp;</td>
			                    <td class="slot available" id="ma10">&nbsp;</td>
			                    <td class="slot available" id="ma11">&nbsp;</td>
			                    <td class="slot available" id="ma12">&nbsp;</td>
			                    <td class="slot available" id="ma13">&nbsp;</td>
			                    <td class="slot available" id="ma14">&nbsp;</td>
			                    <td class="slot available" id="ma15">&nbsp;</td>
			                    <td class="slot available" id="ma16">&nbsp;</td>
			                    <td class="slot available" id="ma17">&nbsp;</td>
			                    <td class="slot available" id="ma18">&nbsp;</td>
			                    <td class="slot available" id="ma19">&nbsp;</td>
			                    <td class="slot available" id="ma20">&nbsp;</td>
			                    <td class="slot available" id="ma21">&nbsp;</td>
			                    <td class="slot available" id="ma22">&nbsp;</td>
			                    <td class="slot available" id="ma23">&nbsp;</td>
			                    <td class="slot available" id="ma24">&nbsp;</td>
			                    <td class="slot available" id="ma25">&nbsp;</td>
			                    <td class="slot available" id="ma26">&nbsp;</td>
			                </tr>
			                <!--/.row-->

			                <!--row-->
			                <tr>
			                    <td class="room-title">Donatello</td>
			                    <td class="slot available" id="d1">&nbsp;</td>
			                    <td class="slot available" id="d2">&nbsp;</td>
			                    <td class="slot available" id="d3">&nbsp;</td>
			                    <td class="slot available" id="d4">&nbsp;</td>
			                    <td class="slot available" id="d5">&nbsp;</td>
			                    <td class="slot available" id="d6">&nbsp;</td>
			                    <td class="slot available" id="d7">&nbsp;</td>
			                    <td class="slot available" id="d8">&nbsp;</td>
			                    <td class="slot available" id="d9">&nbsp;</td>
			                    <td class="slot available" id="d10">&nbsp;</td>
			                    <td class="slot available" id="d11">&nbsp;</td>
			                    <td class="slot available" id="d12">&nbsp;</td>
			                    <td class="slot available" id="d13">&nbsp;</td>
			                    <td class="slot available" id="d14">&nbsp;</td>
			                    <td class="slot available" id="d15">&nbsp;</td>
			                    <td class="slot available" id="d16">&nbsp;</td>
			                    <td class="slot available" id="d17">&nbsp;</td>
			                    <td class="slot available" id="d18">&nbsp;</td>
			                    <td class="slot available" id="d19">&nbsp;</td>
			                    <td class="slot available" id="d20">&nbsp;</td>
			                    <td class="slot available" id="d21">&nbsp;</td>
			                    <td class="slot available" id="d22">&nbsp;</td>
			                    <td class="slot available" id="d23">&nbsp;</td>
			                    <td class="slot available" id="d24">&nbsp;</td>
			                    <td class="slot available" id="d25">&nbsp;</td>
			                    <td class="slot available" id="d26">&nbsp;</td>                         
			                </tr>
			                <!--/.row-->

			                <!--row-->
			                <tr>
			                    <td class="room-title">Leonardo</td>
			                    <td class="slot available" id="l1">&nbsp;</td>
			                    <td class="slot available" id="l2">&nbsp;</td>
			                    <td class="slot available" id="l3">&nbsp;</td>
			                    <td class="slot available" id="l4">&nbsp;</td>
			                    <td class="slot available" id="l5">&nbsp;</td>
			                    <td class="slot available" id="l6">&nbsp;</td>
			                    <td class="slot available" id="l7">&nbsp;</td>
			                    <td class="slot available" id="l8">&nbsp;</td>
			                    <td class="slot available" id="l9">&nbsp;</td>
			                    <td class="slot available" id="l10">&nbsp;</td>
			                    <td class="slot available" id="l11">&nbsp;</td>
			                    <td class="slot available" id="l12">&nbsp;</td>
			                    <td class="slot available" id="l13">&nbsp;</td>
			                    <td class="slot available" id="l14">&nbsp;</td>
			                    <td class="slot available" id="l15">&nbsp;</td>
			                    <td class="slot available" id="l16">&nbsp;</td>
			                    <td class="slot available" id="l17">&nbsp;</td>
			                    <td class="slot available" id="l18">&nbsp;</td>
			                    <td class="slot available" id="l19">&nbsp;</td>
			                    <td class="slot available" id="l20">&nbsp;</td>
			                    <td class="slot available" id="l21">&nbsp;</td>
			                    <td class="slot available" id="l22">&nbsp;</td>
			                    <td class="slot available" id="l23">&nbsp;</td>
			                    <td class="slot available" id="l24">&nbsp;</td>
			                    <td class="slot available" id="l25">&nbsp;</td>
			                    <td class="slot available" id="l26">&nbsp;</td>
			                </tr>
			                <!--/.row-->

			                 <!--row-->
			                <tr>
			                    <td class="room-title">Raphael</td>
			                    <td class="slot available" id="ra1">&nbsp;</td>
			                    <td class="slot available" id="ra2">&nbsp;</td>
			                    <td class="slot available" id="ra3">&nbsp;</td>
			                    <td class="slot available" id="ra4">&nbsp;</td>
			                    <td class="slot available" id="ra5">&nbsp;</td>
			                    <td class="slot available" id="ra6">&nbsp;</td>
			                    <td class="slot available" id="ra7">&nbsp;</td>
			                    <td class="slot available" id="ra8">&nbsp;</td>
			                    <td class="slot available" id="ra9">&nbsp;</td>
			                    <td class="slot available" id="ra10">&nbsp;</td>
			                    <td class="slot available" id="ra11">&nbsp;</td>
			                    <td class="slot available" id="ra12">&nbsp;</td>
			                    <td class="slot available" id="ra13">&nbsp;</td>
			                    <td class="slot available" id="ra14">&nbsp;</td>
			                    <td class="slot available" id="ra15">&nbsp;</td>
			                    <td class="slot available" id="ra16">&nbsp;</td>
			                    <td class="slot available" id="ra17">&nbsp;</td>
			                    <td class="slot available" id="ra18">&nbsp;</td>
			                    <td class="slot available" id="ra19">&nbsp;</td>
			                    <td class="slot available" id="ra20">&nbsp;</td>
			                    <td class="slot available" id="ra21">&nbsp;</td>
			                    <td class="slot available" id="ra22">&nbsp;</td>
			                    <td class="slot available" id="ra23">&nbsp;</td>
			                    <td class="slot available" id="ra24">&nbsp;</td>
			                    <td class="slot available" id="ra25">&nbsp;</td>
			                    <td class="slot available" id="ra26">&nbsp;</td>
			                </tr>
			                <!--/.row-->

			                 <!--row-->
			                <tr>
			                    <td class="room-title">Boticelli</td>
			                    <td class="slot available" id="bo1">&nbsp;</td>
			                    <td class="slot available" id="bo2">&nbsp;</td>
			                    <td class="slot available" id="bo3">&nbsp;</td>
			                    <td class="slot available" id="bo4">&nbsp;</td>
			                    <td class="slot available" id="bo5">&nbsp;</td>
			                    <td class="slot available" id="bo6">&nbsp;</td>
			                    <td class="slot available" id="bo7">&nbsp;</td>
			                    <td class="slot available" id="bo8">&nbsp;</td>
			                    <td class="slot available" id="bo9">&nbsp;</td>
			                    <td class="slot available" id="bo10">&nbsp;</td>
			                    <td class="slot available" id="bo11">&nbsp;</td>
			                    <td class="slot available" id="bo12">&nbsp;</td>
			                    <td class="slot available" id="bo13">&nbsp;</td>
			                    <td class="slot available" id="bo14">&nbsp;</td>
			                    <td class="slot available" id="bo15">&nbsp;</td>
			                    <td class="slot available" id="bo16">&nbsp;</td>
			                    <td class="slot available" id="bo17">&nbsp;</td>
			                    <td class="slot available" id="bo18">&nbsp;</td>
			                    <td class="slot available" id="bo19">&nbsp;</td>
			                    <td class="slot available" id="bo20">&nbsp;</td>
			                    <td class="slot available" id="bo21">&nbsp;</td>
			                    <td class="slot available" id="bo22">&nbsp;</td>
			                    <td class="slot available" id="bo23">&nbsp;</td>
			                    <td class="slot available" id="bo24">&nbsp;</td>
			                    <td class="slot available" id="bo25">&nbsp;</td>
			                    <td class="slot available" id="bo26">&nbsp;</td>
			                </tr>
			                <!--/.row-->
			              </tbody>
			            </table>
			        </div>
				</div>
			</div>
		</div> <!-- Home Container -->
	</div>

	<div class="modal fade" id="continueReserve" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h1 class="modal-title">Reservation List</h1>
				</div>
				<div class="modal-body">
					<div class="row modal-table">
						<ul class="list-group" id="modal-list-group">
							<li class="list-group-item active">
								<span class="glyphicon glyphicon-time" aria-hidden="true"></span>
								&nbsp; &nbsp; Chosen Timeslots
							</li>
						</ul>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-success" id="reserveButton">Reserve Rooms</button>
					<button type="button" class="btn btn-default" data-dismiss="modal" id="close-modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Scripts -->
	<script type="text/javascript" src="./js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="./js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="./js/bootstrap.min.js"></script>
	<script type="text/javascript" src="./vendors/moment/min/moment.min.js"></script>
	<script type="text/javascript" src="./js/reserve.js"></script>
	<script type="text/javascript" src="./vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>

	<script type="text/javascript">
		$("#datetimepicker1").datetimepicker({format: 'YYYY-MM-DD', minDate:new Date()});
	</script>

</body>

</html>
