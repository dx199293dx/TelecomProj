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
            <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Bill</a>
            </li>
            <li class="nav-item">
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
                        <td rowspan="2" style="width:252px;height:198px;font-size:20px;">Your Device:<img class="img-rounded" style="height:300px;background-image:url(&quot;https://my.t-mobile.com/etc/designs/mytmobile/desktop/pageclientlibs/img/Icon_Desktop_Unidentified-Phone_LoRes.png&quot;);width:183px;"></td>
                        <td>
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td style="width:200px;">Name </td>
                                            <td >First name and Last Name</td>
                                        </tr>
                                        <tr>
                                            <td >Number </td>
                                            <td > </td>
                                        </tr>
                                        <tr>
                                            <td >Plan </td>
                                            <td >Plan name</td>
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
                                    <caption>Plan Detals</caption>
                                    <tbody>
                                        <tr>
                                            <td style="width:200px;">Text </td>
                                            <td> </td>
                                        </tr>
                                        <tr>
                                            <td>Voice </td>
                                            <td> </td>
                                        </tr>
                                        <tr>
                                            <td>Data </td>
                                            <td> </td>
                                        </tr>
                                        <tr>
                                            <td>Price </td>
                                            <td> </td>
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
                            <form><button class="btn btn-default btn-block btn-lg" type="button" style="width:200px;height:60px;">Button</button></form>
                        </td>
                        <td>
                            <form><button class="btn btn-default btn-block btn-lg" type="button" style="width:200px;height:60px;">Button</button></form>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

          <!-- Blog Post -->
          <div class="card mb-4">
            <img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap">
            <div class="card-body">
              <h2 class="card-title">Post Title</h2>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>
              <a href="#" class="btn btn-primary">Read More &rarr;</a>
            </div>
            <!-- <div class="card-footer text-muted">
              Posted on January 1, 2017 by
              <a href="#">Start Bootstrap</a>
            </div> -->
          </div>

          <!-- Pagination -->
          <!-- <ul class="pagination justify-content-center mb-4">
            <li class="page-item">
              <a class="page-link" href="#">&larr; Older</a>
            </li>
            <li class="page-item disabled">
              <a class="page-link" href="#">Newer &rarr;</a>
            </li>
          </ul> -->

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