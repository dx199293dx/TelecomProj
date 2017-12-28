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

<title>Customer Registration Validation</title>
</head>
<body>

<div class="container">
	<section id="content">
		<form name="registerCustomerValidate" method="post" action="registerCustomerValidate.spring">
			<h1>Customer Registration</h1>
			<div>
				<input type="text" placeholder="Service Number" name="servicenumber" id="servicenumber" />
				<input type="text" placeholder="First Name" name="firstName" id="firstName" />
				<input type="text" placeholder="Last Name" name="lastName" id="lastName" />
			</div>
			<c:choose>
          	<c:when test="${success=='no'}">
          		<div class="alert alert-danger" id="alertFailed" style="color:red">
	  				<strong>Failed!</strong> Please Input Correct Information!
				</div>
          	</c:when>
         </c:choose>
			<div>
				<input type="submit" value="submit" name="submit"/>
				<input type="submit" value="return" name="submit"/>
			</div>
		</form><!-- form -->
	</section>
</div>
	
</body>
</html>