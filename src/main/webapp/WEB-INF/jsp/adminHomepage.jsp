<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Homepage</title>
</head>
<body>
	<label>Employee ID: </label><div><c:out value="${employee.id}" /></div>
	<label>Employee Name: </label><div><c:out value="${employee.name}" /></div>
	<form action="adminSelection.spring" method="post">
		<button type="submit" name="submit" value="addEmployee">Add an Employee as Admin</button>
		<button type="submit" name="submit" value="createNewCustomer">Create New Service</button>
		<button type="submit" name="viewCustomers">View All Customer Details</button>
		<button type="submit" name="viewIssues">View All Issues</button>
	</form>
	<form action="adminLogin.jsp">
	<button type="submit" name="adminLogout">Click to Logout</button>
	</form>
</body>
</html>