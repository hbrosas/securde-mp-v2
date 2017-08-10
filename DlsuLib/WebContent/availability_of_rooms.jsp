<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>DLSU Lib App | </title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Swal -->
    <link rel="stylesheet" href="css/sweetalert.css">
    <!-- Data Tables -->
    <link rel="stylesheet" href="css/jquery.dataTables.min.css">

    <!-- Custom Theme Style -->
    <link href="css/gentelella.min.css" rel="stylesheet">

    <!-- Dashboard Style -->
    <link rel="stylesheet" href="css/dashboard.css">
</head>

<body class="nav-md">
    <div class="container body">
        <div class="main_container">
            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">
                    <div class="navbar nav_title" style="border: 0;">
                        <a href="#" class="site_title"><i class="fa fa-paw"></i> <span>Admin Page</span></a>
                    </div>

                    <div class="clearfix"></div>

                    <!-- menu profile quick info -->
                    <div class="profile clearfix">
                        <div class="profile_pic">
                            <img src="images/gandalf.jpg" alt="..." class="img-circle profile_img">
                        </div>
                        <div class="profile_info">
                            <span>Welcome,</span>
                            <h2>Gandalf the Grey</h2>
                        </div>
                    </div>
                    <!-- /menu profile quick info -->

                    <br/>

                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                        <div class="menu_section">
                            <h3>Navigation</h3>
                            <ul class="nav side-menu">
                                <li><a href="admin_home.html"><i class="fa fa-home"></i> Home</a></li>
                                <li><a><i class="fa fa-user"></i> Accounts <span class="fa fa-chevron-down"></span></a>
                                     <ul class="nav child_menu">
                                        <li><a href="register.html"> Create New Account</a></li>
                                        <li><a href="register.html"> Manage Accounts</a></li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-book"></i> Books <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="view_catalog.html">Add Catalog</a></li>
                                        <li><a href="view_catalog.html">Manage Catalogs</a></li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-lightbulb-o"></i>Rooms <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="view_reservation.html">Manage Reservations</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /sidebar menu -->
                </div>
            </div>

            <!-- top navigation -->
            <div class="top_nav">
                <div class="nav_menu">
                    <nav>
                        <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>

                        <ul class="nav navbar-nav navbar-right">
                            <li class="">
                                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <img src="images/user.png" alt="">John Doe
                                    <span class=" fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-usermenu pull-right">
                                    <li><a href="javascript:;">Edit Profile</a></li>
                                    <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- /top navigation -->

            <!-- page content -->
            <div class="right_col" role="main">
              <div class="main-container container">
                <table id="availabilityTable" class="display" cellspacing="0" width="100%">
                  <thead>
                      <tr>
                          <th>Room Name</th>
                          <th>Status</th>
                          <th></th>
                      </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th>Leonardo</th>
                      <th><span class="label label-success">In Service</span></th>
                      <th>
                        <select name="leonardoAvailability" id="">
                          <option value="1">In Service</option>
                          <option value="0">Out of Service</option>
                        </select>
                      </th>
                    </tr>
                    <tr>
                      <th>Donatello</th>
                      <th><span class="label label-success">In Service</span></th>
                      <th>
                        <select name="donatelloAvailability" id="">
                          <option value="1">In Service</option>
                          <option value="0">Out of Service</option>
                        </select>
                      </th>
                    </tr>
                    <tr>
                      <th>Michaelangelo</th>
                      <th><span class="label label-success">In Service</span></th>
                      <th>
                        <select name="michaelangeloAvailability" id="">
                          <option value="1">In Service</option>
                          <option value="0">Out of Service</option>
                        </select>
                      </th>
                    </tr>
                    <tr>
                      <th>Raphael</th>
                      <th><span class="label label-danger">Out of Service</span></th>
                      <th>
                        <select name="raphelAvailability" id="">
                          <option value="1">In Service</option>
                          <option value="0">Out of Service</option>
                        </select>
                      </th>
                    </tr>
                  </tbody>

                </table>
                <br><br>
                <div class="row">
                  <div class="col-md-2 col-md-offset-8">
                    <button class="btn btn-block btn-success" id="availabilitySave">Save</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- /page content -->

            <!-- footer content -->
            <footer>
                <div class="pull-right">
                    DLSU Lib Application
                </div>
                <div class="clearfix"></div>
            </footer>
            <!-- /footer content -->
        </div>
    </div>

    <!-- Modal -->
    <div id="addBook" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add a New Book</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="title">Book title:</label>
                            <input type="text" class="form-control" id="title">
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-md-4">
                                <div class="form-group">
                                    <label for="author">Book Author:</label>
                                    <input type="text" class="form-control" id="author">
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-4">
                                <div class="form-group">
                                    <label for="publisher">Publisher:</label>
                                    <input type="text" class="form-control" id="publisher">
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-4">
                                <div class="form-group">
                                    <label for="year">Year:</label>
                                    <input type="text" class="form-control" id="year">
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group">
                                    <label for="category">Category:</label><br>
                                    <select class="category">
                                  <option value="1" selected>Book</option>
                                  <option value="2">Magazine</option>
                                  <option value="3">Thesis</option>
                                </select>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group">
                                    <label for="availability">Availability:</label><br>
                                    <select class="availability">
                                  <option value="1" selected>Available</option>
                                  <option value="2">Unavailable</option>
                                </select>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group">
                                    <label for="author">Location:</label>
                                    <input type="text" class="form-control" id="location">
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group">
                                    <label for="author">Tags:</label>
                                    <input type="text" class="form-control" id="tags">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal" id="addButton">Add</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>


    <!-- jQuery -->
    <script src="js/jquery-1.12.4.min.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="vendors/fastclick/lib/fastclick.js"></script>
    <!-- iCheck -->
    <script src="vendors/iCheck/icheck.min.js"></script>
    <!-- Swal -->
    <script type="text/javascript" src="js/sweetalert.min.js"></script>
    <!-- Data Table -->
    <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="js/gentelella.min.js"></script>

    <!-- Dashboard Script -->
    <script type="text/javascript" src="js/dashboard.js">

    </script>
</body>

</html>