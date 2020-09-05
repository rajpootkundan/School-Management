<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		response.sendRedirect("index.html");
	}
%>
<!------------------------------------------------- Start Menu Bar ------------------------------------------------------------>
<c:import url="header.jsp"></c:import>
<%--@include file="header.jsp" --%>
<!------------------------------------------------- End Menu Bar ------------------------------------------------------------------>
<br><br><br><br><br>
<!------------------------------------------------- Start Breadcrumbs selection ------------------------------------------------------------>
	<section class="breadcrumbs-section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item active">Update details</li> 
                    </ol>
                </div>
            </div>
        </div>
    </section>
<!------------------------------------------------- End Breadcrumbs selection ------------------------------------------------------------>
    <br><br>
<!------------------------------------------------------ Searching Fields ---------------------------------------------------------------->
    <h1 style="text-align: center;"class="text-primary">Search Details</h1>
	<div class="container">
		<form action="Teacher" method="get">
			<div class="form-row">
				<div class="form-group col-sm-4">
					<label for="addhar">Enter Addhar No.</label>
					<input type="number" name="addhar"id="addhar" placeholder="Enter Teacher's Addhar" class="form-control">
				</div>
				<div class="form-group col-sm-4">
					<label for="name">Enter Name </label>
					<input type="text" name="name"id="name" placeholder="Enter Student's Name" class="form-control">
				</div>
				<div class="form-group col-sm-2">
					<br>
					<label></label>
					<input type="submit" name="action"id="sub"value="Search Record"class="form-control bth btn-primary">
				</div>
			</div>
		</form>
	</div>
<!------------------------------------------------- Update Details Hare ------------------------------------------------------------>
    <h1 style="text-align: center;">Update Teacher's Details</h1> 
	<div class="container bg-light">
		<form method="post" action="Teacher" id="ins">
			<div class="form-row">
		    	<div class="form-group col-sm-6">
		      		<label for="name" class=" control-label">Enter Name :</label>
		      		<input type="text" class="form-control" id="name" value="${obj.getName()}" name="name">
		    	</div>
		    	<div class="form-group col-md-6">
		      		<label for="fname">Enter Father's Name : </label>
					<input type="text" name="fname" id="fname" class="form-control"value="${obj.getFname()}">
		    	</div>
		    	<div class="form-group col-md-6">
		      		<label for="mname">Enter Mother's Name : </label>
					<input type="text" name="mname" id="mname"class="form-control"value="${obj.getMname()}">
		    	</div>
		    	<div class="form-group col-md-6">
		      		<label for="vill">Village/Town Name : </label>
					<input type="text" name="vill" id="vill"class="form-control"value="${obj.getVill()}">
		    	</div>
		    	<div class="form-group col-md-12">
		      		<label for="address">Full Address : </label>
					<input type="text" name="address" id="address" class="form-control"value="${obj.getAddress()}">
		    	</div>
		    	<div class="form-group col-md-6">
		      		<label for="dob">Date of Birth : </label>
					<input type="date" name="dob" id="dob" class="form-control"value="${obj.getDob()}">
		    	</div>
		    	<div class="form-group col-md-6">
		      		<label for="addhar">Addhar No : </label>
					<input type="text" name="addhar" id="addhar" class="form-control" value="${obj.getAddhar()}">
		    	</div>
		    	<div class="form-group col-md-6">
		      		<label for="no">Mobile No : </label>
					<input type="text" name="no" id="no" class="form-control"value="${obj.getNo()}">
		    	</div>
		    	<div class="form-group col-md-6">
		      		<label for="email">Email : </label>
					<input type="email" name="email" id="email" class="form-control"value="${obj.getEmail()}" readonly="readonly">
		    	</div>
		    	<div class="form-group col-md-6">
		      		<label for="cat">Category : </label>
					<input type="text" name="cat" id="cat" class="form-control"value="${obj.getCat()}">
		    	</div>
		    	<div class="form-group col-md-6">
		      		<label for="quli">Highest Qualification : </label>
					<input type="text" name="quli" id="quli"class="form-control"value="${obj.getQuli()}">
		    	</div>
		    	<div class="form-group col-md-6">
		      		<label for="sub">Subject's Teacher : </label>
		      		<select class="form-control" id="sub" name="sub">
		      			<option>${obj.getSub()}</option>
						<option>Math</option>
						<option>English</option>
						<option>java</option>
						<option>C</option>
						<option>C++</option>
						<option>Database</option>
						<option>Web Programming</option>
						<option>Assembly</option>
						<option>Software Engineering</option>
						<option>Networking</option>
					</select>
		    	</div>
		    	<div class="form-group col-md-6">
		      		<label for="collage">College Name : </label>
					<input type="text" name="collage" id="collage"class="form-control"value="${obj.getCollage()}">
		    	</div>
		    	<div class="form-group col-md-3 btn">
		      		<input type="submit" value="Update" id="submit" name="action" class="form-control bth btn-primary">
		      		
		    	</div>
		    	<div class="form-group col-md-3">
		    		<label></label>
		      		<input type="reset" value="reset" id="reset" class="form-control bth btn-danger">
		    	</div>
		  	</div>
		</form>
	</div>
<br>
<!--------------------------------- Start Footer selection ------------------------------------------------------------>
<c:import url="header.jsp"></c:import>
<!-- ---------------------------------End Footer Section--------------------------------------------------------------------->
</body>
</html>
</html>
