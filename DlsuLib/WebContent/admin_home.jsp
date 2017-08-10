<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Admin Panel | De La Salle University SHS Online Library</title>
	<jsp:include page="admin_dependencies.jsp" />
</head>

<body class="nav-md">
    <div class="container body">
        <div class="main_container">
            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">
                    <div class="navbar nav_title" style="border: 0;">
                        <a href="#" class="site_title"><i class="fa fa-paw"></i> <span> Admin Panel</span></a>
                    </div>

                    <div class="clearfix"></div>

                    <!-- menu profile quick info -->
                    <div class="profile clearfix">
                      <!-- menu profile quick info -->
	                    <div class="profile clearfix">
	                        <div class="profile_info">
	                            <span>Welcome,</span>
	                            <h2>${user.firstname} ${user.lastname}</h2>
	                        </div>
	                    </div>
                    <!-- /menu profile quick info -->
                    </div>

                    <br />

                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                        <div class="menu_section">
                            <h3>Navigation</h3>
                            <ul class="nav side-menu">
                                <li><a href="admin_home.html"><i class="fa fa-home"></i> Home</a></li>
                                <li><a><i class="fa fa-user"></i> Accounts <span class="fa fa-chevron-down"></span></a>
                                     <ul class="nav child_menu">
                                        <li><a href="admincreate.jsp"> Create New Account</a></li>
                                        <li><a href="register.html"> Manage Accounts</a></li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-book"></i> Books <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="edit_books.jsp">Add Catalog</a></li>
                                        <li><a href="view_catalog.jsp">Manage Catalogs</a></li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-lightbulb-o"></i>Rooms <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="view_reservation.jsp">Manage Reservations</a></li>
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
                                    <img src="images/user.png" alt="">${user.firstname} ${user.lastname}
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
            	<br><br><br><br><br>
                <div class="row">
                  <a href="register.html">
                      <div class="col-xs-12 col-md-2 col-md-offset-1 ">
                          <div class="row">
                              <div class="col-xs-12">
                                  <div class="fa fa-pencil-square-o" style="font-size: 10em;"></div>
                              </div>
                              <div class="col-xs-12">
                                  <h2>Register</h2>
                              </div>
                          </div>
                      </div>
                  </a>
                    <a href="view_catalog.html">
                        <div class="col-xs-12 col-md-2 col-md-offset-1 ">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="fa fa-book" style="font-size: 10em;"></div>
                                </div>
                                <div class="col-xs-12">
                                    <h2>View Library Catalog</h2>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="view_reservation.html">
                        <div class="col-xs-12 col-md-2 col-md-offset-1 ">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="fa fa-lightbulb-o" style="font-size: 10em;"></div>
                                </div>
                                <div class="col-xs-12">
                                    <h2>View all <br>rooms</h2>
                                </div>
                            </div>
                        </div>
                        <a id="upload">
                            <div class="col-xs-12 col-md-2 col-md-offset-1 ">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="fa fa-file-excel-o" style="font-size: 10em;"></div>
                                    </div>
                                    <div class="col-xs-12">
                                        <h2>Export XML<br>/Excel</h2>
                                    </div>
                                    <input id="file-input" type="file" name="name" style="display: none;" />
                                </div>
                            </div>
                        </a>
                </div>
            </div>
            <!-- /page content -->

            <!-- footer content -->
            <footer>
                <div class="pull-right">
                    De La Salle University SHS Online Library
                </div>
                <div class="clearfix"></div>
            </footer>
            <!-- /footer content -->
        </div>
    </div>
</body>
	<jsp:include page="admin_dependencies_script.jsp" />
</html>
