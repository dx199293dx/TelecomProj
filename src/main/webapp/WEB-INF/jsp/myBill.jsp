<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- BOOTSTRAP STYLES-->
<spring:url value="/resources/css/bootstrap.min.css" var="homepageBoot" />
<link href="${homepageBoot}" rel="stylesheet" />
<!-- CUSTOM STYLES-->
<spring:url value="/resources/css/blog-home.css" var="blogHome" />
<link href="${blogHome}" rel="stylesheet" />

	<spring:url value="/resources/css/Pricing-Table-Style-01.css" var="pt01" />
     <spring:url value="/resources/css/Pricing-Table-Style-011.css" var="pt011" />
    <link href="${pt01}" rel="stylesheet" />
    <link href="${pt011}" rel="stylesheet" />

<spring:url value="/resources/image/iphone.png" var="iphone" />
<title>My Bill</title>
</head>
<!--- Navigation ---->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
<div class="container">
	<a class="navbar-brand" href="#">Telecom Service</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarResponsive" aria-controls="navbarResponsive"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarResponsive">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link"
				href="customerHomepage.spring">Home </a>
			</li>
			<li class="nav-item">
              <a class="nav-link" href="myAccount.spring">My Account</a>
            </li>
			<li class="nav-item active"><a class="nav-link"
				href="getMyBill.spring">Bill</a> <span class="sr-only">(current)</span>
			</li>
			<li class="nav-item"><a class="nav-link" href="getMyPlan.spring">Plan

			</a></li>
			<li class="nav-item"><a class="nav-link" href="fillIssueForm.spring">Customer
					Service</a></li>
			<li class="nav-item"><a class="nav-link"
				href="customerLogout.spring">Logout</a> <!-- <a class="nav-link" href="#">Customer Service</a> -->
			</li>
		</ul>
	</div>
</div>
</nav>
<%-- <c:forEach var="bill" items="${myBill}">
			<c:out value="${bill.id}"></c:out>

		</c:forEach> --%>

<!-- Page Content -->
<div class="container">

	<div class="row">

		<!-- Blog Entries Column -->
		<div class="col-md-8">

			
			<div class="container" style="margin: 10px;">
				<div class="panel panel-primary">
					<div class="table-responsive">
						<table class="table">
							<tbody>
								<tr>
									<td><strong>Your Info</strong></td>
								</tr>
								<tr>
									<td>Name</td>
									<td>${customer.firstName} ${customer.lastName}</td>
								</tr>
								<tr>
									<td>Service Number</td>
									<td>${customer.servicenumber}</td>
								</tr>
								<tr>
									<td><strong>Current Bill</strong></td>
								</tr>
								
								<tr>
									<td>Cycle Start Date</td>
									<td>${currBill.startDate}</td>
								</tr>
								<tr>
									<td>Cycle End Date</td>
									<td>${currBill.endDate}</td>
								</tr>
								<tr>
									<td>Due Date</td>
									<td>${currBill.dueDate}</td>
								</tr>
								<tr>
									<td>Amount </td>
									<td>\$ ${currBill.amount}</td>
								</tr>
							</tbody>
						</table>
					</div>
							
					<div class="table-responsive">
						<table class="table">
							<tbody>
								<tr><td><strong>History</strong></td></tr>
								<c:forEach var="bill" items="${myBill}">
									<tr>
										<td>Start Date: <c:out value="${bill.startDate}"></c:out></td>
										<td>End Date: <c:out value="${bill.endDate}"></c:out></td>
										<td>Due Date: <c:out value="${bill.dueDate}"></c:out></td>
										<td>Amount: \$<c:out value="${bill.amount}"></c:out></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>

					</div>
				</div>
			</div><!-- col-md-8 -->
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
          <c:choose>
          	<c:when test="${success!=null}">
          		<div class="alert alert-success" id="alertSuccess">
	  				<strong>Success!</strong> Payment succeed!
				</div>
          	</c:when>
          	<c:when test="${currBill.amount==currBill.paid}">
          		<div class="alert alert-warning" id="alserWarning">
				    <strong>Warning!</strong> Do not repeat payment!
				</div>
          	</c:when>
          </c:choose>
			
        </div>
			
	</div><!-- row -->
		<div class="table-responsive">
            <table class="table">
                <tbody>
                    <tr>
                        <td>
                            <form action="paymentInfo.spring"><button class="btn btn-warning" type="submit" style="width:300px;">Pay Here</button></form>
                        </td>
                        <td>
                            <form action="customerHomepage.spring"><button class="btn btn-warning" type="submit" style="width:300px;">Return to Home</button></form>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
	</div>
</body>
</html>