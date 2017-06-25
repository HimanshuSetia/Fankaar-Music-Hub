<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ include file="./templates/header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Category</title>
<style>
body { 
	background-color: ;
	padding-top:80px;
	
	
	};

</style>

</head>
<body>


<div class="container">
<div class="row">
<div class="form-horizontal">
<form:form action="addNewCategory" commandName="category" >

<div class="form-group">
<label for="id"></label>
<form:hidden  path=""/>
</div>



<div class="form-group">
<label class="col-md-4 control-label"for="categoryDetails">CategoryDetails</label>
<div class="col-md-6">
<span style="color: #ff0000">${catMsg}</span>
<form:input path="categoryDetails" class="form-control"/>
<form:errors path="categoryDetails" cssStyle="color:#ff0000"></form:errors>
</div>
</div>



<!--  <input type="submit" value="Add Product" class="btn btn-default">-->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary">Add Category</button>
  </div>
</div>


</form:form>
</div>
</div>
</div>

</body>
</html>