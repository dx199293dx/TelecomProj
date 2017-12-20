<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
	<spring:url value="/resources/css/adminLogin.css" var="adminLoginCss" />
	<link href="${adminLoginCss}" rel="stylesheet" />

</head>
<body>

<div class="container">
	<section id="content">
		<form name="adminLogin" method="post" action="adminLogin.spring">
			<h1>Admin Login</h1>
			<div>
				<input type="text" placeholder="User ID" name="userID" id="userID" />
			</div>
			<div>
				<input type="password" placeholder="Password" name="password" id="password" />
			</div>
			<div>
				<input type="submit" value="Log in" />
				<a href="#">Lost your password?</a>
			</div>
		</form><!-- form -->
		<div class="button">
			<a href="#">Telecom Home Page</a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
</html>
