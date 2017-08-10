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
                                        <li><a href="admincreate.jsp"> Create New Account</a></li>
                                        <li><a href="ManageAccountServlet"> Manage Accounts</a></li>
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
                    	<c:forEach var = "user" items = "${users}">
                    		<tr>
                    			<td>${user.userid}</td>
		                        <td>${user.username}</td>
		                        <td>${user.emailaddress}</td>
		                        <td>${user.lastloggedin}</td>
		                        <td>${user.idnumber}</td>
		                        <c:if test="${user.roleid == 1}">
		                        	<td>Student</td>
		                        </c:if>
		                        <c:if test="${user.roleid == 2}">
		                        	<td>Library Manager</td>
		                        </c:if>
		                        <c:if test="${user.roleid == 3}">
		                        	<td>Library Staff</td>
		                        </c:if>
		                        <c:if test="${user.roleid == 4}">
		                        	<td>Administrator</td>
		                        </c:if>
		                        <c:if test="${user.roleid == 5}">
		                        	<td>Employee</td>
		                        </c:if>
		                        <c:if test="${user.roleid == 5}">
		                        	<td>Employee</td>
		                        </c:if>
		                        <c:if test="${user.status == -1}">
		                        	<td><span class="label label-danger">Expired</span></td>
		                        </c:if>
		                        <c:if test="${user.status == 1}">
		                        	<td><span class="label label-success">Active</span></td>
		                        </c:if>
		                        <c:if test="${user.status == 0}">
		                        	<td><span class="label label-info">Pending</span></td>
		                        </c:if>
		                        <td><button class="btn btn-block" id="editUserBtn" data-id="${user.userid}"
		                        data-username="${user.username}" data-email="${user.emailaddress}"
		                        data-lastloggedin="${user.lastloggedin}" data-idnum="${user.idnumber}"
		                        data-role="${user.roleid}" data-fname="${user.firstname}"
		                        data-mname="${user.middlename}" data-lname="${user.lastname}"
		                        data-bdate="${user.birthdate}" data-bmonth="${user.birthmonth}"
		                        data-byear="${user.birthyear}" data-status="${user.status}">View/Edit Details</button></td>
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
    <div id="editUser" class="modal fade" role="dialog">
        <div class="modal-dialog">
             <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">View/Edit User</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="row">
                            <div class="col-xs-6 col-md-2">
                                <div class="form-group">
                                    <label for="userid">User ID</label>
                                    <input type="text" class="form-control" id="userid" value="1">
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-5">
                                <div class="form-group">
                                    <label for="username">Username</label>
                                    <input type="text" class="form-control" id="username" value="Gandalf the Grey">
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-5">
                                <div class="form-group">
                                    <label for="lastloggedin">Last Logged In</label>
                                    <input type="text" class="form-control" id="lastloggedin" value="1998">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-md-4">
                                <div class="form-group">
                                    <label for="firstname">First Name</label>
                                    <input type="text" class="form-control" id="firstname" value="Hazel">
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-4">
                                <div class="form-group">
                                    <label for="middlename">Middle Name</label>
                                    <input type="text" class="form-control" id="middlename" value="Legaspi">
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-4">
                                <div class="form-group">
                                    <label for="lastname">Last Name</label>
                                    <input type="text" class="form-control" id="lastname" value="Brosas">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12 col-md-4">
                                <div class="form-group">
                                    <label for="email">Email Address</label>
                                    <input type="text" class="form-control" id="email" value="The Shire">
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-8">
                                <label for="bdate">Birthday</label>
                                <div class="form-group">
                                    <div class="col-md-3">
                                        <select type="text" class="form-control" id="bdate" required>
                                            <option selected disabled="true">Day</option>
                                            <option value="1">1</option> <option value="2">2</option>
                                            <option value="3">3</option> <option value="4">4</option> 
                                            <option value="5">5</option> <option value="6">6</option>
                                            <option value="7">7</option> <option value="8">8</option> 
                                            <option value="9">9</option> <option value="10">10</option> 
                                             <option value="11">11</option><option value="12">12</option>
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
                                    <div class="col-md-5">
                                        <select type="text" class="form-control" id="bmonth" required>
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
                                        <input type="text" class="form-control" id="byear" value="1997">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group">
                                    <label for="role">Role</label><br>
                                    <select class="form-control" id="role">
                                        <option value="1"> Student </option>
                                        <option value="2"> Library Manager </option>
                                        <option value="3"> Library Staff </option>
                                        <option value="4"> Administrator </option>
                                        <option value="5"> Employee </option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group">
                                    <label for="status">Account Status</label><br>
                                    <select class="form-control" id="status">
                                        <option value="-1"> Expired </option>
                                        <option value="0"> Pending </option>
                                        <option value="1"> Active </option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal" id="addButton">Edit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    
    <jsp:include page="admin_dependencies_script.jsp" />
    <script>
    	$(document).on("click", "#editUserBtn", function(){
    		$("#userid").val($(this).data("id"));
    		$("#userid").attr("disabled", "disabled");
    		$("#username").val($(this).data("username"));
    		$("#lastloggedin").val($(this).data("lastloggedin"));
    		$("#lastloggedin").attr("disabled", "disabled");
    		$("#firstname").val($(this).data("fname"));
    		$("#lastname").val($(this).data("lname"));
    		$("#middlename").val($(this).data("mname"));
    		$("#email").val($(this).data("email"));
    		$("#bdate").val($(this).data("bdate"));
    		$("#bmonth").val($(this).data("bmonth"));
    		$("#byear").val($(this).data("byear"));
    		$("#role").val($(this).data("role"));
    		$("#status").val($(this).data("status"));
    		
    		$("#editUser").modal('toggle');
    	});
    </script>
    
</body>
</html>