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
    <link rel="stylesheet" href="  css/borrow-history-style.css">
</head>

<body>
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
                <a class="navbar-brand" href="list_catalog.html">DLSU SHS Online Library</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="room_reservation.html">Reserve Meeting Room</a></li>
                    <li class="active"><a href="list_catalog.html"> Catalog List <span class="sr-only">(current)</span></a></li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#" id="enable-search"><span class="glyphicon glyphicon-search"></span> Search</a></li>
                    <li><a href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
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
            <!-- /.navbar-collapse -->
            <ul class="nav navbar-nav" id="search-navbar">
                <li>
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <select class="form-control">
										<option value="Title">Title</option>
					 					<option value="Location">Location</option>
					 					<option value="Author">Author</option>
					 					<option value="Publisher">Publisher</option>
					 					<option value="Tags">Tags</option>
					 				</select>
                            <input type="text" class="form-control" placeholder="Keyword" style="width: 800px;">
                            <select class="form-control">
					 					<option value="Books">Books</option>
					 					<option value="Magazines">Magazines</option>
					 					<option value="Thesis">Thesis</option>
					 				</select>
                        </div>
                        <a href="search_catalog.html" type="button" class="btn btn-default" style="width: 100px;">Submit</a>
                    </form>
                </li>
            </ul>
        </div>
        <!-- /.container-fluid -->
    </nav>

    <div class="main-container">
        <div class="panel panel-default panel-order">
            <div class="panel-heading">
                <strong>Borrow history</strong>
                <div class="btn-group pull-right">
                    <div class="btn-group">
                        <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
			  Filter Books <i class="fa fa-filter"></i>
			</button>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="#">Borrowed</a></li>
                            <li><a href="#">Returned</a></li>
                            <li><a href="#">Overdue</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="panel-body">
                <div class="row">
                    <div class="col-md-1"><img src="images/book.png" class="media-object img-thumbnail"></div>
                    <div class="col-md-11">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="pull-right"><label class="label label-danger">Overdue</label> </div>
                                <span><strong>The Game</strong></span> <span class="label label-info">Book</span><br> Expected return date: July 2, 2017 <br>

                            </div>
                            <div class="col-md-12">
                                borrowed on: 05/31/2017 by <a href="#">Hazel Brosas</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-1"><img src="images/Magazine.png" class="media-object img-thumbnail"></div>
                    <div class="col-md-11">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="pull-right"><label class="label label-info">Borrowed</label> </div>
                                <span><strong>ACM Vol. 213</strong></span> <span class="label label-info">Magazine</span><br> Expected return date: July 20, 2017<br>
                            </div>
                            <div class="col-md-12">
                                borrowed on: 05/31/2017 by <a href="#">Hazel Brosas</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-1"><img src="images/Thesis.png" class="media-object img-thumbnail"></div>
                    <div class="col-md-11">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="pull-right"><label class="label label-success">Returned</label> </div>
                                <span><strong>SPIED</strong></span> <span class="label label-info">Thesis</span><br> Return date: July 2, 2017<br>
                            </div>
                            <div class="col-md-12">
                                borrowed on: 05/31/2017 by <a href="#">Hazel Brosas</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-1"><img src="images/book.png" class="media-object img-thumbnail"></div>
                    <div class="col-md-11">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="pull-right"><label class="label label-danger">Overdue</label> </div>
                                <span><strong>The Game</strong></span> <span class="label label-info">Book</span><br> Expected return date: July 2, 2017 <br>

                            </div>
                            <div class="col-md-12">
                                borrowed on: 05/31/2017 by <a href="#">Hazel Brosas</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-1"><img src="images/Magazine.png" class="media-object img-thumbnail"></div>
                    <div class="col-md-11">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="pull-right"><label class="label label-info">Borrowed</label> </div>
                                <span><strong>ACM Vol. 213</strong></span> <span class="label label-info">Magazine</span><br> Expected return date: July 20, 2017<br>
                            </div>
                            <div class="col-md-12">
                                borrowed on: 05/31/2017 by <a href="#">Hazel Brosas</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-1"><img src="images/Thesis.png" class="media-object img-thumbnail"></div>
                    <div class="col-md-11">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="pull-right"><label class="label label-success">Returned</label> </div>
                                <span><strong>SPIED</strong></span> <span class="label label-info">Thesis</span><br> Return date: July 2, 2017<br>
                            </div>
                            <div class="col-md-12">
                                borrowed on: 05/31/2017 by <a href="#">Hazel Brosas</a>
                            </div>
                        </div>
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



</body>

</html>
