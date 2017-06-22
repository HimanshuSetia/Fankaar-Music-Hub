<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	
<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<link rel="stylesheet" href="./resources/css/stylesheet.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">	
	<link
	href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse" style="width:100%">
<div class="container-fluid">
<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header" style="margin: 0px; padding: 0px;background-color: black;">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">ToggleNavigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				</button>
					<a href="<c:url value="/home"/>"><img style="height:57px" alt="LINKIN_PARK" class="img-responsive img-thumbnail img1" src="<c:url value="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTukbLq1zQdAQ4Ha5uuFOOxP9OTSJSKvXsBmp7ifNBbAgXQwBiGUQ"/>"></img>
					</a>
			</div>

			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="background-color:black;padding: 0px" >
				<ul  id="nav" class="nav nav-tabs" style="margin: 0px; padding: 0px;float: left;">
					<li  >
						<a  style="color: white;padding: 16px;margin: 0px"  href="<c:url value="/home"/>"><i style="color:white" class="fa fa-home" aria-hidden="true"></i>Home</a>
					</li>
					<li >
						<a style="color: white;padding: 16px;margin: 0px"  href="<c:url value="/contact"/>"><i style="color:white" class="fa fa-address-card" aria-hidden="true"></i>ContactUs</a>
					</li>
					<c:if test="${pageContext.request.userPrincipal.name == 'admin'}"> 
					<li>
						<a  style="color: white;margin: 0px;padding: 16px" href="<c:url value="/admin/addProduct"/>"><i style="color:white" class="fa fa-product-hunt" aria-hidden="true"></i>Add Product</a>
					</li>
					</c:if>
					<li>
						<a style="color: white;margin: 0px;padding: 16px" href="<c:url value="/view_all"/>"><i style="color:white" class="fa fa-eye" aria-hidden="true"></i>View Products</a>
					</li>
					 <c:if test="${pageContext.request.userPrincipal.name == 'admin'}"> 
					<li class="dropdown">
						<a href="#" style="margin-top:3px;padding-bottom: 20px" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Category
						<span class="caret"></span></a>
							<ul class="dropdown-menu" style="margin: 0px;height:55px;width:40px;background-color: black;">
								<li class="btn-primary"><a href="<c:url value="addCategory"/>" style="margin: 0px;color: white;padding-bottom:11px;width: 158px">Add Category</a></li>
								<li class="btn-danger"><a href="<c:url value="catlist"/>" style="margin: 0px;padding-bottom:11px;color: white">View Categories</a></li>
								<li class="btn-primary"><a href="<c:url value="editCategory"/>" style="margin: 0px;padding-bottom:11px;color: white">Edit Category</a></li>
							</ul>
					</li>
					 </c:if>
					<c:if test="${pageContext.request.userPrincipal.name == 'admin'}"> 
					<li class="dropdown">
						<a href="#" style="margin-top:3px;padding-bottom: 20px" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Suppliers
						<span class="caret"></span></a>
							<ul class="dropdown-menu" style="margin: 0px;height:55px;background-color: black;">
								<li class="btn-danger"><a href="<c:url value="addSupplier"/>" style="margin: 0px;padding-bottom:11px;color: white">Add Supplier</a></li>
								<li class="btn-primary"><a href="<c:url value="suplist"/>" style="margin: 0px;padding-bottom:11px;color: white'">View Suppliers</a></li>
								<li class="btn-danger"><a href="<c:url value="editSupplier"/>" style="margin: 0px;padding-bottom:11px;color: white">Edit Supplier</a></li>
							</ul>
					</li>
					 </c:if>
								
				</ul>
				<div>
					<ul style="float:right;list-style:none">
					 <c:if test="${pageContext.request.userPrincipal.name != null}">
							<li><a>Welcome:
									${pageContext.request.userPrincipal.name}</a></li>
							<li><a href="<c:url value="/j_spring_security_logout"/>">Logout</a></li>

							<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
								<li><a href="<c:url value="admin"/>">Admin</a></li>
							</c:if>
							

						</c:if>
						
						<c:if test="${pageContext.request.userPrincipal.name == null}">
				<li><a href="<c:url value="/login"/>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<li><a href="<c:url value="/register"/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			  </c:if>
					</ul>
				</div>	
				
</div>
	</div>
</nav>	
 
<script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script>
$(document).ready(function(){
    $("a").hover(function(){
        $(this).css("color", "red");
        }, function(){
        $(this).css("color", "white");
    });
});
$(document).ready(function(){
    $("i").hover(function(){
        $(this).css("color", "red");
        }, function(){
        $(this).css("color", "crimson");
    });
});

</script>
	
	<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>