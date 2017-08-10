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
    <link href="../template/css/mainsearch.css" rel="stylesheet" type="text/css" />
    <link href="../template/css/reserve.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="css/jquery.dataTables.min.css">
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
              <div class="panel panel-default">
          			<div class="panel-heading" style="font-size:2em;">Room Reservation</div>
          			<div class="panel-body">
          				<div class="row">

          					<div class="col-md-4">
          						<label for="accountRole"	><h4>Select Room</h4></label>
          						<select class="form-control" id="accountRole">
          							<option value="1">Michaelangelo</option>
          							<option value="2">Leonardo</option>
          							<option value="3">Donatello</option>
          							<option value="4">Raphael</option>
          						</select>
                      <br>
                      <div class="form-group">
          							<div class='input-group date' id='datetimepicker1'>
          								<input type='text' class="form-control" />
          								<span class="input-group-addon">
                                  <span class="glyphicon glyphicon-calendar"></span>
          								</span>
          							</div>
          						</div>
          						<img src="images/room.jpg" alt="" class="img-thumbnail">
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



          			</div>
          			<!-- end of panel body -->
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
    <!-- Custom Theme Scripts -->
    <script src="js/gentelella.min.js"></script>

    <!-- Dashboard Script -->
    <script type="text/javascript" src="js/dashboard.js"></script>
    <!-- Date-Time Picker -->
  	<script type="text/javascript" src="vendors/moment/min/moment.min.js"></script>
  	<script type="text/javascript" src="vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
     <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="vendors/moment/min/moment.min.js"></script>
    <script type="text/javascript" src="../template/js/reserve.js"></script>
    <script type="text/javascript" src="vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>

  
</body>

</html>
