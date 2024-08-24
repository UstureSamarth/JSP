<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sample</title>
</head>
<body>

<h2>
	PageScope is <%= pageContext.getAttribute("p")%>
	RequestScope is <%=pageContext.getAttribute("r",2)%>
	SesssionScope is <%=pageContext.getAttribute("s",3)%>
	ApplicationScope <%=pageContext.getAttribute("a",4)%>
</h2>

</body>
</html>