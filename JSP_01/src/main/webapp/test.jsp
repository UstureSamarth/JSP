<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sample</title>
</head>
<body>

	<%
	pageContext.setAttribute("a", "page");
	request.setAttribute("a", "request");
	session.setAttribute("a", "session");
	application.setAttribute("a", "application");
	%>
	<h1>
		Find Attribute is ::
		<%=pageContext.findAttribute("a")%></h1>
</body>
</html>