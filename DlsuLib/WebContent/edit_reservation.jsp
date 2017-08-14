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

    <title>Manage Catalogs | De La Salle University SHS Online Library</title>
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
                                        <li><a href="admincreate.jsp"> Create New Account</a></li>
                                        <li><a href="ManageAccountServlet"> Manage Accounts</a></li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-book"></i> Catalog <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="add_books.jsp">Add Catalog</a></li>
                                        <li><a href="ManageCatalogServlet">Manage Catalogs</a></li>
                                    </ul>
                                </li>
                                <li><a><i class="fa fa-lightbulb-o"></i>Rooms <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="AdminReserveServlet">Manage Reservations</a></li>
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
            	<div class="main-container container">
            	<div class="row">
            		<div class="col-lg-12">
            			 <div class="form-group">
						    <label for="inputDate col-lg-12">Date:</label>
						    <select class="form-control col-lg-12" id="inputDate">
						      <c:forEach var = "d" items = "${dates}">
						      <option>${d}</option>
						      </c:forEach>
						    </select>
						  </div>
            		</div>
            	</div>
                  <table id="reserationsTable" class="display" cellspacing="0" width="100%">
                    <thead>
                      <tr>
                        <th>Room</th>
                        <th>Time Slot</th>
                        <th>User</th>
                        <th>Status</th>
                      </tr>
                    </thead>

                    <tbody>
                    	
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
    

    
    <jsp:include page="admin_dependencies_script.jsp" />
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/gentella.min.js"></script>
    <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/admin_reserve.js"></script>
    <script>
    	$(document).on("click", "#editCatalogBtn", function(){                
    		$("#catalogid").val($(this).data("id"));
    		$("#title").val($(this).data("title"));
    		$("#author").val($(this).data("author"));
    		$("#publisher").val($(this).data("publisher"));
    		$("#catalogtype").val($(this).data("type"));
    		$("#location").val($(this).data("location"));
    		$("#tags").val($(this).data("tags"));
    		$("#status").val($(this).data("status"));
    		
    		$("#editBook").modal('toggle');
    	});
    	
    	$(document).on("click", "#editButton", function() {
    		$("#updateCatalogForm").submit();
    	});
    </script>
    
</body>
</html>