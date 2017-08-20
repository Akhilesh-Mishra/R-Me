<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,connect.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		<link href="bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

		<title>Welcome - Bug Detail</title>
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
							try{
								Connection con=ConnectionProvider.getConnection();
								Statement stmt = con.createStatement();
								String query = "select * from bug where bugid="+(String)request.getParameter("bugid");
								ResultSet rs = stmt.executeQuery(query);
								while(rs.next()){
									out.print("<tr><td bgcolor=#028fef>Bug ID</td><td bgcolor=#79c6fa>"+rs.getString("bugid")+"</td><td bgcolor=#028fef>Author</td><td bgcolor=#79c6fa>"+rs.getString("author")+"</td></tr>");
									out.print("<tr><td bgcolor=#028fef>Product Name</td><td bgcolor=#79c6fa colspan=3>"+rs.getString("prodname")+"</td></tr>");
									out.print("<tr><td bgcolor=#028fef>Environment</td><td bgcolor=#79c6fa>"+rs.getString("env")+"</td><td bgcolor=#028fef>Type</td><td bgcolor=#79c6fa>"+rs.getString("type")+"</td></tr>");
									out.print("<tr><td colspan=4 bgcolor=#028fef>Description</td></tr>");	
									out.print("<tr><td bgcolor=#79c6fa colspan=4 >"+rs.getString("description")+"</td></tr>");
									out.print("<tr><td bgcolor=#028fef>Priority</td><td bgcolor=#79c6fa colspan=3>"+rs.getString("priority")+"</td></tr>");
		
									out.print("<tr><td bgcolor=#028fef>Status</td><td bgcolor=#79c6fa>"+rs.getString("status")+"</td><td bgcolor=#028fef>Responsible</td><td bgcolor=#79c6fa>"+rs.getString("assign_to")+"</td></tr>");
								}
								rs.close();
								stmt.close();
								con.close();
							}catch(Exception e){
								System.out.print(e);
							}  
						%>


						<tr>
							<table class="table">
								<tr>
									<td colspan="2" bgcolor="#0054A8" class="whitetext">Audit Trail</td>
								</tr>
								<tr bgcolor=#028fef>
									<td class="smalltext" width="150">Expert</td>
									<td class="smalltext">Comments</td>
								</tr>
								<%

									try{
										Connection con=ConnectionProvider.getConnection();
										Statement stmt = con.createStatement();
										String query = "select * from solutions where bugid="+(String)request.getParameter("bugid");
										ResultSet rs = stmt.executeQuery(query);
										while(rs.next()){
											out.print("<tr>");
											out.print("<td bgcolor=#79c6fa class=smalltext>"+rs.getString("expert")+"</td>");
											out.print("<td bgcolor=#79c6fa class=smalltext>"+rs.getString("soln")+"</td>");
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
							<a href="viewbugs.jsp">Back</a>
							<hr width="100" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="container-fluid text-center">
		<p style=color:#000>All Copyright © <br/> Akhilesh Kumar Mishra</p>
	</footer>
	</body>
</html>
