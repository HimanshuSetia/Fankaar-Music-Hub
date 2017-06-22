<%@ include file="./templates/header.jsp"%>
<style>
body {
	background: linear-gradient(to bottom, #ffffcc 1%, #669999 100%);
	padding-top: 80px;
}

.hero-slide {
	margin-top: 45px;
}

footer {
	background: #333;
	color: #eee;
	font-size: 11px;
	padding: 30px;
}
.no-js #loader { display: none;  }
.js #loader { display: block; position: absolute; left: 100px; top: 0; }
.se-pre-con {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 9999;
	background: url("https://s-media-cache-ak0.pinimg.com/originals/a5/56/09/a55609061c5f24331405610fbf59203d.gif") center no-repeat #fff;
}
ul.unstyled {
	list-style: none;
	padding: 0;
}
</style>
<body data-ng-app="app" ng-controller="ProductController">
<div class="se-pre-con"></div>
	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>
					<b>Product Details</b>
				</h1>

				<p class="lead">Here is the detail information of the product:</p>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<c:url var="src" value="/resources/images/${product.id }.jpg"></c:url>
						<img src="${src }" alt="image" style="width: 100%" />
						
					</div>
					<div class="col-md-1"></div>
					<div class="col-md-5">
						<h3>${product.name}</h3>
						<p>${product.description}</p>
						<p>
							<strong>Category</strong>: ${product.category.categoryDetails}
						</p>
						<p>
							<strong>Supplier</strong>: ${product.supplier.supname}
						</p>
						<p>Rs ${product.price}</p>
						<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
							
						</c:if>
						
						<a href="<c:url value="/prodlist" />" class="btn btn-danger btn-lg" >View more Products</a> <br />
					</div>

				</div>

			</div>

		</div>
	</div>

	<br />
	<script>	
			$(window).load(function() {
		// Animate loader off screen
		$(".se-pre-con").fadeOut("slow");;
	});
			</script>
	<%@ include file="./templates/footer.jsp"%>+