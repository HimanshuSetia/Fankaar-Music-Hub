<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="./templates/header.jsp"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Categories</title>
<style>
body {
	background-color:;
	padding-top: 80px;
}
</style>
</head>
<body>
	<div class="container">
	<h3>Category List</h3>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>CID</th>
					<th>Category</th>
				</tr>
			</thead>
			<c:forEach var="cg" items="${categoryList}">
				<tr>
					<td>${cg.id}</td>
					<td>${cg.categoryDetails}</td>
					 							
				</tr>
			</c:forEach>
		</table>

	</div>
</body>
</html>
