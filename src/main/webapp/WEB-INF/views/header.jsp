<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
			<li class="nav-item"><a class="nav-link"
				href="<%=request.getContextPath()%>/create">Add Customer</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<%=request.getContextPath()%>/searchPaymentMethods">Search/Edit
					PaymentMethods</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<%=request.getContextPath()%>/viewAllCustomers">View All
					Customers</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<%=request.getContextPath()%>/shopProducts">Shop Products</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#logout">Logout</a></li>
		</ul>
	</div>
	</nav>
</body>
</html>