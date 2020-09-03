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
<!------------------------------------------------- End Menu Bar ------------------------------------------------------------>
<!------------------------------------------- Start Breadcrumbs selection ------------------------------------------------------------>
<br><br><br><br><br>
	<section class="breadcrumbs-section">
     	<div class="container">
            <div class="row">
                <div class="col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item active">Payment</li> 
                    </ol>
                </div>
            </div>
        </div>
	</section>
	<br><br>
<!----------------------------------------------- End Breadcrumbs selection ------------------------------------------------------------>
<!--------------------------------------------------- Searching details ---------------------------------------------------------------->
	<div class="container">
		<form action="Teacher" method="get">
			<div class="form-row">
				<div class="form-group col-sm-4">
					<label for="addhar">Enter Addhar No.</label>
					<input type="number" name="addhar"id="addhar" placeholder="Enter Teacher's Addhar"value="${obj.getAddhar()}"class="form-control">
				</div>
				<div class="form-group col-sm-4">
					<label for="name">Enter Name </label>
					<input type="text" name="name"id="name" placeholder="Enter Student's Name"value="${obj.getName()}"class="form-control">
				</div>
				<div class="form-group col-sm-2">
					<br>
					<label></label>
					<input type="submit" name="action"id="sub"value="Get Data"class="form-control bth btn-primary">
				</div>
				<div class="form-group col-sm-2">
					<br>
					<label></label>
					<input type="reset"id="res"value="Reseet"class="form-control bth btn-danger">
				</div>
<!------------------------------------------------- *********Payments Form********* ------------------------------------------------------------>
				<div class="form-group col-sm-4">
					<label for="fathername">Father's Name</label>
					<input type="text" name="fathername"id="fathername"placeholder="Father's name" value="${obj.getFname()}" class="form-control" readonly="readonly">
				</div>
				<div class="form-group col-sm-4">
					<label for="mothername">Mother's Name </label>
					<input type="text" name="mothername"id="mothername"placeholder="Mother's Name" value="${obj.getMname()}" class="form-control" readonly="readonly">
				</div>
				<div class="form-group col-sm-4">
					<label for="dob">Date of Birth</label>
					<input type="text" name="dob"id="dob" placeholder="Date of Birth" value="${obj.getDob()}" class="form-control" readonly="readonly">
				</div>
				<div class="form-group col-sm-4">
					<label for="sub">Subject's teacher</label>
					<input type="text" name="sub"id="sub"placeholder="Subject's Teacher" value="${obj.getSub()}" class="form-control"readonly="readonly" >
				</div>
				<div class="form-group col-sm-4">
					<label for="collage">College Name </label>
					<input type="text" name="collage"id="collage"placeholder="Collage Name"value="${obj.getCollage()}" class="form-control" readonly="readonly">
				</div>
				<div class="form-group col-sm-4">
					<label for="joindate">Joining Date</label>
					<input type="text" name="joindate"id="joindate"placeholder="Joining date" value="${obj.getJoindate()}" class="form-control" readonly="readonly">
				</div>
				<div class="form-group col-sm-4">
					<label for="no">Mobile No </label>
					<input type="text" name="no"id="no"placeholder="Mobile no" value="${obj.getNo()}" class="form-control" readonly="readonly">
				</div>
				<div class="form-group col-sm-4">
					<label for="email">Email</label>
					<input type="text" name="email"id="email"placeholder="Email id" value="${obj.getEmail()}" class="form-control" readonly="readonly">
				</div>
				<div class="form-group col-sm-4">
					<label for="addhar">Addhar No </label>
					<input type="text" name="addhar"id="addhar"placeholder="Addhar no" value="${obj.getAddhar()}" class="form-control" readonly="readonly">
				</div>
				
				<div class="form-group col-sm-2.5">
					<label for="ad_account">Admin account</label>
					<input type="number" name="ad_account"id="ad_account" value="${acc}" placeholder="Admin account no" class="form-control"readonly="readonly" >
				</div>
				<div class="form-group col-sm-2.5">
					<label for="ad_ifsc">Admin Ifsc code </label>
					<input type="text" name="ad_ifsc"id="ad_ifsc" value="${ifsc}" placeholder="Admin ifsc code" class="form-control" readonly="readonly">
				</div>
				<div class="form-group col-sm-3">
					<label for="ammount">Ammount</label>
					<input type="number" name="ammount"id="ammount" placeholder="amount of fee" value="${sal}" class="form-control" readonly="readonly">
				</div>
				<div class="form-group col-sm-2.5">
					<label for="t_account">Teacher's account</label>
					<input type="number" name="t_account"id="t_account" placeholder="your account no" class="form-control" >
				</div>
				<div class="form-group col-sm-2.5">
					<label for="st_ifsc">ifsc </label>
					<input type="text" name="t_ifsc"id="t_ifsc"placeholder="your ifsc code" class="form-control" >
				</div>
				<div class="form-group col-sm-2">
					<br>
					<label></label>
					<input type="submit" name="action"id="Paid"value="Paid"class="form-control bth btn-primary">
				</div>
				<div class="form-group col-sm-2">
					<br>
					<label></label>
					<input type="reset"id="res"value="Reseet"class="form-control bth btn-danger">
				</div>
			</div>
		</form>
	</div>
<br>
<!--------------------------------- Start Footer selection ------------------------------------------------------------>
<c:import url="footer.jsp"></c:import>
<!-- ---------------------------------End Footer Section--------------------------------------------------------------------->
</body>
</html>