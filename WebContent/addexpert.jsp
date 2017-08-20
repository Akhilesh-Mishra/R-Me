<%@ page	 contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>R- Me | Add Expert</title>
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/animate.min.css" rel="stylesheet"> 
		<link href="css/font-awesome.min.css" rel="stylesheet">
		<link href="css/lightbox.css" rel="stylesheet">
		<link href="css/main.css" rel="stylesheet">
		<link id="css-preset" href="css/presets/preset1.css" rel="stylesheet">
		<link href="css/responsive.css" rel="stylesheet">
		<link rel="stylesheet" href="css/style.css">
		<link href="mystyle.css" rel="stylesheet" type="text/css" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
		<link rel="shortcut icon" href="images/favicon1.ico">
	</head>
	<body>
		<jsp:include page="menu.jsp"/>
		<jsp:include page="header.jsp"/>
		<div class="wrapper">
			<div class="containers">
				<h1>Add Expert
				</h1>
				<div class="login">
					<%
						if("blank".equals((String)request.getParameter("msg")))
							out.println("<div class='color color.warning'>Field Blank | Password and Re-Enter Password mismatch.</div>");
						else if("error".equals((String)request.getParameter("msg")))
							out.println("<div class='color color.warning'>Login Already exists.</div>");
					%>	
					<form id="form1" name="form1" method="post" action="SignUp">
						<table class="table">
							
							<tr>
								<th align="left">Login ID </th>
								<td>
									<input type="text" name="loginid" size="20" class="form-control" Placeholder="Enter ID"/>
								</td>
							</tr>
							<tr>
								<th align="left">Password</th>
								<td>
									<input type="password" name="password" size="20" class="form-control" Placeholder="Enter Password"/>
								</td>
							</tr>
							<tr>
								<th align="left">Re-Enter Password </th>
								<td>
									<input type="password" name="repassword" size="20" class="form-control" Placeholder="Re-Enter Password"/>
								</td>
							</tr>
							<tr>
								<th align="left">Name</th>
								<td>
									<input type="text" name="name" size="20" class="form-control" Placeholder="Enter Name"/>
								</td>
							</tr>
							<tr>
								<th align="left">E-Mail</th>
								<td>
									<input type="text" name="email" size="20" class="form-control" Placeholder="Enter E-mail"/>
								</td>
							</tr>
							<tr>
								<td align="right">
									<input type="hidden" name="type" value="Expert"/>
									<input type="submit" value="Submit" class="btn btn-success"/></td>
									<td>
										<a href="admin.jsp"><input type="text" value="Back" class="btn btn-success"/></a>
								</td>
							</tr>
						</table>
					</form>
				</div>
			<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
			<script src="js/index.js"></script>
		</div>
		<ul class="bg-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="js/index.js"></script>
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
