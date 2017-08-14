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

    <title>Create Catalog | De La Salle University SHS Online Library</title>
	<jsp:include page="admin_dependencies.jsp" />
    <script type="text/javascript" src="js/validation.js"></script>
</head>

<body class="nav-md">
	<% User user=(User)session.getAttribute("user");
	 int role = user.getRoleid();
		if( role == 2 || role == 3 || role == 4 ) {
		%>
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
                                <% if(user.getRoleid() == 4) {%>
                                <li><a><i class="fa fa-user"></i> Accounts <span class="fa fa-chevron-down"></span></a>
                                     <ul class="nav child_menu">
                                        <li><a href="admincreate.jsp"> Create New Account</a></li>
                                        <li><a href="ManageAccountServlet"> Manage Accounts</a></li>
                                    </ul>
                                </li>
                                <% } %>
                                <% if(user.getRoleid() == 2 || user.getRoleid() == 3) {%>
                                <li><a><i class="fa fa-book"></i> Catalog <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="add_books.jspl">Add Catalog</a></li>
                                        <li><a href="ManageCatalogServlet">Manage Catalogs</a></li>
                                    </ul>
                                </li>
                                <% } %>
                                <% if(user.getRoleid() == 2) {%>
                                <li><a><i class="fa fa-lightbulb-o"></i>Rooms <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="view_reservation.html">Manage Reservations</a></li>
                                    </ul>
                                </li>
                                <% } %>
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
                                    <li><a href="LogoutServlet"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
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
	                	<form class="form-signin" action="AddCatalogServlet" method="POST">
							<div class="row">
								<div class="col-md-2">
									<p class="input_title">Title</p>
									<input type="text" id="inputTitle" name="title" onkeyup="Special(this)" class="form-control" placeholder="title" required autofocus>
								</div>
								<div class="col-md-2">
									<p class="input_title">Author</p>
									<input type="text" id="inputAuthor" name="author" onkeyup="Validate(this)" class="form-control" placeholder="author">
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-2">
									<p class="input_title">Year</p>
									<input type="text" id="inputYear" name="year" onkeyup="validatephone(this)" class="form-control" placeholder="year" required>
								</div>
								<div class="col-md-2">
									<p class="input_title">Publisher</p>
									<input type="text" id="inputPublisher" name="publisher" onkeyup="validatelocation(this)" class="form-control" placeholder="Publisher" required>
								</div>
								<div class="col-md-2">
									<p class="input_title">Location</p>
									<input type="text" id="inputLocation" name="location" onkeyup="validatelocation(this)" class="form-control" placeholder="Location" required>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-md-4">
									<p class="input_title">Catalog Type</p>
									<select type="text" id="catalogType" name="catalogType" class="form-control" required>
										<option selected disabled="true">Choose Catalog Type</option>
										<option value="1"> Book </option>
										<option value="2"> Magazine </option>
										<option value="3"> Thesis </option>
									</select>
								</div>
								<div class="col-md-4">
										<input type="text" id="inputTags" onkeyup="validatelocation(this)" class="form-control" name="tags" placeholder="Tags" required>
									</div>
								</div>
							</div>
							<br>								
							<div class="row">
								<div class="col-md-2">
									<br>
									<button class="btn btn-small btn-success btn-block submitbtn" type="submit">ADD BOOK</button>
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
    <script type="text/javascript" src="js/validation.js"></script> 

</body>
	<jsp:include page="admin_dependencies_script.jsp" />
</html>
<% } else { %> <jsp:include page="forbidden.jsp" /> <% } %>