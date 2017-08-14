var maindiv = $("#main"), logindiv = $("#login-cont"), otherdiv = $("#other-cont");
var openSignin = $("#openSignin"), openOthers = $("#openOthers");
var logo = $("#logo"), error = $("#error"), emailError = $("#emailerror");
var opened = 0;

$(document).ready(function() {
	logindiv.hide();
	otherdiv.hide();
	error.hide();
	emailError.hide();

	$(document).on("click", "#openSignin", function() {
		logo.hide();
		maindiv.hide();
		logindiv.show(500);
		opened = 1;
	});

	$(document).on("click", "#back", function() {
		logo.show();
		maindiv.show();
		logindiv.hide();
		otherdiv.hide();
		opened = 0;
	});

	$(document).on("click", "#openOthers", function() {
		logo.hide();
		maindiv.hide();
		otherdiv.show(500);
		openend = 2;
	});
	
	$(document).on("click", "#guestBtn", function() {
		$("#guestLoginForm").submit();
	});

	$(document).on("click", "#reqBtn", function() {
		var email = $("#inputReqEmail").val();
		
		var data = {email:email}
		$.ajax({
			url: "ConfirmEmailServlet",
			type: "POST",
			data: data,
			success: function(status) {
				if(status == "taken") {
					emailError.show();
				} else {
					emailError.hide();
					 $(".form-request-acct").submit();
				}
			}
		});
	});

});