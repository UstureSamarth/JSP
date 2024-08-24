
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Output Page</title>
</head>
<body>
	<%--
	<h1>
		<c:out value="Welcome to JSTL" />
		<br /> User::
		<c:out value="${param.user}" />
		<br /> Password::
		<c:out value="${param.password}" default="Guest" />
	</h1> 
	<c:set var="x" value="10" scope="request" />
	<c:set var="y" value="20" scope="request" />
	<c:set var="sum" value="${x+y}" scope="session" />
	<h1 style="color:red;text-align: center;"><c:out value="${sum}" /></h1>
	
	<c:set var="x" value="10" scope="page" />
	<c:set var="y" value="20" scope="page" />
	<c:set var="z" value="${x+y}" scope="session" />
	<h1 style="color: red; text-align: center;">
		<c:out value="${z}" />
	</h1>
	<c:remove var="x" />
	<c:remove var="y" />
	<c:remove var="z" />
	<h1 style="color: blue; text-align: center;">
		<c:out value="${z}" default="100"/>
	</h1>
	
	<h1>
		Name is ${param.name}<br />
		<c:catch var="e">
			<%
				int age = Integer.parseInt(request.getParameter("age"));
			%>
			Age is ${param.age}<br />
		</c:catch>
		<c:if test="${e!=null}">
			<h1 style="color: red; text-align: center;">
				Oops... Exception raised...
				<c:out value="${e}" />
				<br />
			</h1>
		</c:if>
		
		
	<c:set var="x" value="10" scope="page" />
	<c:set var="y" value="20" scope="page" />
	<h1>

		<c:if test="${x<y}" var="result">
			X value is ${x}</br>
			Result is ${result}
		</c:if>
		<br/>
		<c:if test="${x ne 10 }">
			X is not equal to 10
		</c:if>
	</h1>
	<h1>Select one Option</h1>
	<form action="./index.jsp">
		<select name="combo">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
		</select> <br /> <input style="margin: 5px" type="submit" value="Enter" />
	</form>
	<c:set var="day" value="${param.combo}" />
	<h1 style="color: red; text-align: center;">
		<c:choose>
			<c:when test="${day eq 1 }">Monday</c:when>
			<c:when test="${day eq 2 }">Tuesday</c:when>
			<c:when test="${day eq 3 }">Wednesday</c:when>
			<c:when test="${day eq 4 }">Thursday</c:when>
			<c:when test="${day eq 5 }">Friday</c:when>
			<c:when test="${day eq 6 }">Saturday</c:when>
			<c:when test="${day eq 7 }">Sunday</c:when>
			<c:otherwise>Invalid Option</c:otherwise>
		</c:choose>
	</h1>
	
	<h2>
		<c:forEach begin="1" end="10" step="1" var="count">
		Learning JSTL ${count}</br>
		</c:forEach>
		<%
		String[] names = { "Samarth", "Sudhir", "Usture" };
		ArrayList<String> list = new ArrayList<String>();
		list.add("Sachin");
		list.add("Dhoni");
		list.add("Kohli");
		pageContext.setAttribute("names", names);
		pageContext.setAttribute("list", list);
		%>
		<c:forEach items="${names}" var="name">
		The Data is ${name}<br />
		</c:forEach>
		<c:forTokens items="samarth,sudhir usture" delims=" " var="name">
			<h1>${name}</h1>
		</c:forTokens>
		<c:forTokens items="1,2,3,4,5,6,7" delims="," var="data" begin="2"
			end="5">
			<h1>${data}</h1>
		</c:forTokens>
		<c:forEach items="${list}" var="name">
			${name}
		</c:forEach>
	</h2>
	
	<h1>Welcome to this page</h1>
	<c:import url="second.jsp" var="x" scope="request"/>
	${x}<br/>
	${x}<br/>
	${x}<br/>
	
	<c:import url="second.jsp">
		<c:param name="name">Samarth</c:param>
		<c:param name="college">VIT</c:param>
	</c:import>
	
	<h1>First Page</h1>
	<c:redirect url="second.jsp">
		<c:param name="name">Samarth</c:param>
		<c:param name="college">VIT</c:param>
	</c:redirect>
	
	--%>

	<h1>First Page</h1>
	<c:url value="second.jsp" var="x" scope="request">
		<c:param name="name">Samarth</c:param>
		<c:param name="college">VIT</c:param>
	</c:url>
	<h1>Modified url is ${x}</h1>
	<a href="${x}">Click here to next page</a>
</body>
</html>