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
		response.sendRedirect("Login.jsp");
	}
%>
<!------------------------------------------------- Start Menu Bar ------------------------------------------------------------>
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-top">
		<a class="navbar-logo text-light" style="text-decoration: none; margin: 0px;padding: 0px;"href="#"> 
			<img src="image/logo.jpg" class="img-responsive " style="width:65px; height:65px; border-radius:50%; margin:8px;"/>
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
</body>