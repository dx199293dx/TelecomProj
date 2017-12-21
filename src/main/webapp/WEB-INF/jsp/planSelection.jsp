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
     <spring:url value="/resources/css/adminHomeFont.css" var="adminHomeFontCss" />
     <link href="${adminHomeFontCss}" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <spring:url value="/resources/css/blog-home.css" var="blogHome" />
    <spring:url value="/resources/css/Pricing-Table-Style-01.css" var="pt01" />
     <spring:url value="/resources/css/Pricing-Table-Style-011.css" var="pt011" />
    <link href="${blogHome}" rel="stylesheet" />
    <link href="${pt01}" rel="stylesheet" />
    <link href="${pt011}" rel="stylesheet" />

    
    
    <!--  script  -->
	<script type="text/javascript">
	 function changePlan(){
		 var r = confirm("Are you willing to select this plan and change the original one?")
		 if(r==true)
			 return true;
		 else
			 return false;
	 }
	</script>
<title>Plan Selection</title>
</head>
<body>

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
<div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                    <c:forEach var="phonePlan" items="${phonePlanList}">
                    	<div class="col-md-4 col-sm-4">
                            <div class="pricingTable purple">
                                <div class="pricingTable-header">
                                    <h3>${phonePlan.name} </h3><span>${phonePlan.type}</span></div>
                                <div class="pricing-plans"><span class="price-value"><i class="fa fa-usd"></i><span>${phonePlan.price} </span></span><span class="month">/month </span></div>
                                <div class="pricingContent">
                                    <ul>
                                        <li>Text: ${phonePlan.text}</li>
                                        <li>Voice: ${phonePlan.voice}</li>
                                        <li>Data: ${phonePlan.data} GB</li>
                                    </ul>
                                </div>
                                <div class="pricingTable-sign-up"><form action="changePlan.spring"><button type="submit" onclick="return changePlan()" name="submit" value="${phonePlan.id}" class="btn btn-block">Choose</button></form></div>
                            </div>
                        </div>
                    </c:forEach>
                        
                    </div>
                </div>
                
            </div>
            <form action="getMyPlan.spring">
            			<br>
					<center><button class="btn btn-warning" type="submit" name="submit" value="Return" style="width: 100px;">Return</button></center>	
					<br>				
				</form>
        </div>
</body>
</html>