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
<title>Add Supplier</title>
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
<form:form action="addNewSupplier"  commandName="supplier" >

 <div class="form-group">
<%-- <label for="sid"></label>
<form:hidden  path=""/> --%>
</div> 


<div class="form-group" >
<label class="col-md-4 control-label"for="supname">Supplier Name</label>
<div class="col-md-6">
<form:input path="supname" class="form-control"/>
<form:errors path="supname" cssStyle="color:#ff0000"></form:errors>
</div>
</div>

<div class="form-group">
<label class="col-md-4 control-label"for="supaddress">Supplier Address</label>
<div class="col-md-6">
<form:input path="supaddress" class="form-control"/>
<form:errors path="supaddress" cssStyle="color:#ff0000"></form:errors>
</div>
</div>

<div class="form-group">
<label class="col-md-4 control-label" for="supnumber">Contact No.</label>
<div class="col-md-6">
<form:input path="supnumber" type="tel" class="form-control" />
<form:errors path="supnumber" cssStyle="color:#ff0000"></form:errors>
</div>
</div>

<div class="form-group">
<label class="col-md-4 control-label"for="supemail">Email</label>
<div class="col-md-6">
<form:input path="supemail" type="email" class="form-control"/>
<form:errors path="supemail" cssStyle="color:#ff0000"></form:errors>
</div>
</div>

<div class="form-group">
<label class="col-md-4 control-label"for="supproduct">Product</label>
<div class="col-md-6">
<form:input path="supproduct" class="form-control"/>
<form:errors path="supproduct" cssStyle="color:#ff0000"></form:errors>
</div>
</div>

<div class="form-group">
<label class="col-md-4 control-label"for="brand">Brand</label>
<div class="col-md-6">
<form:input path="brand" class="form-control"/>
<form:errors path="brand" cssStyle="color:#ff0000"></form:errors>
</div>
</div>



<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary">Add Supplier</button>
  </div>
</div>


</form:form>
</div>
</div>
</div>

</body>
</html>