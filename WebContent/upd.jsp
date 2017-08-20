<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Upload Images</title>
	</head>
	<body>
		<form action="uploadimg.jsp" method="get" enctype="multipart/form-data">
			<input type="file" name="pic">
			<input type="submit" >
			<br><br><a href='show'>Click here to show uploaded image</a>
		</form>
	</body>
</html>