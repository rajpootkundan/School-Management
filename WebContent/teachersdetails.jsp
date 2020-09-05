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
<!------------------------------------------------- End Menu Bar ------------------------------------------------------------>
<br><br><br><br><br>
<!------------------------------------------- Start Breadcrumbs selection ------------------------------------------------------------>
	<section class="breadcrumbs-section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a href="Teacher?action=lists">Teacher's List</a></li>
                        <li class="breadcrumb-item active">Details of Teacher</li> 
                    </ol>
                </div>
            </div>
        </div>
    </section>
<!------------------------------------------------- End Breadcrumbs selection ---------------------------------------------------------->
<br>
<!----------------------------------------------------- Teacher's Details -------------------------------------------------------------->
	<div class="container col-sm-10 table-responsive-xl alert alert-light alert-dismissible fade show" id="printDiv">
		<h1 class="text-danger">Details of ${obj.getName()} </h1>
		<button type="button" class="close" data-dismiss="alert">&times</button>
		<table class="table table-striped table-bordered">
			<tr class="thead-light ">
				<th scope="row">Name : </th>
				<td>${obj.getName()}</td>
				<th scope="row">Father's Name : </th>
				<td>${obj.getFname()}</td>
			</tr>
			<tr class="thead-light">
				<th scope="row">Mother's Name : </th>
				<td>${obj.getMname()}</td>
				<th scope="row">Date of Birth : </th>
				<td>${obj.getDob()}</td>
			</tr>
			<tr class="thead-light">
				<th scope="row">Village : </th>
				<td>${obj.getVill()}</td>
				<th scope="row">Address : </th>
				<td>${obj.getAddress()}</td>
			</tr>
			<tr class="thead-light">
				<th scope="row">Mobile No : </th>
				<td>${obj.getNo()}</td>
				<th scope="row">Addhar No : </th>
				<td>${obj.getAddhar()}</td>
			</tr>
			<tr class="thead-light">
				<th scope="row">Email : </th>
				<td>${obj.getEmail()}</td>
				<th scope="row">Category : </th>
				<td>${obj.getCat()}</td>
			</tr>
			<tr class="thead-light">
				<th scope="row">Highest Qualification : </th>
				<td>${obj.getQuli()}</td>
				<th scope="row">Subject Teacher : </th>
				<td>${obj.getSub()}</td>
			</tr>
			<tr class="thead-light">
				<th scope="row">College Name : </th>
				<td>${obj.getCollage()}</td>
				<th scope="row">Joining Date : </th>
				<td>${obj.getJoindate()}</td>
			</tr>
		</table>
		<button class="btn btn-info btn-lg" onclick="printDiv()">
		<i class="fa fa-print" >Print</i>
		</button>
	</div>
<!--------------------------------- Start Footer selection ------------------------------------------------------------>
<c:import url="footer.jsp"></c:import>
<!-- ---------------------------------End Footer Section--------------------------------------------------------------------->
</body>
</html>
