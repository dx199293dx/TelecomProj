<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- BOOTSTRAP STYLES-->
    <spring:url value="/resources/css/bootstrap.min.css" var="homepageBoot" />
    <link href="${homepageBoot}" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
   <%--  <spring:url value="/resources/css/adminHomeFont.css" var="adminHomeFontCss" />
    <link href="${adminHomeFontCss}" rel="stylesheet" /> --%>
        <!-- CUSTOM STYLES-->
     <spring:url value="/resources/css/blog-home.css" var="blogHome" />
    <link href="${blogHome}" rel="stylesheet" />
    
    <!--  script  -->
	<%--     <spring:url value="/resources/js/jquery.min.js" var="jquery" />
    <script src="${jquery}"></script>
    
    <spring:url value="/resources/js/bootstrap.bundle.min.js" var="bootstrap.bundle.min.js" />
    <script src="${bootstrap.bundle.min.js}"></script>
    --%>
    <spring:url value="/resources/image/tel.png" var="tel" />
<title>Customer Homepage</title>
</head>
<body>
	<!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Telecom Service</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="getMyBill.spring">Bill</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="getMyPlan.spring">Plan</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Customer Service</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="customerLogout.spring">Logout</a>
              <!-- <a class="nav-link" href="#">Customer Service</a> -->
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">

          <h1 class="my-4">Welcome..!!
            <small>${customer.firstName}</small> <small>${customer.lastName}</small>
          </h1>

          <!-- Blog Post -->
          <div class="card mb-4">
            <img class="card-img-top" src="${tel}" alt="Card image cap">
            <div class="card-body">
              <h2 class="card-title">Current Plan & Bill</h2>
              <p class="card-text">empty for now</p>
              <a href="#" class="btn btn-primary">Read More &rarr;</a>
            </div>
            <div class="card-footer text-muted">
              
              <a href="#">Start Bootstrap</a>
            </div>
          </div>

          <!-- Pagination -->
          <ul class="pagination justify-content-center mb-4">
            <li class="page-item">
              <a class="page-link" href="#">&larr; Older</a>
            </li>
            <li class="page-item disabled">
              <a class="page-link" href="#">Newer &rarr;</a>
            </li>
          </ul>

        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

          <!-- Search Widget -->
          <!-- <div class="card my-4">
            <h5 class="card-header">Search</h5>
            <div class="card-body">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">Go!</button>
                </span>
              </div>
            </div>
          </div> -->

          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header">Alert..!!</h5>
            <div class="card-body">
              <div class="row">
                <!-- <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">Web Design</a>
                    </li>
                    <li>
                      <a href="#">HTML</a>
                    </li>
                    <li>
                      <a href="#">Freebies</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">JavaScript</a>
                    </li>
                    <li>
                      <a href="#">CSS</a>
                    </li>
                    <li>
                      <a href="#">Tutorials</a>
                    </li>
                  </ul>
                </div> -->
              </div>
            </div>
          </div>

          <!-- Side Widget -->
          <!-- <div class="card my-4">
            <h5 class="card-header">Side Widget</h5>
            <div class="card-body">
              You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
            </div>
          </div> -->

        </div>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->
</body>
</html>