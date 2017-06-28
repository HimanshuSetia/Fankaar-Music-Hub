<%@ include file="./templates/header.jsp"%>
<head>

<style>
* {margin: 0; padding: 0;}
.magnify {width: 200px; margin: 50px auto; position: relative;}

/*Lets create the magnifying glass*/
.large {
  width: 250px; height: 250px;
  position: absolute;
  border-radius: 100%;
  
  /*Multiple box shadows to achieve the glass effect*/
  box-shadow: 0 0 0 7px rgba(255, 255, 255, 0.85), 
  0 0 7px 7px rgba(0, 0, 0, 0.25), 
  inset 0 0 40px 2px rgba(0, 0, 0, 0.25);
  
  
  
  /*hide the glass by default*/
  display: none;
}

/*To solve overlap bug at the edges during magnification*/
.small { display: block; }
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
</head>
<body data-ng-app="app" ng-controller="ProductController"><!-- ng----app then contoller then click or what so ever -->
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
						<div class="magnify">
								 
								<c:url var="src" value="/resources/images/${product.id }.jpg"></c:url>
								<div class="large" style="background: url('${src}');background-repeat:no-repeat;"></div>
								<img class="small" width="200" height="200" src="${src }" alt="image" />
						</div>
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
						<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
							<c:if test="${pageContext.request.userPrincipal.name != null}">
							<a href="#" class="btn btn-warning btn-lg"
								data-ng-click="addToCart(${product.id })"> <span
								class="glyphicon glyphicon-shopping-cart"></span>Add to Cart

							</a>
							</c:if>	
						</c:if>
						<a href="<c:url value="/prodlist" />" class="btn btn-danger btn-lg" >View more Products</a> <br />
					</div>

				</div>
						
			</div>
						
		</div>
	</div>

	<br />
<script>
	
<script src="http://thecodeplayer.com/uploads/js/prefixfree.js" type="text/javascript"></script>
<script src="http://thecodeplayer.com/uploads/js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script>
  $(document).ready(function(){

  var native_width = 0;
  var native_height = 0;

  //Now the mousemove function
  $(".magnify").mousemove(function(e){
    //When the user hovers on the image, the script will first calculate
    //the native dimensions if they don't exist. Only after the native dimensions
    //are available, the script will show the zoomed version.
    if(!native_width && !native_height)
    {
      //This will create a new image object with the same image as that in .small
      //We cannot directly get the dimensions from .small because of the 
      //width specified to 200px in the html. To get the actual dimensions we have
      //created this image object.
      var image_object = new Image();
      image_object.src = $(".small").attr("src");
      
      //This code is wrapped in the .load function which is important.
      //width and height of the object would return 0 if accessed before 
      //the image gets loaded.
      native_width = image_object.width;
      native_height = image_object.height;
    }
    else
    {
      //x/y coordinates of the mouse
      //This is the position of .magnify with respect to the document.
      var magnify_offset = $(this).offset();
      //We will deduct the positions of .magnify from the mouse positions with
      //respect to the document to get the mouse positions with respect to the 
      //container(.magnify)
      var mx = e.pageX - magnify_offset.left;
      var my = e.pageY - magnify_offset.top;
      
      //Finally the code to fade out the glass if the mouse is outside the container
      if(mx < $(this).width() && my < $(this).height() && mx > 0 && my > 0)
      {
        $(".large").fadeIn(100);
      }
      else
      {
        $(".large").fadeOut(100);
      }
      if($(".large").is(":visible"))
      {
        //The background position of .large will be changed according to the position
        //of the mouse over the .small image. So we will get the ratio of the pixel
        //under the mouse pointer with respect to the image and use that to position the 
        //large image inside the magnifying glass
        var rx = Math.round(mx/$(".small").width()*native_width - $(".large").width()/2)*-1;
        var ry = Math.round(my/$(".small").height()*native_height - $(".large").height()/2)*-1;
        var bgp = rx + "px " + ry + "px";
        
        //Time to move the magnifying glass with the mouse
        var px = mx - $(".large").width()/2;
        var py = my - $(".large").height()/2;
        //Now the glass moves with the mouse
        //The logic is to deduct half of the glass's width and height from the 
        //mouse coordinates to place it with its center at the mouse coordinates
        
        //If you hover on the image now, you should see the magnifying glass in action
        $(".large").css({left: px, top: py, backgroundPosition: bgp});
      }
    }
  })
})
</script>
<script src="<c:url value="/resources/js/controller.js"/>"></script>

	<script>	
			$(window).load(function() {
		// Animate loader off screen
		$(".se-pre-con").fadeOut("slow");;
	});
			</script>
		
	</body>
	<%@ include file="./templates/footer.jsp"%>+