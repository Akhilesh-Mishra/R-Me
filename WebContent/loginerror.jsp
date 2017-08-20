<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>Welcome - Authentication Error!</title>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
		<link href="bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />

	</head>
	<body>


		<jsp:include page="menu.jsp"/>
		<jsp:include page="header.jsp"/>
		<div  class="row">
			<div class="col-sm-3">
			</div>
			<div class="col-sm-6">
				<div class="panel panel-warning">
					<div class="panel-heading">Login Error</div>
					<div class="panel-body"><br/>

						<h2>You are not Authorized to view this page.</h2> 
						<h4>Your have been logged as some other type of User. <br /> Re-Login after <a href="logout.jsp">Logout</a></h4>
					</div>
					<br/>
					<br/>
					<br/>
					<br/>
	
					<br/><br/>

 
				</div>
			</div>
		</div>
		<footer class="container-fluid text-center">
			<p>All Copyright © <br/> Akhilesh Kr. Mishra</p>
		</footer>
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
		<script type="text/javascript" src="js/jquery.inview.min.js"></script>
		<script type="text/javascript" src="js/wow.min.js"></script>
		<script type="text/javascript" src="js/mousescroll.js"></script>
		<script type="text/javascript" src="js/smoothscroll.js"></script>
		<script type="text/javascript" src="js/jquery.countTo.js"></script>
		<script type="text/javascript" src="js/lightbox.min.js"></script>
		<script type="text/javascript" src="js/main.js"></script>
	</body>
</html>
