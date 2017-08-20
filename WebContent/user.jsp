<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		<link href="bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
	
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<title>R-Me | User Section</title>

	</head>
	<body>
		<jsp:include page="menu.jsp"/>
		<jsp:include page="header.jsp"/>
		<div  class="row">
			<div class="col-sm-3">
				<div class="panel panel-success">
					<div class="panel-heading">User Bug Reporting</div>
					<div class="panel-body">
						<a href="reportbug.jsp">Report A New Bug</a><br/><br/>
						<a href="viewbugs.jsp">View Status</a><br/><br/>
						<a href="logout.jsp">Logout</a><br/><br/>
					</div>
				</div>
			</div>
			<div class="col-sm-8">
				<div class="panel panel-success">
					<div class="panel-heading">Report a Bug</div>
						<div class="panel-body">


   
							<br/>
    
							<ul> 
								<li>
									<font color="#ff0000">Select Product, Environment and Type for the Bug being reported by you.</font>
								</li>
							</ul>
							<ul> 
								<li>
									<font color="#ff0000">Try to describe your bug precisely and write the steps to reproduce the bug again.</font>
								</li>
							</ul>
							<ul> 
								<li>
									<font color="#ff0000">Also specify some erroneous behaviour of the program when bug appears. </font>
								</li> 
							</ul>
						</div>
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
