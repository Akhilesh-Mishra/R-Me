<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<title>Welcome - Home</title>
		
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
<title>Welcome - Sign Up!</title>

</head>
<body>
		<jsp:include page="menu.jsp"/>
		<jsp:include page="header.jsp"/>

		<div  class="row">
			<div class="col-sm-3">
			</div>
			<div class="col-sm-6">
				<div class="panel panel-info">
					<div class="panel-heading">Sign Up </div>
					<div class="panel-body">
						<%
							if("blank".equals((String)request.getParameter("msg")))
								out.println("<div ><font color='rad'>Field Blank | Password and Re-Enter Password mismatch.</font></div>");
							else if("error".equals((String)request.getParameter("msg")))
								out.println("<div ><font color='rad'>Login Already exists.</font></div>");
						%>
						<form id="form1" name="form1" method="post" action="SignUp">
							<table class="table table-responsive">
			
								<tr>
									<td ><label for="loginid">Login ID</label> </td>
									<td><input type="text" name="loginid" size="20" class="form-control"/></td>
								</tr>
								<tr>
									<td ><label for="password">Password</label></td>
									<td><input type="password" name="password" size="20" class="form-control"/></td>
								</tr>
								<tr>
									<td><label for="repassword">Re Enter Password</label></td>
									<td><input type="password" name="repassword" size="20" class="form-control"/></td>
								</tr>
								<tr>
									<td><label for="name">Name</label></td>
									<td><input type="text" name="name" size="20" class="form-control"/></td>
								</tr>
								<tr>
									<td ><label for="loginid">Email Id</label></td>
									<td><input type="text" name="email" size="20" class="form-control"/></td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="hidden" name="type" value="User"/>
										<center> 
											<input type="submit" value="Submit" class="btn btn-primary" />
											<input type="reset" value="Reset" class="btn btn-primary"/>
										</center>
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
		<footer class="container-fluid text-center">
			<p>All Copyright © <br/> Akhilesh Kumar Mishra</p>
		</footer>
    
	</body>
</html>
