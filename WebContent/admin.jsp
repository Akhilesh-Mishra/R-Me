<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<title>R-Me | Admin</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<div class="logo">
							<span class="icon fa-diamond"></span>
						</div>
						<div class="content">
							<div class="inner">
								<h1>Admin</h1>
                                <h3>As a Administrator You can:</h3>
                                <ul>
                                    <li>View all reported problems, assign problems to different Technical Experts to fix it.</li>
                                    <li>Configure different Technical Experts for a particular Software Product.</li>
                                </ul>
							</div>
						</div>
						<nav>
							<ul>
								<li><a href="bugsadmin.jsp">View Problems</a></li>
								<li><a href="addexpert.jsp">Add Expert</a></li>
								<li><a href="configexp.jsp">Configure Experts</a></li>
								<li><a href="logout.jsp">Logout</a></li>
							</ul>
						</nav>
					</header>

				
				<!-- Footer -->
					<footer id="footer">
						<p class="copyright">&copy; Akhilesh kr. Mishra. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
					</footer>

			</div>

		<!-- BG -->
			<div id="bg"></div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>
