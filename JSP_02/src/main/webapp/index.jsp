<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Output</title>
</head>
<body>
	<jsp:useBean id="student" class="in.app.bean.Student" scope="page">
		<%--
		<jsp:setProperty property="id" name="student" value='<%= Integer.parseInt(request.getParameter("id")) %>' />
		<jsp:setProperty property="name" name="student" value='<%= request.getParameter("name") %>' />
		<jsp:setProperty property="address" name="student" value='<%= request.getParameter("address") %>' />
		<jsp:setProperty property="salary" name="student" value='<%= Integer.parseInt(request.getParameter("salary")) %>' />
		--%>
		<jsp:setProperty property='*' name="student"/>
	</jsp:useBean>
	<center>
		<h1>Student Details</h1>
		<table border='1'>
			<tr>
				<th>Id</th>
				<td><jsp:getProperty property="id" name="student" /></td>
			</tr>
			<tr>
				<th>Name</th>
				<td><jsp:getProperty property="name" name="student" /></td>
			</tr>
			<tr>
				<th>Address</th>
				<td><jsp:getProperty property="address" name="student" /></td>
			</tr>
			<tr>
				<th>Salary</th>
				<td><jsp:getProperty property="salary" name="student" /></td>
			</tr>
		</table>

	</center>
</body>
</html>