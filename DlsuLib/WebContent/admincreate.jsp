<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            	<br><br><br><br><br>
            	<div class="container">
            		<div class="row">
	                	<form class="form-signin" action="RegisterServlet" method="POST">
							<div class="row">
								<div class="col-md-2">
									<p class="input_title">Username</p>
									<input type="text" id="inputUser" name="username" class="form-control" placeholder="user1234" required autofocus>
								</div>
								<div class="col-md-2">
									<p class="input_title">Temporary Password</p>
									<input type="text" id="inputPassword" name="tempPassword" class="form-control" placeholder="******">
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-2">
									<p class="input_title">First Name</p>
									<input type="text" id="inputFirstName" name="firstName" class="form-control" placeholder="John" required>
								</div>
								<div class="col-md-2">
									<p class="input_title">Middle Name</p>
									<input type="text" id="inputMiddleName" name="middleName" class="form-control" placeholder="Middle" required>
								</div>
								<div class="col-md-2">
									<p class="input_title">Last Name</p>
									<input type="text" id="inputLastName" name="lastName" class="form-control" placeholder="Doe" required>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-2">
									<p class="input_title">ID Number</p>
									<input type="text" id="inputIDnumber" name="idNumber" class="form-control" placeholder="ID Number" required>
								</div>
								<div class="col-md-4">
									<p class="input_title">Birthday</p>
									<div class="col-md-4">
										<select type="text" class="form-control" id="inputBirthdate" name="bDate" required>
											<option selected disabled="true">Day</option>
											<option value="1">1</option> <option value="2">2</option>
											<option value="3">3</option> <option value="4">4</option> 
											<option value="5">5</option> <option value="6">6</option>
											<option value="7">7</option> <option value="8">8</option> 
											<option value="9">9</option> <option value="10">10</option> 
											<option value="10">10</option> <option value="11">11</option>
											<option value="12">12</option> <option value="12">12</option>
											<option value="13">13</option> <option value="14">14</option>
											<option value="15">15</option> <option value="16">16</option>
											<option value="17">17</option> <option value="18">18</option>
											<option value="19">19</option> <option value="20">20</option>
											<option value="21">21</option> <option value="22">22</option>
											<option value="23">23</option> <option value="24">24</option>
											<option value="25">25</option> <option value="26">26</option>
											<option value="27">27</option> <option value="28">28</option>
											<option value="29">29</option> <option value="30">30</option>
											<option value="31">31</option>
										</select>
									</div>
									<div class="col-md-4">
										<select type="text" class="form-control" id="inputBirthMonth" name="bMonth" required>
											<option selected disabled="true">Month</option>
											<option value="1">January</option>
											<option value="2">February</option>
											<option value="3">March</option>
											<option value="4">April</option>
											<option value="5">May</option>
											<option value="6">June</option>
											<option value="7">July</option>
											<option value="8">August</option>
											<option value="9">September</option>
											<option value="10">October</option>
											<option value="11">November</option>
											<option value="12">December</option>
										</select>
									</div>
									<div class="col-md-4">
										<input type="text" id="inputBirthyear" class="form-control" name="bYear" placeholder="Year" required>
									</div>
								</div>
							</div>
							<br>								
							<div class="row">
								<div class="col-md-4">
									<p class="input_title">User Role</p>
									<select type="text" id="role" name="role" class="form-control" required>
										<option selected disabled="true">Choose role</option>
										<option value="1"> Student </option>
										<option value="2"> Library Manager </option>
										<option value="3"> Library Staff </option>
										<option value="4"> Administrator </option>
										<option value="5"> Employee </option>
									</select>
								</div>
								<div class="col-md-2">
									<br>
									<button class="btn btn-small btn-success btn-block submitbtn" type="submit">CREATE ACCOUNT</button>
								</div>
							</div>
						</form><!-- /form -->
	                </div>
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
