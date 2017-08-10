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
                        <a href="#" class="site_title"><i class="fa fa-paw"></i> <span>DLSU Lib App</span></a>
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

                    <br />

                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                        <div class="menu_section">
                            <h3>Navigation</h3>
                            <ul class="nav side-menu">
                                <li><a href="register.html"> Register</a></li>
                                <li><a href="admin_home.html"><i class="fa fa-home"></i> Home</a></li>
                                <li><a><i class="fa fa-book"></i> Books <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="view_catalog.html">View Catalog</a></li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-lightbulb-o"></i>Rooms <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="view_reservation.html">View All Rooms</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>


                    </div>
                    <!-- /sidebar menu -->

                    <!-- /menu footer buttons -->
                    <div class="sidebar-footer hidden-small">
                        <a data-toggle="tooltip" data-placement="top" title="Settings">
                            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                        </a>
                        <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                            <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                        </a>
                        <a data-toggle="tooltip" data-placement="top" title="Lock">
                            <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                        </a>
                        <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                            <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                        </a>
                    </div>
                    <!-- /menu footer buttons -->
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
                                    <img src="images/gandalf.jpg" alt="">John Doe
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
              <table id="viewTable" class="display" cellspacing="0" width="100%">
                <thead>
                  <tr>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Category</th>
                    <th>Availability</th>
                    <th> </th>
                  </tr>
                </thead>

                <tbody>
                  <tr>
                    <td>Singing in the rain</td>
                    <td>Rihanna</td>
                    <td>Magazine</td>
                    <td><span class="label label-success">Available</span></td>
                    <td><button class="btn btn-block" data-toggle="modal" data-target="#bookModal">View Details</button></td>
                  </tr>
                  <tr>
                    <td>How to be badass</td>
                    <td>John Wick</td>
                    <td>Book</td>
                    <td><span class="label label-success">Available</span></td>
                    <td><button class="btn btn-block" data-toggle="modal" data-target="#bookModal">View Details</button></td>
                  </tr>
                  <tr>
                    <td>Magic 101</td>
                    <td>Gandalf the grey</td>
                    <td>Thesis</td>
                    <td><span class="label label-success">Available</span></td>
                    <td><button class="btn btn-block" data-toggle="modal" data-target="#bookModal">View Details</button></td>
                  </tr>
                  <tr>
                    <td>Cussing and cooking</td>
                    <td>Gordon Ramsay</td>
                    <td>Book</td>
                    <td><span class="label label-danger">Unavailable</span></td>
                    <td><button class="btn btn-block" data-toggle="modal" data-target="#bookModal">View Details</button></td>
                  </tr>
                </tbody>
              </table>
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


    <!-- jQuery -->
    <script src="js/jquery-1.12.4.min.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="vendors/fastclick/lib/fastclick.js"></script>
    <!-- iCheck -->
    <script src="vendors/iCheck/icheck.min.js"></script>
    <!-- Swal -->
    <script type="text/javascript" src="js/sweetalert.min.js">

    </script>

    <!-- Custom Theme Scripts -->
    <script src="js/gentelella.min.js"></script>
    <!-- JQuery Data Tables -->
    <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>

    <!-- Dashboard Script -->
    <script type="text/javascript" src="js/dashboard.js"></script>
    <!-- Date-Time Picker -->
  	<script type="text/javascript" src="vendors/moment/min/moment.min.js"></script>
  	<script type="text/javascript" src="vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>

    <script type="text/javascript">
  		$("#datetimepicker1").datetimepicker({
  			format: 'YYYY-MM-DD'
  		});
  	</script>
</body>

</html>
