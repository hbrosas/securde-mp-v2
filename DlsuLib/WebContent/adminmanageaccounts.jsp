<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="edu.securde.beans.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Create Account | De La Salle University SHS Online Library</title>
	<jsp:include page="admin_dependencies.jsp" />
</head>

<body class="nav-md">
	<% User user=(User)session.getAttribute("ucx"); %>
    <div class="container body">
        <div class="main_container">
            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">
                    <div class="navbar nav_title" style="border: 0;">
                        <a href="#" class="site_title"><i class="fa fa-paw"></i> <span> Admin Panel</span></a>
                    </div>
                    <div class="clearfix"></div>
                    <div class="profile clearfix">
	                    <div class="profile clearfix">
	                        <div class="profile_info">
	                            <span>Welcome,</span>
	                            <h2> <%=user.getFirstname() %> <%=user.getLastname()%></h2>
	                        </div>
	                    </div>
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
                                        <li><a href="#"> Create New Account</a></li>
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
                                    <img src="images/user.png" alt=""><%=user.getFirstname() %> <%=user.getLastname()%>
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
                  <table id="usersTable" class="display" cellspacing="0" width="100%">
                    <thead>
                      <tr>
                        <th>User ID</th>
                        <th>Username</th>
                        <th>Email Address</th>
                        <th>Last Logged In</th>
                        <th>ID Number</th>
                        <th>Role</th>
                        <th>Status</th>
                        <th> </th>
                      </tr>
                    </thead>

                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>hazelanne</td>
                        <td>hazelbrosas@gmail.com</td>
                        <td>Date</td>
                        <td>11425598</td>
                        <td>Student</td>
                        <td><span class="label label-success">Active</span></td>
                        <td><button class="btn btn-block" data-toggle="modal" data-target="#editUser">View/Edit Details</button></td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>hazelanne</td>
                        <td>hazelbrosas@gmail.com</td>
                        <td>Date</td>
                        <td>11425598</td>
                        <td>Student</td>
                        <td><span class="label label-success">Active</span></td>
                        <td><button class="btn btn-block" data-toggle="modal" data-target="#editUser">View/Edit Details</button></td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>hazelanne</td>
                        <td>hazelbrosas@gmail.com</td>
                        <td>Date</td>
                        <td>11425598</td>
                        <td>Student</td>
                        <td><span class="label label-success">Active</span></td>
                        <td><button class="btn btn-block" data-toggle="modal" data-target="#editUser">View/Edit Details</button></td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>hazelanne</td>
                        <td>hazelbrosas@gmail.com</td>
                        <td>Date</td>
                        <td>11425598</td>
                        <td>Student</td>
                        <td><span class="label label-success">Active</span></td>
                        <td><button class="btn btn-block" data-toggle="modal" data-target="#editUser">View/Edit Details</button></td>
                      </tr>
                    </tbody>
                  </table>
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