<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Output</title>
</head>
<body>
	<%!Integer id;
	Integer age;
	String name;
	String address;

	static Connection connection = null;
	static Statement stmt = null;
	ResultSet resultSet = null;

	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql:///jspdb";
			String user = "root";
			String password = "Samarth@123";
			connection = DriverManager.getConnection(url, user, password);
			stmt = connection.createStatement();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException se) {
			se.printStackTrace();
		}
	}%>
	<%
	name = request.getParameter("name");
	age = Integer.parseInt(request.getParameter("age"));
	address = request.getParameter("address");
	resultSet = stmt.executeQuery("select * from users where name='" + name + "'");
	boolean available = resultSet.next();
	if (available) {
	%>
	<jsp:forward page="existed.jsp" />
	<%
	} else {
	String sqlQuery = String.format("insert into users(`name`,`age`,`address`) values('%s','%d','%s')", name, age, address);
	int rowAffected = stmt.executeUpdate(sqlQuery);
	if (rowAffected == 1) {
	%>
	<jsp:forward page="success.jsp" />
	<%
	} else {
	%>
	<jsp:forward page="failure.jsp" />
	<%
	}
	}
	%>
</body>
</html>