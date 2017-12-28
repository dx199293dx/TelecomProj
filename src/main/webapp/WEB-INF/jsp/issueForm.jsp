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
    <!-- CUSTOM STYLES-->
     <spring:url value="/resources/css/blog-home.css" var="blogHome" />
    <link href="${blogHome}" rel="stylesheet" />

<title>Issue Form</title>
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
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="myAccount.spring">My Account</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="getMyBill.spring">Bill</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="getMyPlan.spring">Plan</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="fillIssueForm.spring">Customer Service</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="customerLogout.spring">Logout</a>
              <!-- <a class="nav-link" href="#">Customer Service</a> -->
            </li>
          </ul>
        </div>
      </div>
    </nav>

		<div class="container">

            <div class="row">

                <div class="col-lg-12 col-lg-offset-2">

                    <h3>Contact form to Telecom</a></h3>

                    <p class="lead">This is a form to submit your issue to our customer service</p>

                    <!-- We're going to place the form here in the next step -->
                    <form></form> 

                </div>

            </div>

        </div>
        

    <!-- Page Content -->
    <div class="container">

      <div class="row">
      <div class="col-lg-12 col-lg-offset-2">

        <form id="contact-form" method="post" action="submitIssue.spring" role="form">

		    <div class="messages"></div>
		
		    <div class="controls" style="width:1000px">
		
		        <div class="row">
		            <div class="col-md-6">
		                <div class="form-group">
		                    <label for="form_name">Device Type*</label>
		                    <input id="form_name" type="text" name="type" class="form-control" placeholder="Please enter your device type *" required="required" data-error="Device type is required.">
		                    <div class="help-block with-errors"></div>
		                </div>
		            </div>
		            <div class="col-md-6">
		                <div class="form-group">
		                    <label for="form_lastname">Issue Type*</label>
		                    <input id="form_lastname" type="text" name="subtype" class="form-control" placeholder="Please enter your issue type *" required="required" data-error="Issue type is required.">
		                    <div class="help-block with-errors"></div>
		                </div>
		            </div>
		        </div>
		        <div class="row">
		            <div class="col-md-6">
		                <div class="form-group">
		                    <label for="form_email">Email</label>
		                    <input id="form_email" type="email" name="email" class="form-control" placeholder="Please enter your email" data-error="Valid email is required.">
		                    <div class="help-block with-errors"></div>
		                </div>
		            </div>
		            <div class="col-md-6">
		                <div class="form-group">
		                    <label for="form_phone">Phone</label>
		                    <input id="form_phone" type="tel" name="phone" class="form-control" placeholder="Please enter your phone">
		                    <div class="help-block with-errors"></div>
		                </div>
		            </div>
		        </div>
		        <div class="row">
		            <div class="col-md-12">
		                <div class="form-group">
		                    <label for="form_message">Message *</label>
		                    <textarea id="form_message" name="message" class="form-control" placeholder="Your Issue Here *" rows="4" required="required" data-error="Please,leave us a message."></textarea>
		                    <div class="help-block with-errors"></div>
		                </div>
		            </div>
		            <div class="col-md-4">
		                <input type="submit" class="btn btn-success btn-send" value="Send message">  
		                <a type="button" class="btn btn-warning" href="customerHomepage.spring" >Return</a>       
		            </div>
		            <c:if test="${success!=null}">
		          		<div class="col-md-4 alert alert-success" id="alertSuccess">
			  				<strong>Success!</strong> Issue submitted!
						</div>
		          	</c:if>

		        </div>
		       
		
		</form>
		</div>
      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->
</body>
</html>