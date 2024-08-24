<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Output</title>
</head>
<body>

	<% 
	Integer count=(Integer)application.getAttribute("hitcount");
	if(count==null)
		count=1;
	else
		count++;
	application.setAttribute("hitcount", count); 
	%>
	<h1>Hit count of application :: <%= count %></h1>
</body>
</html> --%>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Output</title>
</head>
<body>

	<%
	Integer scount = (Integer) application.getAttribute("usercount");
	if (session.isNew()) {
		if (scount == null)
			scount = 1;
		else
			scount++;
	}
	application.setAttribute("usercount", scount);
	%>
	<h1>
		Hit count of application ::
		<%=scount%></h1>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Output</title>
</head>
<body>

	<%
	Integer scount = (Integer) session.getAttribute("sessionrequestcount");
	if (session.isNew()) {
		scount = 1;
	} else {
		scount++;
	}
	session.setAttribute("sessionrequestcount", scount);
	%>
	<h1>
		Hit count of application ::
		<%=scount%></h1>
</body>
</html>