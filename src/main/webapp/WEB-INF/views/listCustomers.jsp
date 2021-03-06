<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of Customers</title>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
	<div>
		<c:if test="${customers != null}">
			<table>
				<caption>Customer Details</caption>
				<tr>
					<!-- <th>Customer ID:</th> -->
					<th>Name:</th>
					<th>Date of Birth:</th>
					<th>Salary:</th>
					<th>Street:</th>
					<th>City:</th>
					<th>State:</th>
					<th>Zip:</th>
					<th>Actions</th>
				</tr>
				<c:forEach var="customers" items="${customers}">
				<c:url var="newPaymentMethodLink" value="${contextPath}/${customers.customerId}/addPayments"></c:url>
					<tr>
						<td>${customers.name}</td>
						<td>${customers.dateOfBirth}</td>
						<td>${customers.annualSalary}</td>
						<td>${customers.address.street}</td>
						<td>${customers.address.city}</td>
						<td>${customers.address.state}</td>
						<td>${customers.address.zip}</td>
						<td><a class="nav-link" href="${newPaymentMethodLink}">Add</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
</body>
</html>