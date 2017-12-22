<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<spring:url value="/resources/image/person-icon.png" var="person" />

<script type="text/javascript">
	function editval(id, id1, id2, id3) {

		document.getElementById(id).value = "";
		if (id1) {
			document.getElementById(id1).value = "";
		}
		if (id2) {
			document.getElementById(id2).value = "";
		}
		if (id3) {
			document.getElementById(id3).value = "";
		}

	}
</script>
<title>My Account</title>
</head>
<body>
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
					href="customerHomepage.spring">Home</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="myAccount.spring">My Account</a> <span class="sr-only">(current)</span>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="getMyBill.spring">Bill</a></li>
				<li class="nav-item"><a class="nav-link"
					href="getMyPlan.spring">Plan</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Customer
						Service</a></li>
				<li class="nav-item"><a class="nav-link"
					href="customerLogout.spring">Logout</a> <!-- <a class="nav-link" href="#">Customer Service</a> -->
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
				<div class="container" style="margin: 10px;">
					<div class="panel panel-primary">
						<div class="table-responsive">
							<table class="table">
								<tbody>
									<tr>
										<td rowspan="2"><br> <img class="img-rounded"
											style="height: 155px; weight: 175px" src="${person}"></td>
										<td>
											<div class="table-responsive">
												<form action="changeAccount.spring" method="post">
													<table class="table">
														<tbody>
															<tr>
																<td><strong>Name</strong></td>
																<td>${customer.firstName}${customer.lastName}</td>
															</tr>
															<tr>
																<td><strong>Service Number</strong></td>
																<td>${customer.servicenumber}</td>
															</tr>
															<tr>
																<td><strong>Email</strong></td>
																<%-- <td>${customer.email}</td> --%>
																<td><input type="text" name="email"
																	value="${customer.email}" id="edit" placeholder="Email"></td>
																<td><button class="btn btn-warning" type="button"
																		style="width: 50px; height: 40px"
																		onclick="editval('edit')">Edit</button></td>

															</tr>
															<tr>
																<td><strong>Phone</strong></td>
																<td><input type="text" name="phone"
																	value="${customer.phone}" id="edit1"
																	placeholder="Phone"></td>
																<td><button class="btn btn-warning" type="button"
																		style="width: 50px; height: 40px"
																		onclick="editval('edit1')">Edit</button></td>
															</tr>
															<tr>
																<td><strong>DOB</strong></td>
																<td>${customer.dob}</td>
															</tr>
															<tr>
																<td><strong>SSN</strong></td>
																<td>${customer.ssn}</td>
															</tr>
															<tr>
																<td colspan="2"><strong>Address</strong></td>

																<td><button class="btn btn-warning" type="button"
																		style="width: 50px; height: 40px"
																		onclick="editval('edit2','edit3','edit4','edit5')">Edit</button></td>
															</tr>
															<tr>
																<td>Street:</td>
																<td><input type="text" name="street" id="edit2"
																	value="${customer.street}" placeholder="Street"></td>

															</tr>
															<tr>
																<td>City:</td>
																<td><input type="text" name="city" id="edit3"
																	value="${customer.city}" placeholder="City"></td>

															</tr>
															<tr>
																<td>State:</td>
																<td><input type="text" name="state" id="edit4"
																	value="${customer.city}" placeholder="State"></td>

															</tr>
															<tr>
																<td>ZipCode:</td>
																<td><input type="text" name="zip" id="edit5"
																	value="${customer.zip}" placeholder="Zip Code"></td>

															</tr>
															<tr>
															<td><button class="btn btn-warning" type="submit"
																		style="width: 100px;">Save</button></td>
															<td>
															<a href="myAccount.spring" type="button" class="btn btn-warning"> Return to MyAccount</a>
															</td>
															</tr>
														</tbody>
													</table>
												</form>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>

				</div>
			</div>

			

				

			</div>

		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
</body>
</html>