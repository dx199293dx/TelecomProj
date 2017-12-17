<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<%-- 	<spring:url value="/resources/css/adminHomepage.css" var="adminHomepageCss" /> --%>
	<%--<link href="${adminHomepageCss}" rel="stylesheet" /> --%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>Admin Homepage</title>
</head>
<body>
<%-- <label>Employee ID: </label><div><c:out value="${employee.id}" /></div>
	<label>Employee Name: </label><div><c:out value="${employee.name}" /></div>
	<form action="adminSelection.spring" method="post">
		<button type="submit" name="submit" value="addEmployee">Add an Employee as Admin</button>
		<button type="submit" name="submit" value="createNewCustomer">Create New Service</button>
		<button type="submit" name="submit" value="viewCustomers">View All Customer Details</button>
		<button type="submit" name="viewIssues">View All Issues</button>
	</form>
	<form action="adminLogout.spring">
	<button type="submit" name="adminLogout">Click to Logout</button>
	</form>  --%>
	
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
                  <!-- /. ROW  --> 
            <div class="row text-center pad-top">
            		 <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
            			 <!-- <form action="adminSelection.spring" method="post"> -->
            			 
                      <div class="div-square">
                      <a href="addEmployee.spring" >
 						<i class="fa fa-key fa-5x"></i>
                      	<h4>Add Admin </h4>
                      	</a>
                      </div> 
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">                  
                       <a href="createNewCustomer.spring" >
						 <i class="fa fa-user fa-5x"></i>
                     	 <h4>New User</h4>
                     	 </a>

                 	 </div>  
                  </div> 
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">          
                      <div class="div-square">
                      <a href="viewCustomers.spring">
 							<i class="fa fa-users fa-5x"></i>
                      	  <h4>See Users</h4>
                      	  </a>
                      </div>
                      </form>                  
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 							<i class="fa fa-lightbulb-o fa-5x"></i>
                    		  <h4>Issues</h4>
                      		</a>
                      </div>                   
                  </div>
                  </div>
                  <!-- row -->
                  <div class="row text-center pad-top">
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
						 <i class="fa fa-circle-o-notch fa-5x"></i>
                      <h4>Check Data</h4>
                      </a>
                      </div>
                  </div> 
                 
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 							<i class="fa fa-envelope-o fa-5x"></i>
                      <h4>Mail Box</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 							<i class="fa fa-clipboard fa-5x"></i>
                      <h4>All Docs</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
						 <i class="fa fa-gear fa-5x"></i>
                      <h4>Settings</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                                 
              </div>
                 <!-- /. ROW  --> 
                <div class="row text-center pad-top">
                              
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 						<i class="fa fa-wechat fa-5x"></i>
                      <h4>Live Talk</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 							<i class="fa fa-bell-o fa-5x"></i>
                      <h4>Notifications </h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
							 <i class="fa fa-rocket fa-5x"></i>
                      <h4>Launch</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 						<i class="fa fa-comments-o fa-5x"></i>
                      <h4>Support</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                     
              </div>   
       
    </div>
             <!-- /. PAGE INNER  -->
             </div>
             </div>
</body>
</html>