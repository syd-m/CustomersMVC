<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="bootstrap.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<title>Customer Home</title>
</head>
<body>
	<div class="form-group align-items-center">
		<form action="<%=request.getContextPath()%>/view" method="get"
			class="form-inline">
			<label class="col-form-label">Enter customer ID</label> <input
				type="text" class="form-control" name="customerId"
				placeholder="Search for customer">
			<button type="submit" class="btn btn-primary">Search</button>

		</form>
	</div>
	<div>
		<%-- ${customers} --%>
		<jsp:include page="listCustomers.jsp"></jsp:include>
	</div>
</body>
</html>