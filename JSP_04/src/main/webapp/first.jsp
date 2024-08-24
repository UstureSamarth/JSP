<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>First Page</title>
</head>
<body>
	<h1>Welcome to this page</h1>
	<jsp:include page="second.jsp">
		<jsp:param value="Java" name="s1" />
		<jsp:param value="JEE" name="s2" />
		<jsp:param value="Framework" name="s3" />
		<jsp:param value="Algorithms" name="s4" />
	</jsp:include>
</body>
</html>