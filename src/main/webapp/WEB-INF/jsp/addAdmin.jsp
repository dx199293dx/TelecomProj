<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
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

    <form:form class="well form-horizontal" action="adminReg.spring" method="post"  id="contact_form" modelAttribute="newAdmin">
<fieldset>

<!-- Form Name -->
<legend><center><h2><b>Registration Form</b></h2></center></legend><br>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">Employee Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input  path="name" placeholder="Name" class="form-control"  type="text"/>
    </div>
  </div>
    <form:errors path="name" cssClass="error" style="color:red;"/>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">User ID</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <form:input  path="userID" placeholder="ID" class="form-control"  type="text"/> 
  </div>
  </div>
  <form:errors path="userID" cssClass="error" style="color:red;"/>
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
  <label class="col-md-4 control-label" >Confirm Password</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
  <input id="confirm_password" name="confirm_password" placeholder="Confirm Password" class="form-control"  type="password">
  <p id="conPassError" style="color:red;"></p>
    </div>
  </div>
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

</fieldset>
</form:form>
</div>
</div><!-- /.container -->     
          </div>   
       
    </div>
</body>
</html>
