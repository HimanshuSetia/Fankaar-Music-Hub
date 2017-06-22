<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="./templates/header.jsp"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Browse Products</title>
<style>
body {
	background-color:;
	padding-top: 80px;
}
</style>
</head>
<body>
	<div class="container">
	<h3>Supplier List</h3>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>SID</th>
					<th>Name</th>
					<th>Address</th>
					<th>Contact No.</th>
					<th>Email</th>
					<th>Brand</th>
					<th>Product</th>
				</tr>
			</thead>
			<c:forEach var="sup" items="${supplierList}">
				<tr>
					<td>${sup.sid}</td>
					<td>${sup.supname}</td>
					<td>${sup.supaddress}</td>
					<td>${sup.supnumber}</td>
					<td>${sup.supemail}</td>
					<td>${sup.brand}</td>
					<td>${sup.supproduct}</td>		
				</tr>
			</c:forEach>
		</table>

	</div>
</body>
</html>
