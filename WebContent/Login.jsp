<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login hare</title>
<meta charset="UTF-8>
	<meta name="viewport" content="width=device-width" initial-scale=1">
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/popper.min.js"></script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/fontawesome.min.css">
	<link rel="stylesheet" href="css/all.min.css">
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/javascriptfile.js"></script>
	<style type="text/css">
	body{
	background-color: rgb(200,200,200);
	background-position: top center;
	background-size:cover;
	height: 100vh;
	width: 100%;
	
	}
	.col-lg-8{
	background: url("image/slider/5.jpg");
	background-position: center center;
	background-size:cover;
	width: 100%;
	}
	.col-lg-4{
	background: url("image/slider/k.jpg");
	background-position: top center;
	background-size:cover;
	padding:0px;
	margin:0px;
	width: 100%;
	}
	.input-container {
		display: -ms-flexbox;
		display: flex;
	}
	.icon{
		padding: 10px;
		background: dodgerblue;
		min-width: 50px;
		height:38px;
		text-align: center;
		color: white;
	}
	label{
	color: blue;
	font-weight: bold;
	}
	#wlcom{
		color: red;
		font-style: italic;
		text-align: center;
		padding: 150PX;
		font-size: 35px;
	}
	#wlcom:hover {
	color: blue;
	}
@media screen and (max-width:700px){
	#wlcom{
	font-size: 28px;
	}
}
</style>
</head>
<body>
  	<div class="container pt-xl-5" style="padding: 0px;">
    	<div class="row " style="padding: 0px; margin: 0px;">
      		<div class="col-lg-4 bg-light my-4"style="border-radius:5% 0% 0% 5%;">
          		<div class="card-body">
<!--------------------------------------------------------Login Section--------------------------------------------------------------->
            		<form class="form-signin" action="Admin" method="post" id="mainform">
            			<h5 class="card-title text-center text-white">Login</h5>
            			<label for="inputId">Admin Id</label>
              			<div class="input-container">
              				<c:if test="${error==true}">
								<p Style="color: red;">${message}</p>
							</c:if>
							<i class="fa fa-user icon"></i>
                			<input type="text" id="inputId"name="inputId" class="form-control" placeholder="admin id"value="${cookie.id.value }" required autofocus>
              			</div>
              			<label for="inputPassword">Password</label>
              			<div class="input-container">
              				<i class="fa fa-key icon"></i>
                			<input type="password" id="inputPassword" name="inputPassword"class="form-control" placeholder="Password"value="${cookie.password.value }" required>
              			</div>
              			<div class="input-container">
                			<label class="control-label visible" for="forget"><a href="#forget" class="text-warning" style="text-decoration: none;"onclick="show1();">Forget password</a></label>
              			</div>
              			<button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" name="action" value="login">Login</button>
              			<br>
              			
              			<p class="col-sm-12" for="signin" style="margin: 0px;padding: 0px"><a href="#sign" class="text-white bg-primary text-uppercase" style="text-decoration: none; display: block; text-align: center;padding: 12px;border-radius:5px;"onclick="show2()">Signin</a></p>
              			<hr class="my-3">
              				<button class="btn btn-lg btn-google btn-block text-uppercase text-danger" type="submit"><i class="fa fa-google mr-2"></i> Sign in with Google</button>
              				<button class="btn btn-lg btn-facebook btn-block text-uppercase text-danger" type="submit"><i class="fa fa-facebook-square mr-2"></i> Sign in with Facebook</button>
              		</form>

          		</div>
        	</div>
<!--------------------------------------------------------SignUp Section-------------------------------------------------------------->
        	<div class="col-lg-8 my-4" style="border-radius:0% 5% 5% 0%;">
        		<h1 id="wlcom">WELCOME IN MY<BR> RAJPOOTANA PUBLIC SCHOOL</h1>
              		<form action="Admin" id="sign" method="post" style="display: none;">
              			<!--<h5 class="card-title text-center">SignUp form</h5>  -->
    					<div class="row" style="padding: 20px;">
    						<div class="col-sm-3"></div>
    						<div class="col-sm-6">
    							<input type="text" id="name"name="name" class="form-control" placeholder="Admin Name" required autofocus>
    							<label for="name">Admin Name</label>
    						</div>
    						<div class="col-sm-3"></div>
    						<div class="col-sm-3"></div>
    						<div class="col-sm-6">
    							<input type="number" id="no"name="no" class="form-control" placeholder="Mobile No" required autofocus>
    							<label for="no">Mobile No</label>
    						</div>
    						<div class="col-sm-3"></div>
    						<div class="col-sm-3"></div>
    						<div class="col-sm-6">
    							<input type="text" id="newid"name="newid" class="form-control" placeholder="Admin Id" required autofocus>
    							<label for="newid">Admin Id</label>
    						</div>
    						<div class="col-sm-3"></div>
    						<div class="col-sm-3"></div>
    						<div class="col-sm-6">
    							<input type="text" id="newpass"name="newpass" class="form-control" placeholder="Password" required autofocus>
    							<label for="name">Admin Password</label>
    						</div>
    						<div class="col-sm-3"></div>
    						<div class="col-sm-3"></div>
    						<div class="col-sm-6">
    							<input type="text" id="newaccount"name="newaccount" class="form-control" placeholder="Account no" required autofocus>
    							<label for="newaccount">Account No</label>
    						</div>
    						<div class="col-sm-3"></div>
    						<div class="col-sm-3"></div>
    						<div class="col-sm-6">
    							<input type="text" id="newifsc"name="newifsc" class="form-control" placeholder="IFSC Code" required autofocus>
    							<label for="name">Ifsc Code</label>
    						</div>
    						<div class="col-sm-3"></div>
    						<div class="col-sm-3"></div>
    						<div class="col-sm-6">
    							<button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" name="action" value="signin">Signin</button>
    						</div>
    						<div class="col-sm-3"></div>
    						<div class="col-sm-3"></div>
    					</div>
    				</form>
<!----------------------------------------------------Forget Password Section--------------------------------------------------------->	
            		<form action="Admin" id="forget" style="display: none;" method="post">
    					<div class="row my-5" >
    						<div class="col-sm-3"></div>
    						<div class="col-sm-6 ">
    							<input type="text" id="adminid"name="adminid" class="form-control" placeholder="Admin id" required autofocus>
    							<label for="adminid">Admin Id</label>	
    						</div>
    						<div class="col-sm-3"></div>
    						<div class="col-sm-3"></div>
    						<div class="col-sm-6 ">
    							<input type="password" id="adminpass"name="adminpass" class="form-control" placeholder="Admin password" required autofocus>
    							<label for="adminpass">New Admin Password</label>
    							<div class="col-sm-3"></div>
    						</div>
    						<div class="col-sm-3"></div>
    						<div class="col-sm-3"></div>
    						<div class="col-sm-6">
    							<button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" name="action" value="Change Password">Change Password</button>
    						</div>
    						<div class="col-sm-3"></div>
    					</div>
    				</form>
        	</div>
      	</div>
    </div>
</body>
</html>