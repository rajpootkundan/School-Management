<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!------------------------------------------------- Start Menu Bar ------------------------------------------------------------>
<c:import url="header.jsp"></c:import>
<!------------------------------------------------------- End Menu Bar ------------------------------------------------------------>
<br><br><br><br><br>
<!------------------------------------------------- Start Breadcrumbs selection ------------------------------------------------------------>
<section class="breadcrumbs-section">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item active">About</li> 
                    </ol>
                </div>
            </div>
        </div>
    </section>
<!------------------------------------------------- End Breadcrumbs selection ------------------------------------------------------------>
<!------------------------------------------------------- About Devloper ------------------------------------------------------------>
    <div class="container-fluid">
        <div class="row">
        	<div class="col-md-4">
            
            </div>
            <div class="col-md-8">
            <h2 style="font-style:italic; color:blue; font-weight: bold;">About Me</h2>
            </div>
        </div>
<!------------------------------------------------- Image Of Devloper ------------------------------------------------------------>
        <div class="row">
            <div class="col-md-4">
                <div class="card" style="background: orange; padding:0px;margin:0px">
                   <img src="image/gallery/chhath1.jpg" class="card-img-top">
                      <div class="card-body">
                         <h3 style="text-align: center; color:white">Kundan Singh</h3>
                         <h4 style="text-align: center; color:white">Java Developer</h4>
                      </div>
                </div>
            </div>
<!------------------------------------------------- Introduction of Devloper ------------------------------------------------------------>
            <div class="col-md-8">
                <h5 style="font-style:italic; text-align:justify;"> Hi Friends, My name is Kundan Singh from Bihar.I Parsuing
                	Mca in stream of Software developer and engineering from IGNOU (Darbhanga) with aggregate 80%. i have complete BCA from ignou With
                	71% marks. and also complete Intermidate of sciece(isc) from Shree Narayan Singh collage(Motihari) with 67.6% Marks<br>
                	About my  family, We are  Four Members in my family. My father is a farmer and mother is a housemaker. i have only one brother 
                	he is elder to me<br>about my achivements, i naver made any acchivements at districe level and state level but in collage life 
                	i got top in any math comptition<br>my strengths are hardworker, self motivation and dedicated towards my work.and i'm good 
                	learner as well as teacher.<br>My hobbies are making searching diffrent type of sites, listning music, playeng games in smart phone<br>
                	My Short term goal to get placed in well reputed company.<br>My long term goal to placed in any mnc company and give my best to your<br>
                	As a fresher, I don't have any working experiance, but i will prove once the opportunity comes.
                </h5>
                <br>
<!------------------------------------------------- Technical profile of devloper ------------------------------------------------------------>
                <h4 style="font-style:italic; text-align:justify; font-weight: bold; color:blue;">Technical Profile</h4>
                 	<h6><strong>Languages :</strong> C , C++ ,JAVA, ADVANCE JAVA</h6>
                    <h6><strong>Plateforms or Editor :</strong>Notepad++, Visual Studio Code, Eclipse,Netbeans ,etc. </h6>
                    <h6><strong>Framework :</strong>Hibernate</h6>
                    <h6><strong>Web Designing & Scripting :</strong> HTML ,CSS ,Bootstrap ,JavaScript</h6>
                    <h6><strong>Database Language :</strong>MYSQL, Oracle </h6>
                    <br>
<!------------------------------------------------------ Contact of Devloper ------------------------------------------------------------------>
              	<h4 style="font-style:italic; text-align:justify; font-weight: bold; color:blue;">Contact Us</h4>
              	<h6 class="col-md-12"><a href="#"><i class="fa fa-phone"></i></a>7004553842 </h6> 
              	<h6 class="col-md-12"><a href="https://web.whatsapp.com/send?phone=919798501225" target="_blank"><i class="fa fa-whatsapp"></i></a>9798501225</h6>
              	<h6 class="col-md-12"><a href="#"><i class="fa fa-envelope"></i></a>kundanmth01@gmail.com</h6>
            </div>
        </div>
    </div>
	<br><br>
<!------------------------------------------------- Start footer section ------------------------------------------------------------>
<c:import url="footer.jsp"></c:import>
<!------------------------------------------------- end footer section ------------------------------------------------------------>
</body>
</html>
