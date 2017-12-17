<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
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

<title>Issues</title>
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
				<div class="table_container">
   <!--  <h1>Click the filter icon <small>(<i class="glyphicon glyphicon-filter"></i>)</small></h1> -->
    	<div class="row">
			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Issues</h3>
						<div class="pull-right">
							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<!-- <i class="glyphicon glyphicon-filter"></i> -->
							</span>
						</div>
					</div>
					<div class="panel-body">
					<form id="customer_filter" action="customerFilter.spring" method="post" >
						<input type="text" class="form-control" id="dev-table-filter"  name="servicenumber" placeholder="Filter Customer By Service Number" />
						<button class="btn btn-warning" type="submit" name="submit" value="All" style="width: 100px;float:right;">View ALL</button>
						<button class="btn btn-warning" type="submit" name="submit" value="Search" style="width: 100px;float:right;">Search</button>						
					</form>
					</div>
					<table class="table table-hover" id="dev-table">
						<thead>
							<tr>
								<th>#</th>
								<th>Type</th>
								<th>Sub Type</th>
								<th>Customer</th>
								<th>Status</th>
								<th>Operation</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="issue" items="${issueList}">
							<tr>
								<td>${issue.id}</td>
								<td>${issue.type}</td>
								<td>${issue.subType}</td>
								<td>${issue.customerName}</td>
								<td>${issue.status}</td>
								<td><form action="viewIssueDeatils.spring" method="post">
										<button type="submit" name="submit" value="${issue.id}" class="btn btn-warning"><span class="glyphicon glyphicon-search"></span> Details</button>
		    							</form></td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>


		</div>
	</div>
	<form id="return_homepage" name="return_homepage" action="rtAdminHP.spring">
	<button class="btn btn-warning" type="submit" name="submit" value="Return" style="width: 100px;float:leaft;">Return</button>						
	</form>
          </div>   
       
</div>
</div>
</body>
</html>