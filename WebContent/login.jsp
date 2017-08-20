<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*, javax.servlet.*" errorPage="" %>
<%
String login = (String)session.getAttribute("login");
if("yes".equals(login)){
	RequestDispatcher rd=null;
	
	if("Admin".equals((String)request.getParameter("type")) && "Admin".equals((String)session.getAttribute("type")))
		rd=request.getRequestDispatcher("admin.jsp");
	else if("Expert".equals((String)request.getParameter("type")) && "Expert".equals((String)session.getAttribute("type")))
		rd=request.getRequestDispatcher("expert.jsp");
	else if("User".equals((String)request.getParameter("type")) && "User".equals((String)session.getAttribute("type")))
		rd=request.getRequestDispatcher("user.jsp");
	else
		rd=request.getRequestDispatcher("loginerror.jsp");
	rd.forward(request, response);	
}
else{
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>R- Me | Login</title>
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
				<h1>Welcome <%=(String)request.getParameter("type")%>
					<input type="hidden" name="type" value="<%=(String)request.getParameter("type")%>" />
				</h1>
				<div class="login">
					<header class="login-header">
						<span class="text">
							<%
								if("Admin".equals((String)request.getParameter("type"))){
									out.println("Sign in as Administrator");
									out.println("An Administrator can assign various reported problems to different Technical Experts and update the status of Problems.");
								}
								else if("Expert".equals((String)request.getParameter("type"))){
									out.println("Sign in as Technical Expert");
									out.println("A Technical Expert can give comments on the Reported Problems and try to fix them.");
								}
								else if("User".equals((String)request.getParameter("type"))){
									out.println("Sign in Reporting Problems");
									out.println("A Normal User can sign in for Reporting Problems to the Admin.");
									out.println("New User Please <a href=signup.jsp>Signup</a>");
								}	
							%>
						</span></span>
					</header>
					<form id="form" name="form" method="post" action="Login" class="login-form"><br /><br />
						<%
							if("loginerror".equals((String)request.getParameter("msg")))
								out.println("<div class=errortext align=center>Invalid Login ID or Password.</div>");
						%>
		
						<input type="text" name="loginid" class="inputtext" placeholder="Login ID"/>
						<input type="password" name="password" class="inputtext" placeholder="Password"/>
						<input type="hidden" name="type" value="<%=(String)request.getParameter("type")%>" /> 
						<input type="submit" name="Submit" value="Submit" class="inputtext" />	  
				
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
<%}%>
