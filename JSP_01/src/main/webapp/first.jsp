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
	pageContext.setAttribute("p", "page");
	request.setAttribute("r", "request");
	session.setAttribute("s", "session");
	application.setAttribute("a", "application");
	application.log("Hello");
	
	pageContext.forward("second.jsp");

%>
</body>
</html>