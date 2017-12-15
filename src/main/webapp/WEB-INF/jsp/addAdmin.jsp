<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<body>
<form:form name="adminRegister" method="post" action="adminReg.spring" modelAttribute="newAdmin">
<label>Employee Name:</label><div><form:input path="name"></form:input><form:errors path="name" cssClass="error"/></div>
<label>User ID:</label><div><form:input path="userID"></form:input><form:errors path="userID" cssClass="error"/></div>
<label>Password:</label><div><form:password path="password"></form:password><form:errors path="password" cssClass="error"></form:errors></div>
<button type="submit" name="adminReg">Submit</button>
</form:form>
<a href="rtAdminHP.spring">return</a>
</body>
</html>
