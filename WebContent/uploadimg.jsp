<%@ page language="java" import="com.oreilly.servlet.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Upload Image</title>
	</head>
	<body>
		<%
			try{
				String path=getServletContext().getRealPath("/");
				String filename=request.getParameter("pic");
				System.out.println(" path : "+path+" picture name : "+filename);
				MultipartRequest mpr=new MultipartRequest(request,path,500*1024*1024);
				String path1=mpr.getOriginalFileName("file");
				System.out.println("original file name "+path1);

				//file is the rwq parameter name
				String path2=path+"/"+path1;
				System.out.println("complete path "+path2);
				FileInputStream fin=new FileInputStream(path2);
				FileOutputStream fout=new FileOutputStream(path+"/"+"abc12"+".jpg");
				int i=0;
				while((i=fin.read())!=-1) {
					fout.write(i);
				}

			}
			catch(Exception ex) {
				out.println(ex);
				ex.printStackTrace();
			}
		%>

	</body>
</html>