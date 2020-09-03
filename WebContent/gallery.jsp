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
		response.sendRedirect("Login.jsp");
	}
%>
<!------------------------------------------------- Start Menu Bar ------------------------------------------------------------>
<c:import url="header.jsp"></c:import>
<!-------------------------------------------------------- End Menu Bar ------------------------------------------------------------>
<br><br><br><br><br>
<!------------------------------------------------- Start Breadcrumbs selection ------------------------------------------------------------>
<section class="breadcrumbs-section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item active">Gallery</li> 
                    </ol>
                </div>
            </div>
        </div>
    </section>
<!------------------------------------------------- End Breadcrumbs selection ------------------------------------------------------------>
    <div class="container-fluid">
    	<div class="row">
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/gate.JPG" target="_blank"><img src="image/gallery/gate.JPG" class="img-fluid img-thumbnail"></a>  
             	</div>Captured in India gate
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/astyam.jpg" target="_blank"><img src="image/gallery/astyam.jpg" class="img-fluid img-thumbnail"style="width: 100%;"></a>
             	</div>Astyam in Amawa
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/chhath.jpg" target="_blank"><img src="image/gallery/chhath.jpg" class="img-fluid img-thumbnail"></a>
                  	Chhath 2018 in amawa
             	</div>
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/chhath1.jpg" target="_blank"><img src="image/gallery/chhath1.jpg" class="img-fluid img-thumbnail"></a>
                  	Chhath 2018 in amawa
             	</div>
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/cp.jpg" target="_blank"><img src="image/gallery/cp.jpg" class="img-fluid img-thumbnail"></a>
                  	Central Park Delhi
             	</div>
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/cp1.jpg" target="_blank"><img src="image/gallery/cp1.jpg" class="img-fluid img-thumbnail"></a>
                  	Central Park Delhi
             	</div>
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/chowk.jpg" target="_blank"><img src="image/gallery/chowk.jpg" class="img-fluid img-thumbnail"></a>
                  	Our Villager's Tample
             	</div>
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/cycle.jpg" target="_blank"><img src="image/gallery/cycle.jpg" class="img-fluid img-thumbnail"></a>
                  	Cycle Riding
             	</div>
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/chhath2.jpg" target="_blank"><img src="image/gallery/chhath2.jpg" class="img-fluid img-thumbnail"></a>
                  	Chath 2020 in Village
             	</div>
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/chhath3.jpg" target="_blank"><img src="image/gallery/chhath3.jpg" class="img-fluid img-thumbnail"></a>
                  	Chath 2020 in Village
             	</div>
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/kosi.jpg" target="_blank"><img src="image/gallery/kosi.jpg" class="img-fluid img-thumbnail"></a>
                  	Kosi 2020 in Village
             	</div>
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/garibnath.jpg" target="_blank"><img src="image/gallery/garibnath.jpg" class="img-fluid img-thumbnail"></a>
                  	Garib Nath Tample
             	</div>
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/ghar.jpg" target="_blank"><img src="image/gallery/ghar.jpg" class="img-fluid img-thumbnail"></a>
                  	Masti in home
             	</div>
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/javaclass.jpg" target="_blank"><img src="image/gallery/javaclass.jpg" class="img-fluid img-thumbnail"></a>
                  	In Our Java Class
             	</div>
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/metro.jpg" target="_blank"><img src="image/gallery/metro.jpg" class="img-fluid img-thumbnail"></a>
                  	Delhi metro Station
             	</div>
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/motihari.jpg" target="_blank"><img src="image/gallery/motihari.jpg" class="img-fluid img-thumbnail"></a>
                  	Motihari Railway Station
             	</div>
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/mzppark.jpg" target="_blank"><img src="image/gallery/mzppark.jpg" class="img-fluid img-thumbnail"></a>
                  	Muzuffarpur Bharat Ma Naman Asthal Park
             	</div>
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/park.jpg" target="_blank"><img src="image/gallery/park.jpg" class="img-fluid img-thumbnail"></a>
                  	Our Village
             	</div>
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/redfort.jpg" target="_blank"><img src="image/gallery/redfort.jpg" class="img-fluid img-thumbnail"></a>
                  	Red Fort Delhi
             	</div>
    		</div>
    		<div class="col-sm-4">
    			<div class="galleryimage">
               		<a href="image/gallery/shivmandir.jpg" target="_blank"><img src="image/gallery/shivmandir.jpg" class="img-fluid img-thumbnail"></a>
                  	God Shiv Tample New Delhi
             	</div>
    		</div>
    	</div>
    </div>
	<br><br>
<!------------------------------------------------------ Google Map Start---------------------------------------------------------------------->
     <div class="col-sm-12">
     	<div class="mapouter">
        	<h1 style="color:orange; font-family:cursive; text-align:center;font-weight: bold;">Visit Here</h1>
           		<div class="gmap_canvas">
           			<iframe width="100%" height="495" id="gmap_canvas" src="https://maps.google.com/maps?q=kundan%20singh%20palace&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
           			<a href="https://thevpndeal.com/nordvpn-coupon/"></a>
           		</div>
         	</div>
        </div>
    <!-- ------------------------------------------------Google Map End-------------------------------------------------------------------------->
<br><br><br>
<!------------------------------------------------- Start Footer Section ------------------------------------------------------------------------>
<c:import url="footer.jsp"></c:import>
<!------------------------------------------------- End Footer section --------------------------------------------------------------------------->
</body>
</html>