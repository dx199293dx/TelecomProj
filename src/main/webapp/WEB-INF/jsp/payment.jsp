<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- jquery -->
	<spring:url value="/resources/js/jquery.min.css" var="payjquery" />
    <script src="${ payjquery}"></script>
    <spring:url value="/resources/js/bootstrap.min.css" var="paybootsjs" />
    <script src="${paybootsjs}"></script>
	<!-- BOOTSTRAP STYLES-->
    <spring:url value="/resources/css/bootstrap.min.css" var="homepageBoot" />
    <link href="${homepageBoot}" rel="stylesheet" />
    
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha256-k2/8zcNbxVIh5mnQ52A0r3a6jAgMGxFJFE2707UxGCk= sha512-ZV9KawG2Legkwp3nAlxLIVFudTauWuBpC10uEafMHYL0Sarrz5A7G79kXh5+5+woxQ5HM559XX2UZjMJ36Wplg==" crossorigin="anonymous">
    <!-- CUSTOM STYLES-->
    <spring:url value="/resources/css/blog-home.css" var="blogHome" />
    <link href="${blogHome}" rel="stylesheet" />

	<spring:url value="/resources/css/paymentstyle.css" var="pstyle" />
    <link href="${pstyle}" rel="stylesheet" />
    
    <spring:url value="/resources/css/Pricing-Table-Style-01.css" var="pt01" />
     <spring:url value="/resources/css/Pricing-Table-Style-011.css" var="pt011" />
    <link href="${pt01}" rel="stylesheet" />
    <link href="${pt011}" rel="stylesheet" />
    
    <script>
    		function selectedCard(){
    			var x = document.getElementById("selectBox").value;
    			if(x!=""){
    				var numNameType = x.split(":");
        			var name=numNameType[1];
        			var num=numNameType[0];
        			var type=numNameType[2];
        			document.getElementById("card-holder-name").value=name;
        			document.getElementById("card-number").value=num;
        			document.getElementById("card-type").value=type;
    			}else{

        			document.getElementById("card-holder-name").value="";
        			document.getElementById("card-number").value="";
        			document.getElementById("card-type").value="";
    			}		
    		}

    		 function payment(){
    			 var type=document.forms["myForm"]["card-type"].value;
    			 var name=document.forms["myForm"]["card-holder-name"].value;
    			 var number=document.forms["myForm"]["card-number"].value;
    			 var month=document.getElementById("expiry-month").value;
    			 var year=document.getElementById("expiry-year").value;
    			 var cvv=document.forms["myForm"]["cvv"].value;
    			 if(type==""){
    				 document.getElementById("typeError").innerHTML="Card type cannot be empty"
    				 return false;
    			 }else{
    				 document.getElementById("typeError").innerHTML=""
    			 }
    			 if(name==""){
    				 document.getElementById("nameError").innerHTML="Card holder name cannot be empty"
    				 return false;
    			 }else{
    				 document.getElementById("nameError").innerHTML=""			 
    			 }
    			 if(number==""){
    				 document.getElementById("numberError").innerHTML="Card number cannot be empty"
    				 return false;
    			 }else{
    				 document.getElementById("numberError").innerHTML=""
    			 }
    			 if(month==""||year==""){
    				 document.getElementById("dateError").innerHTML="Selectthe expire date"
    				 return false;
    			 }else{
    				 document.getElementById("dateError").innerHTML=""
    			 }
    			 if(cvv==""){
    				 document.getElementById("cvvError").innerHTML="Please input cvv number"
    				 return false;
    			 }else{
    				 document.getElementById("cvvError").innerHTML=""
    			 }
    			 var r = confirm("Are you willing to PAY THIS BILL?")
    			 if(r==true)
    				 return true;
    			 else
    				 return false;
    		 }
    		$('#myForm').on('submit', function(e){
    			  $('#myModal').modal('show');
    			  e.preventDefault();
    			});
    </script>

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
			  <form class="form-horizontal" action="pay.spring" method="post" onsubmit="return payment()" id="myForm" name="myForm">
			  
			  <div>
			  </div>
			    <fieldset>
			      <legend>Payment</legend>
			     			      
			      <div class="form-group">
			       <label class="col-sm control-label">Address: ${customer.street}, ${customer.city}, ${customer.state} ${customer.zip}</label><br>
	      			<div class="col-md-4 selectContainer">
	      			<select id="selectBox" onchange="selectedCard();" class="form-control selectpicker" style="width:300px">
	      					<option value="">-------------Select a card-------------</option>
    						<c:forEach var="card" items="${cardList}" >
    							<option value="${card.cardNo}:${card.name}:${card.type}">${card.type}************${card.cardNo.substring(card.cardNo.length()-4)}</option>
    						</c:forEach>  					
				    </select>
				    </div>
				  </div>
				  <div class="form-group">
			        <label class="col-sm-3 control-label" for="card-holder-name">Card Type</label>
			        <div class="col-sm-9">
			          <input type="text" class="form-control" name="card-type" id="card-type" placeholder="Card Type">
			          <span id="typeError" style="color:red;"></span>
			        </div>
			      </div>
				  <div class="form-group">
			        <label class="col-sm-3 control-label" for="card-holder-name">Name on Card</label>
			        <div class="col-sm-9">
			          <input type="text" class="form-control" name="card-holder-name" id="card-holder-name" placeholder="Card Holder's Name">
			          <span id="nameError" style="color:red;"></span>
			        </div>
			      </div>
			      <div class="form-group">
			        <label class="col-sm-3 control-label" for="card-number">Card Number</label>
			        <div class="col-sm-9">
			          <input type="text" class="form-control" name="card-number" id="card-number" placeholder="Debit/Credit Card Number">
			          <span id="numberError" style="color:red;"></span>
			        </div>
			      </div>
			      <div class="form-group">
			        <label class="col-sm-3 control-label" for="expiry-month">Expiration Date</label>
			        <div class="col-sm-9">
			          <div class="row" style="margin-left:0px;">
			            <div class="col-xs-3">
			              <select class="form-control " name="expiry-month" id="expiry-month" >
			                <option value="">Month</option>
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
			              <select class="form-control" name="expiry-year" id="expiry-year">
			              	<option value="">Year</option>
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
			          <span id="dateError" style="color:red;"></span>
			        </div>
			      </div>
			      <div class="form-group">
			        <label class="col-sm-3 control-label" for="cvv">Card CVV</label>
			        <div class="col-sm-3">
			          <input type="text" class="form-control" name="cvv" id="cvv" placeholder="Security Code" style="width:150px">
			          <span id="cvvError" style="color:red;"></span>
			        </div>
			      </div>
			      <div class="form-group">
			        <div class="col-sm-offset-3 col-sm-9">
			        
			          <button type="submit" class="btn btn-success">Pay Now</button>&nbsp<a href="getMyBill.spring" type="button" class="btn">Cancel</a>
			        </div>
			        <!-- <div id="thanks"><p><a data-toggle="modal" href="#form-content" class="btn btn-primary">Contact us</a></p></div> -->
			      </div>
			    </fieldset>
			  </form>
			</div>
          
		</div>
        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">
       

          <!-- Side Widget -->
          <div class="card my-4">
            <h5 class="card-header">Payment Amount</h5>
            <div class="card-body">
            
             <span class="price-value" style="color:#0e049b;"><i class="fa fa-usd"></i><span style="color:#0e049b;">${currBill.paid}</span></span>&nbsp&nbsp&nbsp<span>Paid</span><br><br>
              <span class="price-value" style="color:#0e049b;"><i class="fa fa-usd"></i><span style="color:#0e049b;">${currBill.amount-currBill.paid}</span></span>&nbsp&nbsp<span>Remain</span><br><br>
              <span>Due: ${currBill.dueDate}</span>
            </div>
          </div>

        </div>

      </div>
      <!-- /.row -->
	</div>
<!--  <div id="form-content" class="modal hide fade in" style="display: none; ">
        <div class="modal-header">
              <a class="close" data-dismiss="modal">×</a>
              <h3>Contact us</h3>
        </div>
	<div>
		<form class="contact">
		<fieldset>
	         <div class="modal-body">
	        	 <ul class="nav nav-list">
			<li class="nav-header">Name</li>
			<li><input class="input-xlarge" value=" krizna" type="text" name="name"></li>
			<li class="nav-header">Email</li>
			<li><input class="input-xlarge" value=" user@krizna.com" type="text" name="Email"></li>
			<li class="nav-header">Message</li>
			<li><textarea class="input-xlarge" name="sug" rows="3"> Thanks for the article and demo
			</textarea></li>
			</ul> 
	        </div>
		</fieldset>
		</form>
	</div>
     <div class="modal-footer">
         <button class="btn btn-success" id="submit">submit</button>
         <a href="#" class="btn" data-dismiss="modal">Close</a>
 		</div>
</div> -->
<!-- <div class="modal fade" tabindex="-1" role="dialog" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <p>One fine body&hellip;</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>/.modal-content
  </div>/.modal-dialog
</div>/.modal -->
</body>
</html>