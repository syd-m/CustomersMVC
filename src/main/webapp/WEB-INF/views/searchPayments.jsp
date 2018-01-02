<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="bootstrap.jsp"></jsp:include>
<title>Search Payment Methods</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
			<li class="nav-item"><a class="nav-link"
				href="<%=request.getContextPath()%>/create">Add Customer</a></li>
			<li class=""nav-item""><a class="nav-link"
				href="<%=request.getContextPath()%>/home">Search
					Customer</a></li>
			<li class=""nav-item""><a class="nav-link"
				href="<%=request.getContextPath()%>/viewAllCustomers">View All
					Customers</a></li>
		</ul>
	</div>
	</nav>
	<div class="form-group align-items-center">
		<form action="<%=request.getContextPath()%>/viewPayments" method="get"
			class="form-inline">
			<label class="col-form-label">Enter customer ID</label> <input
				type="text" class="form-control" name="customerId"
				placeholder="Search for PaymentMethods" required="required">
			<button type="submit" class="btn btn-primary">Search</button>
		</form>
		<div><jsp:include page="paymentMethods.jsp"></jsp:include></div>
</body>
</html>