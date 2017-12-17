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

    <form:form class="well form-horizontal" action="modifyStatus.spring" method="post"  id="contact_form" modelAttribute="issue">
<fieldset>

<!-- Form Name -->
<legend><center><h2><b>Issue </b></h2></center></legend><br>
<div class="form-group">
  <label class="col-md-4 control-label">Issue ID</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <input  name="id" value="${issue.id}" class="form-control"  type="text" readonly/>
    </div>
  </div>

</div>

<div class="form-group">
  <label class="col-md-4 control-label">Customer Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <input  name="name" value="${issue.customerName}" class="form-control"  type="text" readonly/>
    </div>
  </div>

</div>

<div class="form-group">
  <label class="col-md-4 control-label">Type</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <input  name="type" value="${issue.type}" class="form-control"  type="text" readonly/> 
  </div>
  </div>

</div>

<div class="form-group">
  <label class="col-md-4 control-label" >Sub Type</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
	  <input name="subType" value="${issue.subType}" class="form-control" readonly/>
    </div>    
  </div>
</div>

<div class="form-group"> 
  <label class="col-md-4 control-label">Status</label>
    <div class="col-md-4 selectContainer">
    <div class="input-group">
    <form:select path="status" name="status" class="form-control selectpicker">
      <form:option value="${issue.status}">${issue.status}</form:option>
      <form:option value="Confirmed">Confirmed</form:option>
	  <form:option value="Resolved">Resolved</form:option>
	  <form:option value="Closed">Closed</form:option>

    </form:select>
  </div>
</div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" >Deatails</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <textarea name="details"  class="form-control" style="width:400px;"readonly>${issue.details}</textarea>
    </div>
  </div>
</div>


<!-- Success message -->
<div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    <center><button type="submit" class="btn btn-warning" >SUBMIT <span class="glyphicon glyphicon-send"></span></button>
    <button type=submit name="submit" value="return" class="btn btn-warning" >RETURN</button>
    </center>
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
