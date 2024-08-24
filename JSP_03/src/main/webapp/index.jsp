<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>Registration Form</h1>
		<form action="./process.jsp">
			<table>
				<tr>
					<th>Name</th>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<th>Age</th>
					<td><input type="number" name="age" /></td>
				</tr>
				<tr>
					<th>Adderss</th>
					<td><input type="text" name="address" /></td>
				</tr>
				<tr>
					<th></th>
					<td><input type="Submit" value="Register" /></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>