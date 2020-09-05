<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
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
<!-------------------------------------------------------Start Menu Bar-------------------------------------------------------------->
<c:import url="header.jsp"></c:import>
<!------------------------------------------------------- End Menu Bar --------------------------------------------------------------->
<br><br><br><br><br>
<!------------------------------------------------- Start Breadcrumbs selection ------------------------------------------------------>
<section class="breadcrumbs-section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item active">Contact</li> 
                    </ol>
                </div>
            </div>
        </div>
    </section>
<!------------------------------------------------- End Breadcrumbs selection ------------------------------------------------------------>
<!------------------------------------------------------ Contact  Details ---------------------------------------------------------------->
    <div class="container">
        <div class="row">
            <div class="col-md-6">
            	<h1 style="font-style:italic; text-align:justify; font-weight: bold; color:orange;">Contact Us</h1>
              	<h5 class="mailLink col-md-12">7004553842 </h5> 
              	<h5 class="mailLink col-md-12">9798501225</h5>
              	<h5 class="mailLink col-md-12">kundanmth01@gmail.com</h5>
            </div>
            <div class="col-md-6">
              	<h1 style="font-style:italic; text-align:center; font-weight: bold; color:orange;">Address</h1>
              	<h5 style="text-align: center;">Vill:- Bhatkarya, P.O:- Bhatwaliya<br>P.S:- Sangrampur,Dis.:- Motihari<br>State:- Bihar, Pin:-845417</h5>
            </div>
        </div>
    </div>
<br><br>
<!--------------------------------------------------- Google Map Start---------------------------------------------------------------------->
        <div class="col-sm-12">
          <div class="mapouter">
           	<h1 style="color:orange; font-family:cursive; text-align:center;font-weight: bold;">Visit Here</h1>
           		<div class="gmap_canvas">
           			<iframe width="100%" height="495" id="gmap_canvas" src="https://maps.google.com/maps?q=kundan%20singh%20palace&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
           			<a href="https://thevpndeal.com/nordvpn-coupon/"></a>
           		</div>
         	</div>
        </div>
    <!-- -----------------------------------------------Google Map End-------------------------------------------------------------------------->
<br><br><br>
<!--------------------------------------------------- Start Footer section --------------------------------------------------------------------->
<c:import url="footer.jsp"></c:import>
<!------------------------------------------------- End Footer section ------------------------------------------------------------>
</body>
</html>
