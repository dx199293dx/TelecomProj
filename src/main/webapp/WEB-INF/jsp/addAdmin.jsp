<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<body>
<form:form name="adminRegister" method="post" action="adminReg.spring" modelAttribute="employee">
<label>Employee Name:</label><div><input type="text" name="name"></div>
<label>User ID:</label><div><input type="text" name="userID"></div>
<label>Password:</label><div><input type="password" name="password"></div>
<button type="submit" name="adminReg">Submit</button>
</form:form>
<a href="adminHomepage.jsp">return</a>
</body>
</html>
