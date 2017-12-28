<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<spring:url value="/resources/css/adminLogin.css" var="adminLoginCss" />
	<link href="${adminLoginCss}" rel="stylesheet" />
<title></title>
</head>
<body>
<div class="container">
	<section id="content">
		<form name="customerLogin" method="post" action="customerLogin.spring">
			<h1> Customer Login</h1>
			<div>
				<input type="text" placeholder="User ID" name="userID" id="userID" required="required"/>
			</div>
			<div>
				<input type="password" placeholder="Password" name="password" id="password" required="required"/>
			</div>
			<div>
				<input type="submit" value="Log in" />
				<a href="#">Lost your password?</a>
			</div>
		</form><!-- form -->
		<c:choose>
          	<c:when test="${success=='no'}">
          		<div class="alert alert-danger" id="alertFailed" style="color:red">
	  				<strong>Failed!</strong> Please Check Your User ID and Password Again!
				</div>
          	</c:when>
         </c:choose>
		<div class="button">
			<a href="serNumber.spring">Register</a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
</html>