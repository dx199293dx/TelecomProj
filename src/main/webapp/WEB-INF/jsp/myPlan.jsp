<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- BOOTSTRAP STYLES-->
    <spring:url value="/resources/css/bootstrap.min.css" var="homepageBoot" />
    <link href="${homepageBoot}" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <spring:url value="/resources/css/blog-home.css" var="blogHome" />
    <link href="${blogHome}" rel="stylesheet" />
    
    <spring:url value="/resources/image/iphone.png" var="iphone" />
<title>My Plan</title>
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
            <li class="nav-item">
              <a class="nav-link" href="customerHomepage.spring">Home
                
              </a>
            </li>
            <li class="nav-item" >
              <a class="nav-link" href="getMyBill.spring">Bill</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="getMyPlan.spring">Plan
              <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Customer Service</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="customerLogout.spring">Logout</a>

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

          <!-- <h1 class="my-4">Page Heading
            <small>Secondary Text</small>
          </h1> -->
          <div class="container" style="margin:10px;">
          <div class="panel panel-primary">
         <div class="table-responsive">
            <table class="table">
                <tbody>
                    <tr>
                        <td rowspan="2" ><h4>Your Device:</h4><br>
                        <img class="img-rounded" style="height:200px;weight:100px" src="${iphone}"></td>
                        <td>
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td >Name </td>
                                            <td >${customer.firstName} ${customer.lastName}</td>
                                        </tr>
                                        <tr>
                                            <td >Service Number </td>
                                            <td >${customer.servicenumber} </td>
                                        </tr>
                                        <tr>
                                            <td >Plan Type</td>
                                            <td >${myPlan.type}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="table-responsive">
                                <table class="table">

                                    <tbody>
                                         <tr>
                                            <td>Plan Name </td>
                                            <td>${myPlan.name}</td>
                                        </tr>
                                        <tr>
                                            <td>Text </td>
                                            <td>${myPlan.text}</td>
                                        </tr>
                                        <tr>
                                            <td>Voice </td>
                                            <td> ${myPlan.voice}</td>
                                        </tr>
                                        <tr>
                                            <td>Data </td>
                                            <td> ${myPlan.data} GB</td>
                                        </tr>
                                        <tr>
                                            <td>Price </td>
                                            <td>\$ ${myPlan.price} </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="table-responsive">
            <table class="table">
                <tbody>
                    <tr>
                        <td>
                            <form action="planSelection.spring"><button class="btn btn-warning" type="submit" style="width:200px;">Change My Current Plan</button></form>
                        </td>
                        <td>
                            <form><button class="btn btn-warning" type="button" style="width:200px;">Add A Plan</button></form>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

        </div>
  </div>
        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">
        
          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header">Categories</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
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
                </div>
              </div>
            </div>
          </div>

          <!-- Side Widget -->
          <div class="card my-4">
            <h5 class="card-header">Side Widget</h5>
            <div class="card-body">
              You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
            </div>
          </div>

        </div>

      </div>
      <!-- /.row -->
  </div>
    <!-- /.container -->
</body>
</html>