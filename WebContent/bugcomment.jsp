<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,connect.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		<link href="bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
	
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<title>Welcome - Expert/Comments</title>
	</head>
	<body>
		<jsp:include page="menu.jsp"/>
		<jsp:include page="header.jsp"/>
		<div  class="row">
			<div class="col-sm-1">
			</div>
			<div class="col-sm-10">
				<div class="panel panel-success">
					<div class="panel-heading">Your Bug Detail</div>
					<div class="panel-body">
					<table class="table">
					<%
						Connection con=ConnectionProvider.getConnection();
						try{
			
							Statement stmt = con.createStatement();
							String query = "select * from bug where bugid="+(String)request.getParameter("bugid");
							ResultSet rs = stmt.executeQuery(query);
							while(rs.next()){
								out.print("<tr><td bgcolor=#028fef>Bug ID</td><td bgcolor=79c6fa>"+rs.getString("bugid")+"</td><td bgcolor=#028fef>Author</td><td bgcolor=79c6fa>"+rs.getString("author")+"</td></tr>");
								out.print("<tr><td bgcolor=#028fef>Product Name</td><td colspan=3 bgcolor=79c6fa>"+rs.getString("prodname")+"</td></tr>");
								out.print("<tr><td bgcolor=#028fef>Environment</td><td bgcolor=79c6fa>"+rs.getString("env")+"</td><td bgcolor=#028fef>Type</td><td bgcolor=79c6fa>"+rs.getString("type")+"</td></tr>");
								out.print("<tr><td colspan=4 bgcolor=#028fef>Description</td></tr>");	
								out.print("<tr><td colspan=4  bgcolor=79c6fa>"+rs.getString("description")+"</td></tr>");
								out.print("<tr><td bgcolor=#028fef>Priority</td><td colspan=3 bgcolor=79c6fa>"+rs.getString("priority")+"</td></tr>");
		
								out.print("<tr><td bgcolor=#028fef>Status</td><td bgcolor=79c6fa>"+rs.getString("status")+"</td><td bgcolor=#028fef>Responsible</td><td bgcolor=79c6fa>"+rs.getString("assign_to")+"</td></tr>");
							}
							rs.close();
							stmt.close();
		
						}catch(Exception e){
							System.out.print(e);
						}  
					%>
					<tr>
						<td colspan="4" bgcolor="#0054A8">Expert Comments/Solutions</td>
					</tr>
					<tr>
						<td colspan="4">
							<form name="form" method="post" action="addcomment.jsp">
								<textarea cols="60" rows="4" class="form-control" name="sol" placeholder="Add a comment..." style="box-shadow:inset 1px 1px 2px 0px rgba(0, 0, 0, 0.5), inset -1px -1px 2px 0px rgba(0, 0, 0, 0.5)"></textarea>
								<input type="hidden" name="bugid" value="<%=(String)request.getParameter("bugid")%>" />
								<input type="hidden" name="expertid" value="<%=session.getAttribute("loginid")%>" />
								<input type="hidden" name="expert" value="<%=session.getAttribute("user")%>" /><br /><br />
								<div align="center">
									<input type="submit" value="Add Your Comment" class="btn btn-success" />
								</div>
							</form>
						</td>
					</tr>
					<tr>
						<table class="table" border="1px">
						<tr>
							<td colspan="2" bgcolor="#0054A8" class="whitetext">Audit Trail</td>
						</tr>
						<tr bgcolor=#028fef>
							<td class="smalltext" width="150">Expert</td>
							<td class="smalltext">Comments</td>
						</tr>
						<%

							try{
	
								Statement stmt = con.createStatement();
								String query = "select * from solutions where bugid="+(String)request.getParameter("bugid");
								ResultSet rs = stmt.executeQuery(query);
								while(rs.next()){
									out.print("<tr>");
									out.print("<td bgcolor=#028fef class=smalltext>"+rs.getString("expert")+"</td>");
									out.print("<td bgcolor=#028fef class=smalltext>"+rs.getString("soln")+"</td>");
									out.print("</tr>");	
								}
								rs.close();
								stmt.close();
								con.close();
							}catch(Exception e){
								System.out.print(e);
							}  
						%>
					</table>
				</tr>
			</table>
			<div align="center">
				<hr width="100" />
					<a href="expert.jsp">Back</a>
				<hr width="100" />
			</div>
		</div>
	</div>
	</div>
	</div>
	<footer class="container-fluid text-center">
		<p style=color:#000>All Copyright © <br/> Akhilesh kr. Mishra</p>
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
