<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="bootstrap.jsp"></jsp:include>
<title>Update Payment Methods</title>
</head>
<body>
<h3>Add Payment Method</h3>
	<div>
		<form:form modelAttribute="paymentMethod"
			action="${contextPath}/${customers.customerId}/viewPaymentMethods" method="post">
			<table>
				<tr>
					<td><form:label path="cardNumber">Card Number: </form:label></td>
					<td><form:input path="cardNumber" /></td>
				</tr>
				<tr>
					<td><form:label path="cardName">Card Name: </form:label></td>
					<td><form:input path="cardName" /></td>
				</tr>
				<tr>
					<td><form:label path="dateFrom">Date From: </form:label></td>
					<td><form:input path="dateFrom" /></td>
				</tr>
				<tr>
					<td><form:label path="cardType">Card Type: </form:label></td>
					<td><form:input path="cardType" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>