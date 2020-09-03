<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		response.sendRedirect("Login.jsp");
	}
%>
<!------------------------------------------------- Start Menu Bar ------------------------------------------------------------>
<c:import url="header.jsp"></c:import>
<!---------------------------------------------------- End Menu Bar ----------------------------------------------------------------->
<br><br><br><br><br>
<!--------------------------------------------- Start Breadcrumbs selection --------------------------------------------------------->
	<section class="breadcrumbs-section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a href="School?action=lists">Student List</a></li>
                        <li class="breadcrumb-item active">Details of student</li> 
                    </ol>
                </div>
            </div>
        </div>
    </section>
<!------------------------------------------------ End Breadcrumbs selection ---------------------------------------------------------->
<br>
<!--------------------------------------------------- Student Details ------------------------------------------------------------>
	<div class="container alert alert-light alert-dismissible fade show" id="containerDiv">
		
		<button type="button" class="close" data-dismiss="alert">&times</button>
		<div class="table-responsive-xl" id="printDiv">
		<h1  class="text-danger">Details of ${obj.getName()} </h1>
			<table class="table table-bordered table-striped">
				<tr class="thead-light">
					<th>Roll No : </th>
					<td>${obj.getRoll()}</td>
					<th>Name : </th>
					<td>${obj.getName()}</td>
				</tr>
				<tr class="thead-light">
					<th>Father's Name : </th>
					<td>${obj.getFname()}</td>
					<th>Mother's Name : </th>
					<td>${obj.getMname()}</td>
				</tr>
				<tr class="thead-light">
					<th>Date of Birth : </th>
					<td>${obj.getDob()}</td>
					<th>Village : </th>
					<td>${obj.getVill()}</td>
				</tr>
				<tr class="thead-light">
					<th>Address : </th>
					<td>${obj.getAddress()}</td>
					<th>Mobile No : </th>
					<td>${obj.getNo()}</td>
				</tr>
				<tr class="thead-light">
					<th>Addhar No : </th>
					<td>${obj.getAddhar()}</td>
					<th>Email : </th>
					<td>${obj.getEmail()}</td>
				</tr>
				<tr class="thead-light">
					<th>Category : </th>
					<td>${obj.getCat()}</td>
					<th>Highest Qualification : </th>
					<td>${obj.getQuli()}</td>
				</tr>
				<tr class="thead-light ">
					<th>Programme Code : </th>
					<td>${obj.getProgram()}</td>
					<th>College Name : </th>
					<td>${obj.getCollage()}</td>
				</tr>
				<tr class="thead-light">
					<th>Admission Date : </th>
					<td>${obj.getAdmissiondate()}</td>
				</tr>
			</table>
		</div>
		<button class="btn btn-info btn-lg" onclick="printDiv()">
		<i class="fa fa-print" >Print</i>
		</button>
		
	</div>
<!--------------------------------- Start Footer selection ------------------------------------------------------------>
<c:import url="footer.jsp"></c:import>
<!-- ---------------------------------End Footer Section--------------------------------------------------------------------->
</body>
</html>