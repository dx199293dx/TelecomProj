<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var="customer" items="${customerList}">
	name:<c:out value="${customer.firstName} ${customer.lastName} ${customer.servicenumber}"></c:out><br>
</c:forEach>
<form action="customerFilter.spring" method="post">
<input type="text" name="servicenumber"/>
<button type="submit" name="submit" value="Search">Search</button>
<button type="submit" name="submit" value="All">View ALL</button>
</form>
<a href="rtAdminHP.spring">return</a>
</body>
</html>