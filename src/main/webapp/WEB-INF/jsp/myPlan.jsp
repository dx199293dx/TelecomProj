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
<title>My Plan</title>
</head>
<body>
<%-- ID:<p>${myPlan.id}</p>
First Name:<p>${myPlan.firstName}</p>
Last Name:<p>${myPlan.number}</p>
Type:<p>${myPlan.type}</p>
Text:<p>${myPlan.text}</p>
Voice:<p>${myPlan.voice}</p>
Data:<p>${myPlan.data}</p> --%>
<!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Customer Homepage</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item" >
              <a class="nav-link" href="#">Bill</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="getMyPlan.spring">Plan</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Customer Service</a>
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
        <div class="table-responsive">
            <table class="table">
                <tbody>
                    <tr>
                        <td rowspan="2" >Your Device:<br>
                        <img class="img-rounded" style="height:300px;background-image:url(&quot;https://my.t-mobile.com/etc/designs/mytmobile/desktop/pageclientlibs/img/Icon_Desktop_Unidentified-Phone_LoRes.png&quot;);width:183px;"></td>
                        <td>
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td style="width:100px;">Name </td>
                                            <td >${myPlan.firstName} ${myPlan.lastName}</td>
                                        </tr>
                                        <tr>
                                            <td >Number </td>
                                            <td >${myPlan.number} </td>
                                        </tr>
                                        <tr>
                                            <td >Plan </td>
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
                            <form><button class="btn btn-default btn-block btn-lg" type="button" >Change My Current Plan</button></form>
                        </td>
                        <td>
                            <form><button class="btn btn-default btn-block btn-lg" type="button" >Add A Plan</button></form>
                        </td>
                    </tr>
                </tbody>
            </table>
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