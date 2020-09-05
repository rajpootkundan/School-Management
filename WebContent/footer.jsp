<!DOCTYPE html >
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/fontawesome.min.css">
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
	if(session.getAttribute("id")==null){
		response.sendRedirect("index.html");
	}
%>
	<div class="centerdiv">
		<a href="https://web.whatsapp.com/send?phone=919798501225" target="_blank">
			<i class="fa fa-2x fa-whatsapp"></i>&nbsp;&nbsp;&nbsp;&nbsp;
		</a>
		<a href="https://www.facebook.com/kundansingh.rajput.376695/"target="_blank">
			<i class="fa fa-2x fa-facebook"></i>&nbsp;&nbsp;&nbsp;&nbsp;
		</a>
		<a href="https://www.instagram.com/rajpoot_k.s_rana/"target="_blank">
			<i class="fa fa-2x fa-instagram"></i>&nbsp;&nbsp;&nbsp;&nbsp;
		</a>
		<a href="" target="_blank" target="_blank">
			<i class="fa fa-2x fa-twitter"></i>
		</a>
	</div>
	<div style="text-align: center;">Copyright & copy2020 kundanmth01@gmail.com<p>All Rights Reserved</p> 
	</div>
</body>
</html>
