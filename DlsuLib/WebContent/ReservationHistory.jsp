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
	<title>Reservation History | De La Salle University - SHS Online Library</title>

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
			<h2>Reservation History</h2><br>
        	<div class="row">
        		<table class="table table-striped table-bordered">
				  <thead>
				  	<th>Room Type</th>
				  	<th>Start Time</th>
				  	<th>End Time</th>
				  	<th>Date/Time of Reservation</th>
				  	<th>Status</th>
				  </thead>
				  <!-- BORROW DETAILS -->
				  
				  <c:forEach var = "r" items = "${reservations}">
				  	<c:forEach var = "room" items = "${rooms}">
				  		<c:if test="${r.roomtimeslotid == room.roomid}">
				  			<tr>
				  				<c:if test="${room.roomtypeid == 1}">
		                        	<td>MichaelAngelo</td>
		                        </c:if>
		                        <c:if test="${room.roomtypeid == 2}">
		                        	<td>Donatello</td>
		                        </c:if>
		                        <c:if test="${room.roomtypeid == 3}">
		                        	<td>Leonardo</td>
		                        </c:if>
		                        <c:if test="${room.roomtypeid == 4}">
		                        	<td>Raphael</td>
		                        </c:if>
		                        <c:if test="${room.roomtypeid == 5}">
		                        	<td>Boticelli</td>
		                        </c:if>
					  			<td>${room.starttimeslot}</td>
					  			<td>${room.endtimeslot}</td>
					  			<td>${r.datereserved}</td>
					  			<td>
					  				<c:if test="${r.statusid == 3}">
			                        	<button type="button" class="btn btn-success btn-block">Reserved</button>
			                        </c:if>
			                        <c:if test="${r.statusid == -1}">
			                        	<button type="button" class="btn btn-info btn-block">Done</button>
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