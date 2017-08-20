<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*, java.util.*, java.text.* " errorPage="" %>

<div align="left" style="background-color:#028fef ">
<%
	DateFormat df=new SimpleDateFormat("EEEE, dd MMMM, yyyy");
	String date=df.format(new java.util.Date());
	out.print("| "+date+" | ");
	String login = (String)session.getAttribute("login");
	if("yes".equals(login))
	out.print((String)session.getAttribute("user")+" | <a href=logout.jsp><font color=000>Logout</font></a> |</font>");
%></div>

