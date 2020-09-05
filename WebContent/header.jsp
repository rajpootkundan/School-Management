<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/popper.min.js"></script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/popper.js"></script>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/book.js"></script>
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
	<script type="text/javascript" src="js/javascriptfile.js"></script>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
	if(session.getAttribute("id")==null){
		response.sendRedirect("index.html");
	}
%>
<!------------------------------------------------- Start Menu Bar ------------------------------------------------------------>
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-top">
<!------------------------------------------------- Logout Session ------------------------------------------------------------>
			<ul class="nav navbar-nav float-right be-user-nav">
				<li class="nav-item dropdown " >
					<a class="nav-link  dropdown-toggle" data-toggle="dropdown" style="color: white;" role="button" aria-expanded="false">
					<img src="image/gallery/chhath1.jpg" class="img-responsive"alt="Avatar" style="width:65px; height:65px; border-radius:50%;"/>
					<span class="navbar-brand">Kundan Singh</span>
					</a>
					<div class="dropdown-menu" role="menu" style="padding: 0px; margin: 0px;font-weight: bold; background-color: darkblue;">
						<div class="user-name" style="color: white; font-size: 20px;font-weight: bold; background-color: blue; margin: 0px; padding: 4px; text-align: center;">Kundan Singh</div>
					
					<a href="Login.jsp" class="dropdown-item"style="padding: 0px; margin: 0px;background-color: black; text-align: center; line-height: 30px;">
						<i class="fa fa-sign-out"></i>
						Logout
					</a>
					</div>
				</li>
			</ul>
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
			</ul>
		</div>  
	</nav>
</body>
