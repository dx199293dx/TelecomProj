<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create New Service</title>
</head>
<body>
<form:form name="createNew" method="post" action="createNew.spring" modelAttribute="newCP" >
<%-- <select class="phone">
	<c:forEach var="plan" items="${planList}">
		<option value="${plan.id}">${plan.name}</option>
	</c:forEach>  
</select> --%>
<form:select path="pid">
	<form:options items="${planList}" itemValue="id" itemLabel="name"></form:options>
</form:select><br>

<label>First Name:</label><div><form:input type="text" path="firstName"/></div>
<label>Last Name:</label><div><form:input type="text" path="lastName"/></div>
<label>Number:</label><div><form:input type="text" path="number"/></div>
<button type="submit" name="create">create</button>
</form:form>
	<%-- <label>Employee ID: </label><div><c:out value="${employee.id}" /></div>
	<label>Employee Name: </label><div><c:out value="${employee.name}" /></div>
	<form action="adminSelection.spring">
		<button type="submit" name="addEmployee">Add an Employee as Admin</button>
		<button type="submit" name="createNewCustomer">Create New Service</button>
		<button type="submit" name="viewCustomers">View All Customer Details</button>
		<button type="submit" name="viewIssues">View All Issues</button>
	</form>
	<form action="adminLogin.jsp">
	<button type="submit" name="adminLogout">Click to Logout</button>
	</form> --%>
</body>
</html>