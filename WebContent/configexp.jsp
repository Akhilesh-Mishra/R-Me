<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,connect.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		<title>R-Me | Configure Experts</title>
		<link href="bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="shortcut icon" href="images/favicon1.ico">
		<style>

			.sub-menu{float:left;width:100%;}
			.content{float:left;width:100%;}
		</style>
	</head>
	<body>
		<jsp:include page="menu.jsp"/>
		<jsp:include page="header.jsp"/>
		<div  class="row">
			<div class="col-sm-3">
				<div class="panel panel-info">
					<div class="panel-heading">Task</div>
					<div class="panel-body">
						<a href="bugsadmin.jsp">View Bugs</a>
						<br/>
						<br/>
						<a href="configexp.jsp">Configure Experts</a>
						<br/>
						<br/>
						<a href="addexpert.jsp">Add Expert</a>
					</div>	
				</div>
			</div>
	

			<div class="col-sm-6">
				<div class="panel panel-success">
					<div class="panel-heading">Configuring Experts for Software Teams. </div>
					<div class="panel-body">
						<form name="form1" method="post" action="configexp1.jsp">
							<table class="table">
								<%
									if("success".equals((String)request.getParameter("msg"))){
										out.print("<tr><td colspan=2 bgcolor=#FFD7AE class=smalltext align=center height=25><font color=blue>Expert Configured Successfully!</font></td></tr>");
									}else if("error".equals((String)request.getParameter("msg"))){
										out.print("<tr><td colspan=2 bgcolor=#FFD7AE class=smalltext align=center height=25><font color=red>Expert already configured for this Product.</font></td></tr>");
									}
								%>
    	
								<tr>
									<th style=color:black>Product</th>
									<td>
										<select name="prodid" class="form-control">
											<%
												Connection con=ConnectionProvider.getConnection();
												Statement stmt = con.createStatement();
												String query = "select * from products";
												ResultSet rs = stmt.executeQuery(query);
												while(rs.next()) {
													out.print("<option style=color:blue value="+rs.getString("prodid")+">"+rs.getString("prodname")+"-"+rs.getString("version")+"</option>");
												}
												rs.close();
											%>
										</select>		
									</td>
								</tr>
								<tr>
									<th style=color:black>Technical Expert </th>
									<td>
										<select name="expertid" class="form-control">
											<%
												query = "select * from login where type='Expert'";
												rs = stmt.executeQuery(query);
												while(rs.next()) {
													out.print("<option style=color:blue value="+rs.getString("loginid")+">"+rs.getString("name")+"</option>");
												}
												rs.close();
												con.close();
											%>
										</select>
									</td>
								</tr>
								<tr>
									<td colspan="2" align="center"  height="25"><input type="submit" name="Submit" value="Submit" class="btn btn-success"/></td>
								</tr>
								<tr>
									<td colspan="2">
										<div align="center">
											<hr width="100" /><a href="admin.jsp">Back</a><hr width="100" />
										</div>
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
			<BR/>
	
			<BR/>
			<BR/>
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
