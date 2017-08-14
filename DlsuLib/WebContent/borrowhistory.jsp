<%@ page import="edu.securde.beans.User" %>
<%  
	if (session.getAttribute("user") != null){ 
		 User user=(User)session.getAttribute("user"); 
		 int role = user.getRoleid();
		if( role == 1 || role == 5 ) {
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="edu.securde.beans.User" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1">
	<title>Borrow History | De La Salle University - SHS Online Library</title>

	<!-- Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Lato" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet">

	<!-- Stylesheets -->
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="css/borrowhistory.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/sweetalert.css">
</head>

<body>
	<jsp:include page="navbar.jsp" />
	<div class="main-container">
		<div class="container">
			<h2>Borrow History</h2><br>
        	<div class="row">
        		<table class="table table-striped table-bordered">
				  <thead>
				  	<th>Catalog Type</th>
				  	<th>Catalog Title</th>
				  	<th>Date Borrowed</th>
				  	<th>Anticipated Date Return</th>
				  	<th>Status</th>
				  </thead>
				  <!-- BORROW DETAILS -->
				  
				  <c:forEach var = "b" items = "${borrows}">
				  	<c:forEach var = "c" items = "${catalogs}">
				  		<c:if test="${b.catalogid == c.catalogid}">
				  			<tr>
				  				<c:if test="${c.catalogtype == 1}">
		                        	<td>Book</td>
		                        </c:if>
		                        <c:if test="${c.catalogtype == 2}">
		                        	<td>Magazine</td>
		                        </c:if>
		                        <c:if test="${c.catalogtype == 3}">
		                        	<td>Thesis</td>
		                        </c:if>
					  			<td>${c.title}</td>
					  			<td>${b.dateborrowed}</td>
					  			<td>${b.dateexpectreturn}</td>
					  			<td>
					  				<c:if test="${b.statusid == 3}">
			                        	<button type="button" class="btn btn-success btn-block">Reserved</button>
			                        </c:if>
			                        <c:if test="${b.statusid == 2}">
			                        	<button type="button" class="btn btn-warning btn-block">On Hand</button>
			                        </c:if>
			                        <c:if test="${b.statusid == -1}">
			                        	<button type="button" class="btn btn-info btn-block">Returned</button>
			                        </c:if>
							  	</td>
							</tr>
				  		</c:if>
				  	</c:forEach>
				  </c:forEach>
				</table>
        	</div>
        </div>
	</div>

	<!-- Scripts -->
	<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>

	<!-- Sweet Alert -->
	<script type="text/javascript" src="js/sweetalert.min.js"></script>

	<!-- List Catalog Script -->
	<script type="text/javascript" src="js/list-catalog.js">
	</script>
</body>

</html>
<% }} else { %> <jsp:include page="forbidden.jsp" /> <% } %>