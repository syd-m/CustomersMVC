<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <c:set var="contextPath" value="${pageContext.request.contextPath}" /> --%>
<html>
<head>
<jsp:include page="bootstrap.jsp"></jsp:include>
</head>
<h3>User Login</h3>
<body>
	<div class="container-fluid align-items">
		<form method="post" action="<%=request.getContextPath()%>/view"
			class="form-inline">
			<div class="form-group">
				<label for="email">User ID:</label> <input type="text"
					class="form-control" name="userId">
			</div>
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" name="password">
			</div>
			<button type="submit" btnbtn-default">Submit</button>
		</form>
	</div>
</body>
</html>