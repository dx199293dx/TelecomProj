<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- BOOTSTRAP STYLES-->
    <spring:url value="/resources/css/bootstrap.min.css" var="homepageBoot" />
    <link href="${homepageBoot}" rel="stylesheet" />
    
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha256-k2/8zcNbxVIh5mnQ52A0r3a6jAgMGxFJFE2707UxGCk= sha512-ZV9KawG2Legkwp3nAlxLIVFudTauWuBpC10uEafMHYL0Sarrz5A7G79kXh5+5+woxQ5HM559XX2UZjMJ36Wplg==" crossorigin="anonymous">
    <!-- CUSTOM STYLES-->
    <spring:url value="/resources/css/blog-home.css" var="blogHome" />
    <link href="${blogHome}" rel="stylesheet" />

	<spring:url value="/resources/css/paymentstyle.css" var="pstyle" />
    <link href="${pstyle}" rel="stylesheet" />

<title>Payment Info</title>
</head>
<body>
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
			<div class="container">
	        		<div class="centered title"><h2>Checkout.</h2></div>
	        </div>
			<div class="container">
			  <form class="form-horizontal">
			  <div>
			  </div>
			    <fieldset>
			      <legend>Payment</legend>
			     			      
			      <div class="form-group">
			      <label class="col-sm control-label">Address: ${customer.street}, ${customer.city}, ${customer.state} ${customer.zip}</label><br>
			        <label class="col-sm-3 control-label" for="card-holder-name">Name on Card</label>
			        <div class="col-sm-9">
			          <input type="text" class="form-control" name="card-holder-name" id="card-holder-name" placeholder="Card Holder's Name">
			        </div>
			      </div>
			      <div class="form-group">
			        <label class="col-sm-3 control-label" for="card-number">Card Number</label>
			        <div class="col-sm-9">
			          <input type="text" class="form-control" name="card-number" id="card-number" placeholder="Debit/Credit Card Number">
			        </div>
			      </div>
			      <div class="form-group">
			        <label class="col-sm-3 control-label" for="expiry-month">Expiration Date</label>
			        <div class="col-sm-9">
			          <div class="row" style="margin-left:0px;">
			            <div class="col-xs-3">
			              <select class="form-control " name="expiry-month" id="expiry-month" >
			                <option>Month</option>
			                <option value="01">Jan (01)</option>
			                <option value="02">Feb (02)</option>
			                <option value="03">Mar (03)</option>
			                <option value="04">Apr (04)</option>
			                <option value="05">May (05)</option>
			                <option value="06">June (06)</option>
			                <option value="07">July (07)</option>
			                <option value="08">Aug (08)</option>
			                <option value="09">Sep (09)</option>
			                <option value="10">Oct (10)</option>
			                <option value="11">Nov (11)</option>
			                <option value="12">Dec (12)</option>
			              </select>
			            </div>
			            <div class="col-xs-3">
			              <select class="form-control" name="expiry-year">
			                <option value="17">2017</option>
			                <option value="18">2018</option>
			                <option value="19">2019</option>
			                <option value="20">2020</option>
			                <option value="21">2021</option>
			                <option value="22">2022</option>
			                <option value="23">2023</option>
			                <option value="24">2024</option>
			                <option value="25">2025</option>
			                <option value="26">2026</option>
			              </select>
			            </div>
			          </div>
			        </div>
			      </div>
			      <div class="form-group">
			        <label class="col-sm-3 control-label" for="cvv">Card CVV</label>
			        <div class="col-sm-3">
			          <input type="text" class="form-control" name="cvv" id="cvv" placeholder="Security Code" style="width:150px">
			        </div>
			      </div>
			      <div class="form-group">
			        <div class="col-sm-offset-3 col-sm-9">
			          <button type="button" class="btn btn-success">Pay Now</button>&nbsp<a href="getMyBill.spring"type="button" class="btn">Cancel</a>
			        </div>
			      </div>
			    </fieldset>
			  </form>
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

</body>
</html>