<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Payment Methods</title>
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
		<c:if test="${paymentMethods != null}">
			<table>
				<caption>Customer Payment Details</caption>
				<tr>
					<th>Card Number:</th>
					<th>Care Name:</th>
					<th>Date From</th>
					<th>Card Type</th>
					<th>Action</th>
				</tr>
				<c:forEach var="paymentMethods" items="${paymentMethods}">
					<tr>
						<td>${paymentMethods.cardNumber}</td>
						<td>${paymentMethods.cardName}</td>
						<td>${paymentMethods.dateFrom}</td>
						<td>${paymentMethods.cardType}</td>
						<td><a class="nav-link" href="#">Edit/Update</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
</body>
</html>