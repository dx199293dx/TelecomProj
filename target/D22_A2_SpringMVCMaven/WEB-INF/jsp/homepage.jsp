<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Homepage</title>
</head>
<body>
<table border="1">
	<thead>
		<tr>
			<td>Student ID</td>
			<td>Name</td>
			<td>Age</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><c:out value="${student.id}" /></td>
			<td><c:out value="${student.name}" /></td>
			<td><c:out value="${student.age}" /></td>
		</tr>
	</tbody>
</table>
	<form action="index.jsp">
	<input type="submit" value="Click to Logout">
	</form>
</body>
</html>