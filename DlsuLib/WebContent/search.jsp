<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="edu.securde.beans.User" %>
<%@ page import="org.owasp.encoder.Encode" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1">
	<title>Search Results | De La Salle University - SHS Online Library</title>

	<!-- Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans|Lato" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet">

	<!-- Stylesheets -->
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="css/search.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/sweetalert.css">
</head>

<body>
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				<a class="navbar-brand" href="#">DLSU SHS Online Library</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="SearchServlet"> <span class="glyphicon glyphicon-search"></span> Search</a> <span class="sr-only">(current)</span></a></li>
					<li class="active"><a href="RoomServlet"> Reserve Meeting Room <span class="sr-only">(current)</span></a></li>
					<!-- <li><a href="cart.html"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li> -->
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${user.firstname} ${user.lastname}<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="borrow_history.jsp">Borrow History</a></li>
							<li><a href="#">Reservation History</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="edit_profile.html">Edit Profile</a></li>
							<li><a href="LogoutServlet">Logout</a></li>	
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>

	<div class="main-container">
		<div class="container">
        	<div class="row">
        		<c:forEach var="c" items="${catalogs}">
        		<div class="col-sm-6 col-md-4 mt-4"> <!-- start catalog -->
	                <div class="card open-catalog" data-toggle="modal" data-id="${c.catalogid}" data-status="${c.status}" data-title="${c.title}" 
	                data-author="${c.author}" data-publisher="${c.publisher}" data-year="${c.year}" data-location="${c.location}" 
	                data-tags="${c.tags}">
	                    <img class="card-img-top" src="images/book.png">
	                    <div class="card-block">
	                    	<c:if test="${c.status == 2}">
	                    		<span class="label label-danger">Out</span>
	                    	</c:if>
	                    	<c:if test="${c.status == 3}">
	                    		<span class="label label-info">Reserved</span>
	                    	</c:if>
	                    	<c:if test="${c.status == 4}">
	                    		<span class="label label-success">Available</span>
	                    	</c:if>
	                    	
	                    	
	                        <h4 class="card-title">${c.title}</h4>
	                        <div class="card-text">
	                            <b>Author:</b> <span>${c.author}</span><br>
	                            <b>Publisher:</b> <span>${c.publisher}</span><br>
	                        	<b>Year:</b> <span>${c.year}</span><br>
	                        	<b>Location:</b> <span>${c.location}</span><br>
	                        </div>
	                    </div>
	                    <div class="card-footer">
	                        <span class="float-right">${c.tags}</span>
	                    </div>
	                </div>
            	</div> <!-- end catalog -->
            	</c:forEach>
        	</div>
        </div>
	</div>

	<div class="modal fade modal-book" id="catalogModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h1 class="modal-title" id="card-title">How to be badass</h1>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-3">
							<img src="images/book.png" class="img-responsive" alt="Responsive image">
						</div>
						<div class="col-md-9">
							<b>Author:</b> <span id="card-author">the author</span><br>
                            <b>Publisher:</b> <span id="card-publisher">the publisher</span><br>
                        	<b>Year:</b> <span id="card-year">2001</span><br>
                        	<b>Location:</b> <span id="card-location">AB12.125C.2001</span>
						</div>
					</div>

					<h2>Reviews 
						<button class="btn btn-warning btn-small btn-review pull-right" id="addReviewBtn" type="submit">Add Review</button>
					</h2>
					<hr>
					<div class="container">
						<div class="row" id="add-review">
							<div class="col-md-6">
								<textarea class="form-control" rows="3" placeholder="Enter your review here" id="review-details"></textarea>
								<button class="btn btn-success btn-small btn-review pull-right" id="submit-review" type="submit">Submit</button>
								<button class="btn btn-danger btn-small btn-review pull-right" id="cancel-review">Cancel</button>
							</div>
						</div>
						<div class="review-list" id="review-list">
							<!-- Review -->
							<article class="row">
								<div class="col-md-11 col-sm-11">
									<div class="panel panel-default arrow left">
										<div class="panel-body">
											<header class="text-left">
												<div class="comment-user">
													<span class="glyphicon glyphicon-user" aria-hidden="true"></span> 
													That Guy
												</div>
												<time class="comment-date" datetime="16-12-2014 01:05">
													<span class="glyphicon glyphicon-time" aria-hidden="true"></span> 
													Dec 16, 2014
												</time>
											</header>
											<div class="comment-post">
												<p>
													Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
												</p>
											</div>
										</div>
									</div>
								</div>
							</article>
							<!-- END REVIEW -->
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-success" id="reserveButton">Borrow Catalog</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="signInModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h3 class="modal-guest-title">You are not yet signed in?</h3> <!-- if Guest -->
					<h3 class="modal-temp-title">Your Account is still temporary</h3> <!-- if temporary -->
				</div>
				<div class="modal-body">
					<!-- Guest -->
					<div class="row modal-body" id="guest_modal_body">
						<div class="alert alert-danger" id="error" role="alert">Login Error. Invalid Username/Password</div>
						<form class="form-signin">
							<p class="input_title">Username/Email</p>
							<input type="text" id="inputEmail" class="form-control" placeholder="user@dlsu.edu.ph" required autofocus>
							<br>
							<p class="input_title">Password</p>
							<input type="password" id="inputPassword" class="form-control" placeholder="******" required>
							<br>
							<div class="inline-form">
								<div class="form-group">
									<label class="checkbox-inline remember" for="checkRememberMe">
										<input type="checkbox" id="checkRememberMe" value="remember">
										Remember Me
									</label>
									<a class="pull-right forgot" href="#">Forgot password?</a>
								</div>
							</div>
						</form><!-- /form -->
					</div>
					<!-- End Guest -->
					<!-- Temp -->
					<div class="row modal-body" id="temp_modal_body">
						<div class="alert alert-info" id="error" role="alert">Since your account is still temporary, you are now allowed to borrow catalogs. Please wait for the administrator to confirm your account or call <i>214-0678.</i></div>
					</div>
					<!-- End Temp -->
				</div>
				<div class="modal-footer">
					<!-- Guest -->
					<button type="button" class="btn btn-success" id="guessButton">Sign In</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
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

	<script type="text/javascript">
		var addReviewBtn = $("#addReviewBtn"), addReview = $("#add-review");
		var reviewList = $("#review-list");

		$('#reserveButton').click(function(){
		   
		  var catalogId = $(this).data('id');
		  var catalogTitle = $(this).data('title');
		   $.ajax({
				url: "BorrowServlet",
				type: "POST",
				 data: { 'catalogId': catalogId },
				success: function(status) {
					if(status == "error") {
						swal(catalogTitle, "there was an error in your request", "error")
					} else {
						console.log("check if correct swal");
						swal({
							 title: catalogTitle, 
							 text:"has been successfully borrowed", 
							 type: "success",
							 showCancelButton:false
							 },
							 function(isConfirm){
								 if(isConfirm){
									 location.reload();
								 }
							 })
							 
						
						console.log("Submit");
					}
				}
			});
		});

		$(document).on("click", ".open-catalog", function() {
			addReviewBtn.show();
			reviewList.show();
			console.log($(this).data('status'));
			if($(this).data('status') == 4){
				$('#reserveButton').show();
			}else{
				$('#reserveButton').hide();
			}
			var catalogId = $(this).data('id');
			var catalogTitle = $(this).data('title');
			$.ajax({
				  type: "GET",
				  url: "ReviewServlet",
				  data: { 'catalogId': catalogId },
				  success : function(data) {
					  $("#review-list").empty();
		         	if(data == "No Reviews."){
		         		console.log("No Reviews.");
		         		$("#review-list").append("<h3>No Reviews.</h3>");
		         	}else{
		         		var reviews = jQuery.parseJSON(data);
		         		$.each(reviews, function(reviewID, review){
		         			var reviewHTML = '<article class="row">'+
							'<div class="col-md-11 col-sm-11">'+
								'<div class="panel panel-default arrow left">'+
									'<div class="panel-body">'+
										'<header class="text-left">'+
											'<div class="comment-user">'+
												'<span class="glyphicon glyphicon-user" aria-hidden="true"></span>'+
												' '+ review.userid +
											'</div>'+
											'<time class="comment-date" datetime="16-12-2014 01:05">'+
												'<span class="glyphicon glyphicon-time" aria-hidden="true"></span> '+
											' '+review.datereviewed+'</time>'+
										'</header>'+
										'<div class="comment-post">'+
											'<p>'+
												' '+ review.review+''
											'</p>'+
										'</div>'+
									'</div>'+
								'</div>'+
							'</div>'+
						'</article>'
						$("#review-list").append(reviewHTML);
		         		});
			         	console.log(reviews);
		         	}

		          }
				});
			addReview.hide();
			$("#add-review").hide();
			$("#card-title").text($(this).data('title'));
			$("#card-author").text($(this).data('author'));
			$("#card-publisher").text($(this).data('publisher'));
			$("#card-year").text($(this).data('year'));
			$("#card-location").text($(this).data('location'));
			$("#catalogModal").modal('show');
			$("#reserveButton").data('title',$(this).data('title'));
			$("#reserveButton").data('id',$(this).data('id'));
			$("#submit-review").data('id',$(this).data('id'));
			$("#submit-review").data('title',$(this).data('title'));
		});

		$(document).on("click", "#addReviewBtn", function() {
			addReviewBtn.hide();
			reviewList.hide();
			addReview.show();
		});
		
		$(document).on("click", "#submit-review", function() {
			var reviewDetails = $("#review-details").val();
			var catalogId = $(this).data('id');
			var catalogTitle = $(this).data('title');
			  console.log("catalog id: " + catalogId + "catalog title: " + catalogTitle);
			   $.ajax({
					url: "ReviewServlet",
					type: "POST",
					 data: { 'catalogId': catalogId,
							 'review' : reviewDetails	
					 },
					success: function(status) {
						if(status == "error") {
							swal(catalogTitle, "there was an error in your request", "error")
						} else {
							console.log("check if correct swal");
							swal({
								 title: catalogTitle, 
								 text:"has been successfully reviewed", 
								 type: "success",
								 showCancelButton:false
								 },
								 function(isConfirm){
									 if(isConfirm){
										 location.reload();
									 }
								 })
								 
							
							console.log("Submit");
						}
					}
				});
		});
		
		$(document).on("click", "#cancel-review", function() {
			addReviewBtn.show();
			reviewList.show();
			addReview.hide();
		});
	</script>
</body>

</html>
