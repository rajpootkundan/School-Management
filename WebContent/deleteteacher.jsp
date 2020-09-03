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
<!------------------------------------------------------- Start Menu Bar ------------------------------------------------------------>
<c:import url="header.jsp"></c:import>
<!-------------------------------------------------------- End Menu Bar ------------------------------------------------------------>
<br><br><br><br><br>
<!------------------------------------------------- Start Breadcrumbs selection --------------------------------------------------------->
<section class="breadcrumbs-section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item active">Delete Teacher's Data</li> 
                    </ol>
                </div>
            </div>
        </div>
    </section>
<!------------------------------------------------- End Breadcrumbs selection ------------------------------------------------------------>
<!------------------------------------------------- Teacher List for deletion ------------------------------------------------------------>
	<table class="table table-striped table-bordered">
		<tr class="table-danger">
			<td>Name  </td>
			<td>Subject's Teacher  </td>
			<td>Mobile no : </td>
			<td>Delete Teacher's details</td>
		</tr >
		<c:forEach items="${teacherslist}" var="obj">
		<tr >
			<td>${obj.getName()}</td>
			<td>${obj.getSub()}</td>
			<td>${obj.getNo()}</td>
			<td class="table-warning"><a href="Teacher?addhar=${obj.getAddhar()}&&action=delete">Delete</a></td>
		</tr>
		</c:forEach>
	</table>
<!------------------------------------------------- Start Footer section ------------------------------------------------------------>
<c:import url="footer.jsp"></c:import>
<!------------------------------------------------- End Footer section ------------------------------------------------------------>
</body>
</html>