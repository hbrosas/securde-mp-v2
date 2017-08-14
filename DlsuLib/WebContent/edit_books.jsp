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
                                        <li><a href="add_books.jsp">Add Catalog</a></li>
                                        <li><a href="ManageCatalogServlet">Manage Catalogs</a></li>
                                    </ul>
                                </li>
                                <% } %>
                                <% if(user.getRoleid() == 2) {%>
                                <li><a><i class="fa fa-lightbulb-o"></i>Rooms <span class="fa fa-chevron-down"></span></a>
                                    <ul class="nav child_menu">
                                        <li><a href="AdminReserveServlet">Manage Reservations</a></li>
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
            	<div class="main-container container">
                  <table id="usersTable" class="display" cellspacing="0" width="100%">
                    <thead>
                      <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Publisher</th>
                        <th>Category</th>
                        <th>Location</th>
                        <th>Tags</th>
                        <th>Status</th>
                        <th> </th>
                      </tr>
                    </thead>

                    <tbody>
                    	<c:forEach var = "c" items = "${catalogs}">
                    		<tr>
                    			<td>${c.title}</td>
		                        <td>${c.author}</td>
		                        <td>${c.publisher}</td>
		                        <c:if test="${c.catalogtype == 1}">
		                        	<td>Book</td>
		                        </c:if>
		                        <c:if test="${c.catalogtype == 2}">
		                        	<td>Magazine</td>
		                        </c:if>
		                        <c:if test="${c.catalogtype == 3}">
		                        	<td>Thesis</td>
		                        </c:if>
		                        <td>${c.location}</td>
		                        <td>${c.tags}</td>
		                        <c:if test="${c.status == 4}">
		                        	<td><span class="label label-success">Available</span></td>
		                        </c:if>
		                        <c:if test="${c.status == 2}">
		                        	<td><span class="label label-danger">Out</span></td>
		                        </c:if>
		                        <c:if test="${c.status == 3}">
		                        	<td><span class="label label-info">Reserved</span></td>
		                        </c:if>
		                        <td><button class="btn btn-block" id="editCatalogBtn" data-id="${c.catalogid}"
		                        data-title="${c.title}" data-author="${c.author}" data-publisher="${c.publisher}"
		                        data-type="${c.catalogtype}" data-location="${c.location}" data-tags="${c.tags}"
		                        data-status="${c.status}">View/Edit Details</button></td>
		                    </tr>
                    	</c:forEach>
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
    
    <!-- View/Edit -->
    <div id="editBook" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">View/Edit Catalog</h4>
                </div>
                <div class="modal-body">
                    <form action="UpdateCatalogServlet" method="POST" id="updateCatalogForm">
                    	<input type="hidden" id="catalogid" name="catalogid">
                        <div class="form-group">
                            <label for="title">Catalog title:</label>
                            <input type="text" class="form-control" onkeyup="Special(this)" name="title" id="title" value="Magic 101">
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-md-4">
                                <div class="form-group">
                                    <label for="author">Book Author:</label>
                                    <input type="text" class="form-control" onkeyup="Special(this)" name="author" id="author" value="Dumbledore">
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-4">
                                <div class="form-group">
                                    <label for="publisher">Publisher:</label>
                                    <input type="text" class="form-control" onkeyup="validatelocation(this)" name="publisher" id="publisher" value="Gandalf the Grey">
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-4">
                                <div class="form-group">
                                    <label for="year">Year:</label>
                                    <input type="text" class="form-control" onkeyup="validatephone(this)" name="year" id="year" value="1998">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group">
                                    <label for="category">Category:</label><br>
                                    <select class="form-control" name="catalogtype">
                                  <option value="1" selected>Book</option>
                                  <option value="2">Magazine</option>
                                  <option value="3">Thesis</option>
                                </select>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group">
                                    <label for="availability">Availability:</label><br>
                                    <select class="form-control" name="status">
                                  <option value="4" selected>Available</option>
                                  <option value="2">Out</option>
                                  <option value="3">Reserved</option>
                                </select>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group">
                                    <label for="author">Location:</label>
                                    <input type="text" class="form-control" onkeyup="validatelocation(this)" id="location" name="location" value="The Shire">
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group">
                                    <label for="tags">Tags:</label>
                                    <input type="text" class="form-control"  onkeyup="validatelocation(this)" id="tags" name="tags" value="wizardry, magic, muggle">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal" id="editButton">Edit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>

    
    <jsp:include page="admin_dependencies_script.jsp" />
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
<% } else { %> <jsp:include page="forbidden.jsp" /> <% } %>