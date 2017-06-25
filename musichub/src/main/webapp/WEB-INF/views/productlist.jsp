<%@include file="./templates/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Browse Products</title>
<style type="text/css">
.scrollToTop{
	width:100px; 
	height:130px;
	padding:10px; 
	text-align:center; 
	background: whiteSmoke;
	font-weight: bold;
	color: #444;
	text-decoration: none;
	position:fixed;
	top:75px;
	right:40px;
	display:none;
	background: url('https://cdn1.iconfinder.com/data/icons/education-set-7/512/arrow5-up-16.png') no-repeat 0px 20px;
}
.scrollToTop:hover{
	text-decoration:none;
}
	.pic{
	width:100px;
	height:80px;
}
.picbig{
	position: absolute;
	width:0px;
	-webkit-transition:width 0.3s linear 0s;
	transition:width 0.3s linear 0s;
	z-index:10;
}
.pic:hover + .picbig{
	width:250px;
	height:200px
}
</style>
</head>
<body>


<div class="hero-slide">
<div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1>
                    <b>RANGE </b> </h1>
            </div>
        </div>
    </div>
</div>
</div>

    <div class="well">
	<div class="container">
	 <div  class="table-reponsive">
  <!-- <div class="col-sm-12 col-md-12 col-md-offset-1"> -->
	
	 <table class="table table-hover">
		<!-- <table class="table table-bordered table-striped"> -->
			<thead>
				<tr>
					<th>PID</th>
					<th></th>
					<th>Product Name</th>
					<th>Description</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Category</th>
					<th>Supplier</th>
					<!-- <th>Category</th>
					<th>Supplier</th> -->
				</tr>
			</thead>
			<c:forEach var="pd" items="${productList}">
				<tr>
				
					<td>${pd.id}</td>
						<td>
			
				<img class="pic"  src="<c:url value="/resources/images/${pd.id}.jpg" />" alt="error" width="120" height="120" />
				<img class="picbig"  src="<c:url value="/resources/images/${pd.id}.jpg" />" alt="error" width="120" height="120" />
				</td>
					<td>${pd.name}</td>				
					<td>${pd.description}</td>
					<td>${pd.price}</td>
					<td>${pd.quantity}</td>
					<td>${pd.category.categoryDetails}</td>
					<td>${pd.supplier.supname}</td>
					<%-- <td>${pd.category.categoryDetails}</td>
					<td>${pd.supplier.supname}</td> --%>
					
					<td>
					
					<a href="<c:url value="/viewproduct/${pd.id}"/>"><span class="glyphicon glyphicon-info-sign"></span></a> 
					</td>
					
					 <c:if test="${pageContext.request.userPrincipal.name == 'admin'}"> 
					<td>
					<c:url var="delete" value="/admin/deleteproduct/${pd.id }"></c:url>
					<a href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
					</td>
					
					<td>
					<c:url var="edit" value="/admin/editform/${pd.id }"></c:url>
					<a href="${edit }"><span class="glyphicon glyphicon-pencil"></span></a>
				    </td>
				   
					</c:if>					
									
				</tr>
			</c:forEach>
			<a href="#" class="scrollToTop">Scroll To Top</a>
		</table>
		
</div>
</div>
</div>
	<script>
	$(document).ready(function(){
		
		//Check to see if the window is top if not then display button
		$(window).scroll(function(){
			if ($(this).scrollTop() > 100) {
				$('.scrollToTop').fadeIn();
			} else {
				$('.scrollToTop').fadeOut();
			}
		});
		
		//Click event to scroll to top
		$('.scrollToTop').click(function(){
			$('html, body').animate({scrollTop : 0},800);
			return false;
		});
		
	});
	</script>
</body>
<br/>
</html>
<%@ include file="./templates/footer.jsp"%>