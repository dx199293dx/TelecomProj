<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
		<form name="registerCustomerValidate" method="post" action="registerCustomerValidate.spring">
			<h1> Customer Registration</h1>
			<div>
				<input type="text" placeholder="service number" name="servicenumber" id="servicenumber" />
			</div>
			<div>
				<input type="submit" value="submit" />
			</div>
		</form><!-- form -->
	</section>
</div>
	
</body>
</html>