<%@page import="service.AdminService"%>
<%@page import="model.StudentModel"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 tdansitional//EN" "http://www.w3.org/td/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Kundan Singh</title>
	<meta charset="UTF-8>
	<meta name="viewport" content="width=device-width" initial-scale=1">
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
<c:import url="header.jsp"></c:import>
<!----------------------------------------------------- End Menu Bar ---------------------------------------------------------------->
<br><br><br><br><br>
<!--------------------------------------------- Start Breadcrumbs selection --------------------------------------------------------->
<section class="breadcrumbs-section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item active">Student's List</li> 
                    </ol>
                </div>
            </div>
        </div>
    </section>
<!----------------------------------------------- End Breadcrumbs selection ------------------------------------------------------------>
<br>
<!-------------------------------------------------- Search Students ------------------------------------------------------------>
	<form action="">
	 	<fieldset>
        	<legend>Search Here</legend>
        	<p>
            	<input type="text" name="searchkey" id="searchkey" 
            	placeholder="Search Here..." value="${searchkey}" autofocus>
            	<input type="submit" value="Search"  name="action">
        	</p>
        	<p>
	            <label>Search By</label>
	            <label for="all">
	                <input type="radio" name="type" id="all" value="all" checked>All
	            </label>
	            <label for="name">
	                <input type="radio" name="type" id="name" value="name">Name
	            </label>
	            <label for="programe"> 
	                <input type="radio" name="type" id="programe" value="programe">Programe
	            </label>
	            <label for="collage"> 
	                <input type="radio" name="type" id="collage" value="collage">College
	            </label>
	        </p>
    	</fieldset>
	</form>
<!------------------------------------------------- Students List ------------------------------------------------------------>
	<table class="table table-striped table-bordered">
		<tr class="thead-dark">
			<th>Roll No  </th>
			<th>Name  </th>
			<th>Programme Code : </th>
			<th>Details of Student</th>
		</tr>
		<c:forEach items="${studentslist}" var="obj">
		<tr  class="thead-dark">
			<td>${obj.getRoll()}</td>
			<td>${obj.getName()}</td>
			<td>${obj.getProgram()}</td>
			<td><a href="School?roll=${obj.getRoll()}&&action=details">Details</a></td>
		</tr>
		</c:forEach>
	</table>
<!--------------------------------- Start Footer selection ------------------------------------------------------------>
<c:import url="footer.jsp"></c:import>
<!-- ---------------------------------End Footer Section--------------------------------------------------------------------->
</body>
</html>