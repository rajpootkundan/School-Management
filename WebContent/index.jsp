<!DOCTYPE html >
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
	<script type="text/javascript" src="js/javascriptfile.js"></script>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
	if(session.getAttribute("id")==null){
		response.sendRedirect("Login.jsp");
	}
%>
<!------------------------------------------------- Start Menu Bar ------------------------------------------------------------>
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-top">
		<a class="navbar-logo text-light" style="text-decoration: none; margin: 0px;padding: 0px;"href="#"> 
			<img src="image/logo.jpg" class="img-responsive " style="width:65px; height:65px; border-radius:50%; margin:8px;"/>
			<!-- <br><span style="color:red;"id="myClock"></span> -->
		</a>
		<a class="navbar-brand" href="#">Kundan Singh</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav ml-auto">
<!------------------------------------------------- Home Section ---------------------------------------------------------------->
				<li class="nav-item dropdown">
					<a class="nav-link " href="index.jsp" style="color: white;">Home</a>
				</li>  
<!------------------------------------------------- Devloper Section ------------------------------------------------------------>
				<li class="nav-item dropdown" >
					<a class="nav-link  dropdown-toggle" data-toggle="dropdown" style="color: white;"href="#">About Us</a>
					<div class="dropdown-menu">
						<!--  <button type="button" class="close">&times;</button>-->
						<a class="dropdown-item " href="about.jsp">About Devloper</a>
					</div>
				</li>
<!------------------------------------------------- Students Section ------------------------------------------------------------>
				<li class="nav-item dropdown" >
					<a class="nav-link  dropdown-toggle" data-toggle="dropdown" style="color: white;"href="#">Student's Detail</a>
					<div class="dropdown-menu">
						<!--  <button type="button" class="close">&times;</button>-->
						<a class="dropdown-item " href="School?action=lists">Student's List</a>
						<a class="dropdown-item " href="insertstudent.jsp">Registration</a>
						<a class="dropdown-item " href="School?action=dlist">Remove Student</a>
						<a class="dropdown-item " href="updatestudent.jsp">Update details</a>
					</div>
				</li>
<!------------------------------------------------- Teachers Section ------------------------------------------------------------>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" data-toggle="dropdown" style="color: white;"href="#">Teacher's Detail</a>
					<div class="dropdown-menu">
						<!--  <button type="button" class="close">&times;</button>-->
						<a class="dropdown-item" href="Teacher?action=lists">Teacher's List</a>
						<a class="dropdown-item" href="insertteacher.jsp">Joining form</a>
						<a class="dropdown-item" href="Teacher?action=dlist">Leave Teacher</a>
						<a class="dropdown-item" href="updateteacher.jsp">Update details</a>
					</div>
				</li>
<!------------------------------------------------- Library Section ------------------------------------------------------------>
				<li class="nav-item dropdown">
					<a class="nav-link  dropdown-toggle" data-toggle="dropdown"style="color: white;"href="#">Library</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="library.jsp">Library</a>
					</div>
				</li>  
<!------------------------------------------------- Payments Section ------------------------------------------------------------>
				<li class="nav-item dropdown">
					<a class="nav-link  dropdown-toggle" data-toggle="dropdown"style="color: white;"href="#">Payments Section</a>
					<div class="dropdown-menu">
						<!--  <button type="button" class="close">&times;</button>-->
						<a class="dropdown-item" href="Admin?action=details">Diractor</a>
						<a class="dropdown-item" href="teacherpayment.jsp">Teacher's Payment</a>
						<a class="dropdown-item" href="studentsfee.jsp">Student's fee</a>
					</div>
				</li>    
				<li class="nav-item dropdown">
					<a class="nav-link" style=" text-decoration: none;color:white;" href="Login.jsp">Logout </a>
				</li>
			</ul>
		</div>  
		
	</nav>
<!------------------------------------------------- End Menu Bar ------------------------------------------------------------>
<!-- ******************************************** Start Indicators******************************************************** -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel"data-interval="5000">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
		</ol>
<!--------------------------------------------------------- first Slide ------------------------------------------------------------>
		<div class="carousel-inner">
			<div class="carousel-item active" style="background-image:url(image/slider/1.jpg) ;background-position: center center;">
				<!-- <img src="image/1.jpg" alt="image not found" > -->
				<div class="carousel-caption text-center">
					<h3  style="color:red; font-weight: bolder; font-style:italic;">Kundan Singh</h3>
					<h3 style=" font-weight: bolder;color:orange; font-style:italic;">Java Developer</h3>
				</div>
			</div>
<!---------------------------------------------------------- second Slide ---------------------------------------------------------->
			<div class="carousel-item" style="background-image:url(image/slider/2.jpg) ;">
				<!-- <img src="image/2.jpg" alt="image not found" > -->
				<div class="carousel-caption text-center">
					<h3 style="color:red; font-weight: bolder;font-style:italic;">??????????????????????????????????</h3>
					<p style="font-weight: bolder;color:orange;font-style:italic;">??????????????????????????????????????????????????????????</p>
				</div>
			</div>
	
<!---------------------------------------------------------- third Slide ----------------------------------------------------------->
			<div class="carousel-item" style="background-image:url(image/slider/3.jpg) ;">
				<!-- <img src="image/3.jpg" alt="image not found" > -->
				<div class="carousel-caption text-center">
					<h3  style="color:red; font-weight: bolder; font-family:cursive;font-style:italic;">??????????????????????????????????</h3>
					<h3 style="color:orange; font-weight: bolder; font-family:cursive;font-style:italic;">??????????????????????????????????????????????????????????</h3>
				</div>
			</div>
<!----------------------------------------------------------- fourth Slide --------------------------------------------------------->
			<div class="carousel-item text-center" style="background-image:url(image/slider/4.jpg) ;">
				<!-- <img src="image/4.jpg" alt="image not found" > -->
				<div class="carousel-caption">
					<h3 style="color:red; font-weight: bolder; font-family:cursive;font-style:italic;">??????????????????????????????????</h3>
					<p style="color:orange; font-weight: bolder; font-family:cursive;font-style:italic;">??????????????????????????????????????????????????????????</p>
				</div>
			</div>
<!------------------------------------------------------------ fifth Slide --------------------------------------------------------->
			<div class="carousel-item text-center" style="background-image:url(image/slider/5.jpg) ;">
				<!-- <img src="image/5.jpg" alt="image not found" > -->
				<div class="carousel-caption">
					<h3 style="color:red; font-weight: bolder; font-family:cursive;font-style:italic;">??????????????????????????????????</h3>
					<p style="font-weight: bolder; font-family:cursive;color:orange;font-style:italic; ">??????????????????????????????????????????????????????????</p>
				</div>
			</div>
		</div>
<!----------------------------------------------------------- Prev Button ---------------------------------------------------------->
		<a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</a>
<!----------------------------------------------------------- Next Button ---------------------------------------------------------->
		<a class="carousel-control-next" href="#myCarousel" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>
<!-- ***************************************************** End Indicators******************************************************** -->
	<div class="container" style="margin-top:30px">
		<div class="row">
<!-------------------------------------------------------- About Devloper ---------------------------------------------------------->
			<div class="col-sm-4">
				<h2 style="color:blue; font-family:cursive; text-align:center;">About Me</h2>
				<h5>Photo of me:&nbsp;<i class="fa fa-hand-o-down"></i></h5>
				<div class="card" style="margin: 0px;padding: 0px;">
					<img class="card-img-top" style="height: 31vh;background-position: center center; margin: 0px;padding: 0px; background-image:url(image/kundan.jpg);background-size: cover;">
					<div class="card-body" style="background-color:orange;;margin: 0px;padding: 5px;height: 10vh; color: white;font-style: italic">
						<p>Hi ! This is Kundan Singh. He hails from Bihar and is a JAVA DEVELOPER.</p>
					</div>
				</div>
				<h3 style="font-family:cursive; text-align:center;" class="text-primary">Some Links <i class="fa fa-hand-o-right"></i></h3>
				<p>About Developer..</p>
					<ul class="nav nav-pills flex-column bg-dark">
						<li class="nav-item">
							<a class="nav-link active" href="about.jsp" style="color:orange; font-family:cursive;">About us</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="contact.jsp">Contact us</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="gallery.jsp">Gallery</a>
						</li>
					</ul>
				<hr class="d-sm-none">
			</div>
<!------------------------------------- Google Map Start---------------------------------------------------------------------->
			<div class="col-sm-8">
				<div class="mapouter">
					<h1 style="color:orange; font-family:cursive; text-align:center;">Visit Here<i class="fa fa-hand-o-down"></i></h1>
					<div class="gmap_canvas">
						<iframe width="100%" height="495" id="gmap_canvas" src="https://maps.google.com/maps?q=kundan%20singh%20palace&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
						<a href="https://thevpndeal.com/nordvpn-coupon/"></a>
					</div>
				</div>
			</div>
<!-------------------------------------Google Map End-------------------------------------------------------------------------->
		</div>
	</div>
<br><br><br>
<!-------------------------------------Footer Section-------------------------------------------------------------------------->
	<div class="centerdiv">
		<a href="https://web.whatsapp.com/send?phone=919798501225" target="_blank">
			<i class="fa fa-2x fa-whatsapp"></i>&nbsp;&nbsp;&nbsp;&nbsp;
		</a>
		<a href="https://www.facebook.com/kundansingh.rajput.376695/"target="_blank">
			<i class="fa fa-2x fa-facebook"></i>&nbsp;&nbsp;&nbsp;&nbsp;
		</a>
		<a href="https://www.instagram.com/?hl=en"target="_blank">
			<i class="fa fa-2x fa-instagram"></i>&nbsp;&nbsp;&nbsp;&nbsp;
		</a>
		<a href="" target="_blank" target="_blank">
			<i class="fa fa-2x fa-twitter"></i>
		</a>
	</div>
	<div style="text-align: center;">Copyright & copy2020 kundanmth01@gmail.com<p>All Rights Reserved</p> 
	</div>
<!-- -------------------------------End Footer Section--------------------------------------------------------------------->
</body>
</html>