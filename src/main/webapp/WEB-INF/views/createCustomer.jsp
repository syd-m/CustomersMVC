<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="bootstrap.jsp"></jsp:include>
<title>Create new customer</title>
</head>
<h3>Create new Customer</h3>
<body>
	<div>
		<form:form modelAttribute="customer"
			action="${contextPath}/customers/viewCustomer" method="post">
			<table>
				<tr>
					<td><form:label path="name">Name: </form:label></td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td><form:label path="dateOfBirth">Date of Birth: </form:label></td>
					<td><form:input path="dateOfBirth" /></td>
				</tr>
				<tr>
					<td><form:label path="annualSalary">Annual Salary: </form:label></td>
					<td><form:input path="annualSalary" /></td>
				</tr>
				<tr>
					<td><form:label path="address">Address</form:label></td>
				</tr>
				<tr>
					<td><form:label path="address.street">Street: </form:label></td>
					<td><form:input path="address.street" /></td>
				</tr>
				<tr>
					<td><form:label path="address.city">City: </form:label></td>
					<td><form:input path="address.city" /></td>
				</tr>
				<tr>
					<td><form:label path="address.state">State: </form:label></td>
					<td><form:input path="address.state" /></td>
				</tr>
				<tr>
					<td><form:label path="address.zip">Zip: </form:label></td>
					<td><form:input path="address.zip" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>