<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<!-- BOOTSTRAP STYLES-->
    <spring:url value="/resources/css/adminHomeBootstrap.css" var="adminHomeBootstrapCss" />
    <link href="${adminHomeBootstrapCss}" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
     <spring:url value="/resources/css/adminHomeFont.css" var="adminHomeFontCss" />
    <link href="${adminHomeFontCss}" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <spring:url value="/resources/css/adminHome.css" var="adminHomeCss" />
    <link href="${adminHomeCss}" rel="stylesheet" />

	<!-- logo -->
	<spring:url value="/resources/image/logo.png" var="logo" />

	<!-- form js -->
	<spring:url value="/resources/js/adminReg.js" var="adminReg" />
	<script src="${adminReg}"></script>
	<style>
		#success_message{ display: none;}
	</style>
</head>
<body>
<div class="form_container">

<form:form name="registerCustomer" class="well form-horizontal" action="registerCustomer.spring" method="post"  id="contact_form" modelAttribute="newCustomer">
<h1> Customer Registration</h1>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">User ID</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input  path="userID" placeholder="User ID" class="form-control"  type="text"/> 
  </div>
  </div>
  <form:errors path="userID" cssClass="error" style="color:red;"/>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">First Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input  path="firstName" placeholder="First Name" class="form-control"  type="text"/>
    </div>
  </div>
    <form:errors path="firstName" cssClass="error" style="color:red;"/>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">Last Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input  path="lastName" placeholder="Last Name" class="form-control"  type="text"/>
    </div>
  </div>
    <form:errors path="lastName" cssClass="error" style="color:red;"/>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">Email</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input  path="email" placeholder="email@email.com" class="form-control"  type="text"/>
    </div>
  </div>
    <form:errors path="email" cssClass="error" style="color:red;"/>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">Phone</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input  path="phone" placeholder="Phone" class="form-control"  type="text"/>
    </div>
  </div>
    <form:errors path="phone" cssClass="error" style="color:red;"/>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">SSN</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input  path="ssn" placeholder="SSN" class="form-control"  type="text"/>
    </div>
  </div>
    <form:errors path="ssn" cssClass="error" style="color:red;"/>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">Date of Birth</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input  path="dob" placeholder="mm/dd/yyyy" class="form-control"  type="text"/>
    </div>
  </div>
    <form:errors path="dob" cssClass="error" style="color:red;"/>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">Street</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input  path="street" placeholder="Street" class="form-control"  type="text"/>
    </div>
  </div>
    <form:errors path="street" cssClass="error" style="color:red;"/>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">City</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input  path="city" placeholder="City" class="form-control"  type="text"/>
    </div>
  </div>
    <form:errors path="city" cssClass="error" style="color:red;"/>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">State</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input  path="state" placeholder="State" class="form-control"  type="text"/>
    </div>
  </div>
    <form:errors path="state" cssClass="error" style="color:red;"/>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">Zip Code</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input  path="zip" placeholder="09863" class="form-control"  type="text"/>
    </div>
  </div>
    <form:errors path="zip" cssClass="error" style="color:red;"/>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" >Password</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
	  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
	  <form:input id="password" path="password" placeholder="Password" class="form-control"  type="password"/>
    </div>    
  </div>
  <form:errors path="password" cssClass="error" style="color:red;"/>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">Service Number</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input  path="servicenumber" placeholder="Service Number" class="form-control"  type="text"/>
    </div>
  </div>
    <form:errors path="servicenumber" cssClass="error" style="color:red;"/>
</div>

<!-- Success message -->
<div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    <center><button type="submit" class="btn btn-warning" onclick = "varifyConfirmPass()"> SUBMIT <span class="glyphicon glyphicon-send"></span></button></center>
  </div>
</div>

</form:form>
</div>
</body>
</html>