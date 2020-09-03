<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Kundan Singh</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width initial-scale=1">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/book.js"></script>
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
<!------------------------------------------------------ End Menu Bar ---------------------------------------------------------------->
<br><br><br><br><br>
<!---------------------------------------------- Start Breadcrumbs selection ---------------------------------------------------------->
	<section class="breadcrumbs-section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item active">Library</li> 
                    </ol>
                </div>
            </div>
        </div>
    </section>
<!---------------------------------------------- End Breadcrumbs selection ------------------------------------------------------------>
    <br>
<!------------------------------------------------- Search Books Hare ----------------------------------------------------------------->
    <div class="container">
    <form action="">
    <table class="table table-striped table-bordered table-responsive-sm">
    	<tr class="bg-primary text-white">
    		<th>Sl No.</th>
    		<th>Programe Code</th>
    		<th>Semester</th>
    		<th>Search</th>
    	</tr>
    	<tr>
    		<td style="margin: 0px;padding: 0px;">1</td>
    		<td style="margin: 0px;padding: 0px;">
    			<select class="form-control" id="first" name="program" >
					<option>Select</option>
					<option>Bca</option>
					<option>Mca</option>
				</select>
    		</td>
    		<td style="margin: 0px;padding: 0px;">
    			<select class="form-control" id="second" name="semester" >
					<option>Select</option>
					<option>1st</option>
					<option>2nd</option>
					<option>3rd</option>
					<option>4th</option>
					<option>5th</option>
					<option>6th</option>
				</select>
			</td>
			<td style="margin: 0px;padding: 0px;">
				<input type="button" id="btnget" value="Get" class="form-control btn btn-warning" onclick="show();">
			</td>
    	</tr>
    </table>
    </form>
<!-- *******************************************Bca Block Hare*********************************************************-->
<!------------------------------------------BCA 1st Semester Book-------------------------------------------------------->
    <table class="table table-striped table-bordered table-responsive-sm" style="display: none; width: 100%" id="bca1" >
    	<tr class="bg-success text-white">
    		<th>Sl. No.</th>
    		<th>Programme Code</th>
    		<th>Semester</th>
    		<th>Book Name</th>
    		<th>Download</th>
    	</tr>
    	<tr>
    		<td>1</td>
    		<td>Bca</td>
    		<td>1st</td>
    		<td>ECO-01</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>2</td>
    		<td>Bca</td>
    		<td>1st</td>
    		<td>FEG-02</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>3</td>
    		<td>Bca</td>
    		<td>1st</td>
    		<td>BCS-11</td>
    		<td><a href="bca/1st/bcs 011.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>4</td>
    		<td>Bca</td>
    		<td>1st</td>
    		<td>BCS-12</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>5</td>
    		<td>Bca</td>
    		<td>1st</td>
    		<td>BCSL-13</td>
    		<td><a href="bca/1st/bcsl-013.pdf"target="_blank">download</a></td>
    	</tr>
    </table>
<!------------------------------------------BCA 2nd Semester Book-------------------------------------------------------->
    <table class="table table-striped table-bordered table-responsive-sm" style="display: none" id="bca2">
    	<tr class="bg-success text-white">
    		<th>Sl. No.</th>
    		<th>Programme Code</th>
    		<th>Semester</th>
    		<th>Book Name</th>
    		<th>Download</th>
    	</tr>
    	<tr>
    		<td>1</td>
    		<td>Bca</td>
    		<td>2nd</td>
    		<td>ECO-02</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>2</td>
    		<td>Bca</td>
    		<td>2nd</td>
    		<td>MCS-11</td>
    		<td><a href="bca/2nd/mcs 011.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>3</td>
    		<td>Bca</td>
    		<td>2nd</td>
    		<td>MCS-12</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>4</td>
    		<td>Bca</td>
    		<td>2nd</td>
    		<td>MCS-13</td>
    		<td><a href="bca/2nd/mcs-013.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>5</td>
    		<td>Bca</td>
    		<td>2nd</td>
    		<td>MCS-15</td>
    		<td><a href="bca/2nd/mcs-015.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>6</td>
    		<td>Bca</td>
    		<td>2nd</td>
    		<td>BCSL-21</td>
    		<td><a href="bca/2nd/bcsl-021.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>7</td>
    		<td>Bca</td>
    		<td>2nd</td>
    		<td>BCSL-22</td>
    		<td><a href="bca/2nd/bcsl-022.pdf"target="_blank">download</a></td>
    	</tr>
    </table>
<!------------------------------------------BCA 3rd Semester Book-------------------------------------------------------->
    <table class="table table-striped table-bordered table-responsive-sm" style="display: none" id="bca3">
    	<tr class="bg-success text-white">
    		<th>Sl. No.</th>
    		<th>Programme Code</th>
    		<th>Semester</th>
    		<th>Book Name</th>
    		<th>Download</th>
    	</tr>
    	<tr>
    		<td>1</td>
    		<td>Bca</td>
    		<td>3rd</td>
    		<td>BCS-31</td>
    		<td><a href="bca/3rd/bcs-031.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>2</td>
    		<td>Bca</td>
    		<td>3rd</td>
    		<td>MCS-23</td>
    		<td><a href="bca/3rd/mcs-023.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>3</td>
    		<td>Bca</td>
    		<td>3rd</td>
    		<td>BCSL-032</td>
    		<td><a href="bca/3rd/bcsl-032.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>4</td>
    		<td>Bca</td>
    		<td>3rd</td>
    		<td>BCSL-33</td>
    		<td><a href="bca/3rd/ds bcsl-033.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>5</td>
    		<td>Bca</td>
    		<td>3rd</td>
    		<td>BCSL-34</td>
    		<td><a href="bca/3rd/bcsl-034.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>6</td>
    		<td>Bca</td>
    		<td>3rd</td>
    		<td>MCS-14</td>
    		<td><a href="bca/3rd/mcs-014.pdf"target="_blank">download</a></td>
    	</tr><tr>
    		<td>7</td>
    		<td>Bca</td>
    		<td>3rd</td>
    		<td>MCS-21</td>
    		<td><a href="bca/3rd/mcs-021.pdf"target="_blank">download</a></td>
    	</tr>
    </table>
<!------------------------------------------BCA 4th Semester Book-------------------------------------------------------->
    <table class="table table-striped table-bordered table-responsive-sm" style="display: none" id="bca4">
    	<tr class="bg-success text-white">
    		<th>Sl. No.</th>
    		<th>Programme Code</th>
    		<th>Semester</th>
    		<th>Book Name</th>
    		<th>Download</th>
    	</tr>
    	<tr>
    		<td>1</td>
    		<td>Bca</td>
    		<td>4th</td>
    		<td>BCS-40</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>2</td>
    		<td>Bca</td>
    		<td>4th</td>
    		<td>BCS-41</td>
    		<td><a href="bca/4th/bcs-041.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>3</td>
    		<td>Bca</td>
    		<td>4th</td>
    		<td>BCS-42</td>
    		<td><a href="bca/4th/bcs-042.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>4</td>
    		<td>Bca</td>
    		<td>4th</td>
    		<td>BCSL-43</td>
    		<td><a href="bca/4th/bcsl-043.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>5</td>
    		<td>Bca</td>
    		<td>4th</td>
    		<td>BCSL-44</td>
    		<td><a href="bca/4th/bcsl-044.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>6</td>
    		<td>Bca</td>
    		<td>4th</td>
    		<td>BCSL-45</td>
    		<td><a href="bca/4th/bcsl-045.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>7</td>
    		<td>Bca</td>
    		<td>4th</td>
    		<td>MCS-24</td>
    		<td><a href="bca/4th/mcs-024.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>8</td>
    		<td>Bca</td>
    		<td>4th</td>
    		<td>MCSL-16</td>
    		<td><a href="bca/4th/networkingmcsl-016.pdf"target="_blank">download</a></td>
    	</tr>
    </table>
<!------------------------------------------BCA 5th Semester Book-------------------------------------------------------->
    <table class="table table-striped table-bordered table-responsive-sm" style="display: none" id="bca5">
    	<tr class="bg-success text-white">
    		<th>Sl. No.</th>
    		<th>Programme Code</th>
    		<th>Semester</th>
    		<th>Book Name</th>
    		<th>Download</th>
    	</tr>
    	<tr>
    		<td>1</td>
    		<td>Bca</td>
    		<td>5th</td>
    		<td>BCS-51</td>
    		<td><a href="bca/5th/bcs-051.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>2</td>
    		<td>Bca</td>
    		<td>5th</td>
    		<td>BCS-52</td>
    		<td><a href="bca/5th/bcs-052.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>3</td>
    		<td>Bca</td>
    		<td>5th</td>
    		<td>BCS-53</td>
    		<td><a href="bca/5th/bcs-053.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>4</td>
    		<td>Bca</td>
    		<td>5th</td>
    		<td>BCS-54</td>
    		<td><a href="bca/5th/bcs-054.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>5</td>
    		<td>Bca</td>
    		<td>5th</td>
    		<td>BCS-55</td>
    		<td><a href="bca/5th/bcs-055.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>6</td>
    		<td>Bca</td>
    		<td>5th</td>
    		<td>BCSL-56</td>
    		<td><a href="bca/5th/bcsl-056.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>7</td>
    		<td>Bca</td>
    		<td>5th</td>
    		<td>BCSL-57</td>
    		<td><a href="bca/5th/bcsl-057.pdf"target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>8</td>
    		<td>Bca</td>
    		<td>5th</td>
    		<td>BCSL-58</td>
    		<td><a href="bca/5th/bcsl-058.pdf"target="_blank">download</a></td>
    	</tr>
    </table>
<!------------------------------------------BCA 6th Semester Book-------------------------------------------------------->
    <table class="table table-striped table-bordered table-responsive-sm" style="display: none" id="bca6">
    	<tr class="bg-success text-white">
    		<th>Sl. No.</th>
    		<th>Programme Code</th>
    		<th>Semester</th>
    		<th>Book Name</th>
    		<th>Download</th>
    	</tr>
    	<tr>
    		<td>1</td>
    		<td>Bca</td>
    		<td>6th</td>
    		<td>MCS-22</td>
    		<td><a href="bca/6th/mcs-022.pdf"target="_blank">download</a></td>
    	</tr>
    </table>
    
<!--******************************************* Mca Block hare ********************************************************-->
<!------------------------------------------MCA 1st Semester Book-------------------------------------------------------->
    <table class="table table-striped table-bordered table-responsive-sm" style="display: none" id="mca1">
    	<tr class="bg-success text-white">
    		<th>Sl. No.</th>
    		<th>Programme Code</th>
    		<th>Semester</th>
    		<th>Book Name</th>
    		<th>Download</th>
    	</tr>
    	<tr>
    		<td>1</td>
    		<td>Mca</td>
    		<td>1st</td>
    		<td>MCS-011</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>2</td>
    		<td>Mca</td>
    		<td>1st</td>
    		<td>MCS-012</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>3</td>
    		<td>Mca</td>
    		<td>1st</td>
    		<td>MCS-013</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>4</td>
    		<td>Mca</td>
    		<td>1st</td>
    		<td>MCS-014</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>5</td>
    		<td>Mca</td>
    		<td>1st</td>
    		<td>MCS-015</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>6</td>
    		<td>Mca</td>
    		<td>1st</td>
    		<td>MCSL-016</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>7</td>
    		<td>Mca</td>
    		<td>1st</td>
    		<td>MCSL-017</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    </table>
<!------------------------------------------MCA 2nd Semester Book-------------------------------------------------------->
    <table class="table table-striped table-bordered table-responsive-sm" style="display: none" id="mca2">
    	<tr class="bg-success text-white">
    		<th>Sl. No.</th>
    		<th>Programme Code</th>
    		<th>Semester</th>
    		<th>Book Name</th>
    		<th>Download</th>
    	</tr>
    	<tr>
    		<td>1</td>
    		<td>Mca</td>
    		<td>2nd</td>
    		<td>MCS-021</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>2</td>
    		<td>Mca</td>
    		<td>2nd</td>
    		<td>MCS-022</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>3</td>
    		<td>Mca</td>
    		<td>2nd</td>
    		<td>MCS-023</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>4</td>
    		<td>Mca</td>
    		<td>2nd</td>
    		<td>MCS-024</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>5</td>
    		<td>Mca</td>
    		<td>2nd</td>
    		<td>MCSL-025</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    </table>
<!------------------------------------------MCA 3rd Semester Book-------------------------------------------------------->
    <table class="table table-striped table-bordered table-responsive-sm" style="display: none" id="mca3">
    	<tr class="bg-success text-white">
    		<th>Sl. No.</th>
    		<th>Programme Code</th>
    		<th>Semester</th>
    		<th>Book Name</th>
    		<th>Download</th>
    	</tr>
    	<tr>
    		<td>1</td>
    		<td>Mca</td>
    		<td>3rd</td>
    		<td>MCS-031</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>2</td>
    		<td>Mca</td>
    		<td>3rd</td>
    		<td>MCS-032</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>3</td>
    		<td>Mca</td>
    		<td>3rd</td>
    		<td>MCS-033</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>4</td>
    		<td>Mca</td>
    		<td>3rd</td>
    		<td>MCS-034</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>5</td>
    		<td>Mca</td>
    		<td>3rd</td>
    		<td>MCS-035</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>6</td>
    		<td>Mca</td>
    		<td>3rd</td>
    		<td>MCSL-036</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    </table>
<!------------------------------------------MCA 4th Semester Book-------------------------------------------------------->
    <table class="table table-striped table-bordered table-responsive-sm" style="display: none" id="mca4">
    	<tr class="bg-success text-white">
    		<th>Sl. No.</th>
    		<th>Programme Code</th>
    		<th>Semester</th>
    		<th>Book Name</th>
    		<th>Download</th>
    	</tr>
    	<tr>
    		<td>1</td>
    		<td>Mca</td>
    		<td>4th</td>
    		<td>MCS-041</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>2</td>
    		<td>Mca</td>
    		<td>4th</td>
    		<td>MCS-042</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>3</td>
    		<td>Mca</td>
    		<td>4th</td>
    		<td>MCS-043</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>4</td>
    		<td>Mca</td>
    		<td>4th</td>
    		<td>MCS-044</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>5</td>
    		<td>Mca</td>
    		<td>4th</td>
    		<td>MCSL-045</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    </table>
<!------------------------------------------MCA 5th Semester Book-------------------------------------------------------->
    <table class="table table-striped table-bordered table-responsive-sm" style="display: none" id="mca5">
    	<tr class="bg-success text-white">
    		<th>Sl. No.</th>
    		<th>Programme Code</th>
    		<th>Semester</th>
    		<th>Book Name</th>
    		<th>Download</th>
    	</tr>
    	<tr>
    		<td>1</td>
    		<td>Mca</td>
    		<td>5th</td>
    		<td>MCS-051</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>2</td>
    		<td>Mca</td>
    		<td>5th</td>
    		<td>MCS-052</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>3</td>
    		<td>Mca</td>
    		<td>5th</td>
    		<td>MCS-053</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>4</td>
    		<td>Mca</td>
    		<td>5th</td>
    		<td>MCSL-054</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>5</td>
    		<td>Mca</td>
    		<td>5th</td>
    		<td>MCSE-003</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>6</td>
    		<td>Mca</td>
    		<td>5th</td>
    		<td>MCSE-004</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    	<tr>
    		<td>7</td>
    		<td>Mca</td>
    		<td>5th</td>
    		<td>MCSE-011</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    </table>
<!------------------------------------------MCA 6th Semester Book-------------------------------------------------------->
    <table class="table table-striped table-bordered table-responsive-sm" style="display: none" id="mca6">
    	<tr class="bg-success text-white">
    		<th>Sl. No.</th>
    		<th>Programme Code</th>
    		<th>Semester</th>
    		<th>Book Name</th>
    		<th>Download</th>
    	</tr>
    	<tr>
    		<td>1</td>
    		<td>Mca</td>
    		<td>6th</td>
    		<td>MCSP-060</td>
    		<td><a href=""target="_blank">download</a></td>
    	</tr>
    </table>
    
    </div>
<!-- -----------------------------------Footer Section-------------------------------------------------------------------------->
<c:import url="footer.jsp"></c:import>
<!-- ---------------------------------End Footer Section--------------------------------------------------------------------->
</body>
</html>