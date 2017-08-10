var maindiv = $("#main"), logindiv = $("#login-cont"), otherdiv = $("#other-cont");
var openSignin = $("#openSignin"), openOthers = $("#openOthers");
var logo = $("#logo"), error = $("#error");
var opened = 0;

$(document).ready(function() {
	logindiv.hide();
	otherdiv.hide();
	error.hide();

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
	
	$(document).on("click", "#signin", function() {
		var username = $("#inputEmail").val();
		var password = $("#inputPassword").val();
		var remember;
		if($('#checkRememberMe').is(":checked")){
			remember = "yes";
		} else remember = "no";
		
		var data = {user:username, password:password, remember:remember}
		$.ajax({
			url: "LoginServlet",
			type: "POST",
			data: data,
			success: function(status) {
				if(status == "error") {
					error.show();
				} else {
					error.hide();
					$("#signin").submit();
				}
			}
		});
	});
});