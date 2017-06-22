<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="./templates/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>



<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Product</title>
<style>
body { 
	background-color:grey ;
	padding-top:80px;
	}
</style>
<script>
$(function(){
$('input[name=mfg]').datepicker({
	format:'YYYY-mm-dd'
});	
});
</script>


<!-- JQuery -->
<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>


</head>
<body>


<div class="container">
<div class="row">
<div class="form-horizontal">
<c:url value="/admin/editProduct/${id }" var="url"></c:url>
<form:form action="${url }"  commandName="product1" enctype="multipart/form-data">

<div class="form-group">
<label class="col-md-4 control-label" for="id">PID</label>
<div class="col-md-6">
<form:input  path="id" class="form-control" disabled="true"/>
</div>
</div>


<div class="form-group" >
<label class="col-md-4 control-label"for="name">Product Name</label>
<div class="col-md-6">
<form:input path="name" class="form-control"/>
<form:errors path="name" cssStyle="color:#ff0000"></form:errors>
</div>
</div>

<div class="form-group">
<label class="col-md-4 control-label"for="description">Description</label>
<div class="col-md-6">
<form:input path="description" class="form-control"/>
<form:errors path="description" cssStyle="color:#ff0000"></form:errors>
</div>
</div>

<div class="form-group">
<label class="col-md-4 control-label" for="price">Price</label>
<div class="col-md-6">
<form:input path="price" class="form-control" />
<form:errors path="price" cssStyle="color:#ff0000"></form:errors>
</div>
</div>

<div class="form-group">
<label class="col-md-4 control-label"for="quantity">Quantity</label>
<div class="col-md-6">
<form:input path="quantity" class="form-control"/>
<form:errors path="quantity" cssStyle="color:#ff0000"></form:errors>
</div>
</div>

<div class="form-group">
<label class="col-md-4 control-label"for="mfg">Mfg Date</label>
<div class="col-md-6">
<form:input path="mfg" class="form-control"/>
<form:errors path="mfg" cssStyle="color:#3c0707"></form:errors>
</div>
</div>



<div class="form-group">
<label class="col-md-4 control-label" for="category">Category</label>
<div class="col-md-6">

<!--  List<Category> c =model.getAttribute("categories");
out.println(c.id)
out.println(c.categoryDetails);-->

<c:forEach var="c" items="${categories}">
<form:radiobutton path="category.id" value="${c.id}"/>${c.categoryDetails }
</c:forEach>
</div>
</div>

 <div class="form-group">
<label class="col-md-4 control-label" for="supplier">Supplier</label>
<div class="col-md-6">
<c:forEach var="s" items="${suppliers}">
<form:radiobutton path="supplier.sid" value="${s.sid}"/>${s.supname }
</c:forEach>
</div>
</div> 

<div class="form-group">
<label class="col-md-4 control-label" for="image">Image</label>
<div class="col-md-6"></div>
<form:input path="image" type="file"/>
</div>

<!--  <input type="submit" value="Add Product" class="btn btn-default">-->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary">Edit Product</button>
  </div>
</div>


</form:form>
</div>
</div>
</div>

</body>
</html>

<%@ include file="./templates/footer.jsp" %>