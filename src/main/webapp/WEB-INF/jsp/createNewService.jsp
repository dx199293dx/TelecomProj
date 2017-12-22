<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>Create New Service</title>
</head>
<body>
	<div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="${logo}" />
                    </a>                  
                </div>
              
                <span class="logout-spn" >
                  <a href="adminLogout.spring" style="color:#fff;">LOGOUT</a>  

                </span>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">              
                    <li class="active-link">
                        <a href="rtAdminHP.spring" ><i class="fa fa-desktop "></i>Dashboard <span class="badge">Included</span></a>
                    </li>                
                    <li>
                        <a href="#"><i class="fa fa-qrcode "></i>My Link One</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o"></i>My Link Two</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-edit "></i>My Link Three </a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table "></i>My Link Four</a>
                    </li>
                     <li>
                        <a href="#"><i class="fa fa-edit "></i>My Link Five </a>
                    </li>
                    
                </ul>
           </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12">
                     <h2>ADMIN DASHBOARD</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <strong>Welcome ! ${employee.name}</strong><br>
                             <strong>${now}</strong>
                        </div>
                       
                    </div>
                </div>
                    
             <div class="form_container">

    <form:form class="well form-horizontal" action="createNewCP.spring" method="post"  id="contact_form" modelAttribute="newCP">
<fieldset>

<!-- Form Name -->
<legend><center><h2><b>New Customer&Service Form</b></h2></center></legend><br>

<!-- Select Plan -->
<div class="form-group"> 
  <label class="col-md-4 control-label">Plan</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
    <form:select path="pid" name="plan" class="form-control selectpicker">
      <option value="">------Select Plan-------</option>
      <form:options items="${planList}" itemValue="id" itemLabel="name"></form:options>
      <option>###</option>
      <option>...</option>

    </form:select>
  </div>
</div>
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
    <form:errors path="firstName" cssClass="error"/>
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
  <form:errors path="lastName" cssClass="error"/>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Number</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
	  <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
	  <form:input path="number" placeholder="Number" class="form-control"  type="text"/>
    </div>    
  </div>
  <form:errors path="number" cssClass="error"/>
</div>

<!-- Text input-->

<!-- Success message -->
<div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    <center><button type="submit" class="btn btn-warning" > CREATE <span class="glyphicon glyphicon-send"></span></button></center>
  </div>
</div>

</fieldset>
</form:form>
</div>
</div><!-- /.container -->     
</div>        
</div>

		<script src="http://code.jquery.com/jquery.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

        <script>
            $('#form').submit(function(e) {
                $('#messages').removeClass('hide').addClass('alert alert-success alert-dismissible').slideDown().show();
                $('#messages_content').html('<h4>Success</h4>');
                $('#modal').modal('show');
                e.preventDefault();
            });
        </script>
</body>
</html>