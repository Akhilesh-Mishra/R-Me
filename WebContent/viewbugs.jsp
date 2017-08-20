<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,connect.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitionasl//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		<link href="bootstrap3/css/bootstrap.css" rel="stylesheet" type="text/css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

		<title>R-Me | Bug List</title>

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
					<div class="panel-heading">Bug Status</div>
					<div class="panel-body">
						<table class="table">
							<tr bgcolor="#0054A8" class="whitetext" align="center">  
								<td>Bug ID</td>
								<td>Product</td>
								<td>Environment</td>
								<td>Type</td>
								<td>Synopsis</td>
								<td>Status</td>
								<td>&nbsp;</td>
							</tr>
							<%
								try{
									String u=(String)session.getAttribute("loginid");
									System.out.println(u);
									Connection con=ConnectionProvider.getConnection();
									Statement stmt = con.createStatement();
									String query = "select * from bug where AUTHORID='"+u+"' order by bugid asc";
									ResultSet rs = stmt.executeQuery(query);
									int i=2;
									while(rs.next()){
										if(i%2==0)
											out.println("<tr bgcolor=#CEE7FF>");
										else
											out.println("<tr bgcolor=#E8F3FF >");
										i++;
										out.print("<td style=color:#000 class=smalltext>"+rs.getString("bugid")+"</td>");
										out.print("<td style=color:#000 class=smalltext>"+rs.getString("prodname")+"</td>");
										out.print("<td style=color:#000 class=smalltext>"+rs.getString("env")+"</td>");
										out.print("<td style=color:#000 class=smalltext>"+rs.getString("type")+"</td>");
										out.print("<td style=color:#000 class=smalltext>");
										String des=rs.getString("description");
										if(des.length()>40)
											des=des.substring(0,40)+". . .";
										out.println(des);
										out.print("</td>");
										out.print("<td style=color:#000 class=smalltext>"+rs.getString("status")+"</td>");
										out.print("<td style=color:#000 class=smalltext><a href='bugdetails.jsp?bugid="+rs.getString("bugid")+"'>Detail</a></td>");	
										out.println("</tr>");		
									}
		
									out.print("<center><div align=left style=color:#000> Total Bugs: "+(i-2)+"</div></center>");
								}catch(Exception e){
									System.out.print(e);
								}  
							%>
						</table>
						<div align="center">
							<hr width="100" />
							<a href="user.jsp">Back</a>
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
