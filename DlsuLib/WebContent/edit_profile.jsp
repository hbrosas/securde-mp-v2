<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1">
    <title>Search - De La Salle University - SHS Online Library</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans|Lato" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Slabo+27px" rel="stylesheet">

    <!-- Stylesheets -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="  css/borrow-history-style.css">
    <link rel="stylesheet" href="  css/edit-profile-style.css">
</head>

<body>
    <jsp:include page="navbar.jsp" />
    <div class="main-container">
        <form role="form">
            <div class="main-title">Edit Profile</div>

            <div class="row">
                <div class="col-md-6 col-xs-12">
                    <div class="form-inline">
                        <div class="form-group">
                            <label for="inputFirstName" style="font-family: 'Open Sans'; font-weight: 100;">First Name</label><br>
                            <input type="text" class="form-control" id="inputFirstName" value="Hazel Anne">
                        </div>
                        &nbsp; &nbsp;
                        <div class="form-group">
                            <label for="inputMiddleInitial" style="font-family: 'Open Sans'; font-weight: 100;">M.I.</label><br>
                            <input type="text" class="form-control" id="inputMiddleInitial" style="width: 40px;" value="M.">
                        </div>
                    </div>

                    <br>

                    <div class="form-group">
                        <label for="inputLastName" style="font-family: 'Open Sans'; font-weight: 100;">Last Name</label>
                        <input type="text" class="form-control " id="inputLastName" value="Brosas">
                    </div>
                    <div class="form-group">
                        <label for="inputEmail" style="font-family: 'Open Sans'; font-weight: 100;">Email</label>
                        <input type="text" class="form-control " id="inputEmail" value="hazel_brosas@dlsu.edu.ph">
                    </div>
                    <div class="form-group">
                        <label for="inputStudentNo" style="font-family: 'Open Sans'; font-weight: 100;">Student Number</label>
                        <input type="text" class="form-control " id="inputStudentNo" value="11428376">
                    </div>
                </div>
                <div class="col-md-6 col-xs-12 registration-form">
                    <div class="form-inline">
                        <div class="form-group">
                            <label for="input" style="font-family: 'Open Sans'; font-weight: 100;">Birthday</label><br>
                            <input input type="text" pattern="\d*" maxlength="2" placeholder="DD" class="form-control" id="inputDay" style="width:60px" value="01"> &nbsp;&nbsp; <span style="font-size: 1.5em">/</span> &nbsp;&nbsp;
                            <input input type="text" pattern="\d*" maxlength="2" placeholder="MM" class="form-control" id="inputMonth" style="width:60px" value="11"> &nbsp;&nbsp; <span style="font-size: 1.5em">/</span> &nbsp;&nbsp;
                            <input input type="text" pattern="\d*" maxlength="4" placeholder="YYYY" class="form-control" id="inputYear" style="width:80px" value="1997">
                        </div>
                    </div>

                    <br>

                    <div class="form-group">
                        <label for="inputPassword" style="font-family: 'Open Sans'; font-weight: 100;">New Password</label>
                        <input type="password" class="form-control " id="inputPassword">
                    </div>
                    <div class="form-group">
                        <label for="inputConfirmPassword" style="font-family: 'Open Sans'; font-weight: 100;">Confirm Password</label>
                        <input type="password" class="form-control " id="inputConfirmPassword">
                    </div>

                    <div class="form-group">
                        <label for="accountRole" style="font-family: 'Open Sans'; font-weight: 100;">Account Role</label>
                        <select class="form-control" id="accountRole" disabled>
  								<option>Student</option>
  								<option>Library Manager</option>
  								<option>Library Staff</option>
  							</select>
                    </div>
                    <br>
                    <div class="form-inline pull-right">
                        <div class="form-group">
                            <button type="submit" href="" class="btn btn btn-primary " style="background-color: #1b5e20; border-color: #1b5e20;">Save</button>
                            <button type="submit" href="" class="btn btn btn-primary " style="background-color: white; border-color: #1b5e20; color: #1b5e20;">Cancel</button>
                        </div>
                    </div>

                    <br>

                </div>
            </div>



        </form>
    </div>

    <!-- Scripts -->
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/navbar.js"></script>



</body>

</html>
