<%@include file="templates/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" href="<c:url value="/resources/images/favicon.ico"/>">
	<link rel="stylesheet" href="./resources/css/stylesheet.css">
	<title>Home</title>
	
	<style type="text/css">
	.carousel-caption .caro{
 				font-size: 30px;
				color: rgba(185,180,180,1.00);
				border: dashed;
				width:auto;
				padding: 5px;
				border-radius: 10px 40px ;
				border-width: 5px;
				margin:auto;
				text-align:center;
				box-shadow: 0px 8px 26px 4px snow;
				opacity:1;
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
 .carousel-caption .caro1{
 				font-size: 30px;
				color: brown;
				border: dashed;
				width:auto;
				padding: 5px;
				border-radius: 10px 40px ;
				border-width: 5px;
				margin:auto;
				text-align:center;
				box-shadow: 0px 8px 26px 4px white;
				opacity:1;
 }
	</style>
</head>

<body class="container-fluid ">
<div class="se-pre-con"></div>
<br/><br/>	
		
			<div id="my-slider" class="carousel slide" data-ride="carousel" data-wrap="true" data-interval="2100" data-pause="hover">
				
				<ol class="carousel-indicators">
					<li data-target="#my-slider" data-slide-to="0" class="active">
					</li>
					<li data-target="#my-slider" data-slide-to="1">
					</li>
				</ol>
				
				<div class="carousel-inner" >
					<div class="item active">
						<img  style="width: 1920px;margin: 0;padding: 0;height: 660px" alt="guitar" src="<c:url value="./resources/images/guitar.jpg"/>"/>
						<div class="carousel-caption">
							<h1 class="caro1">
								GUITAR
							</h1>
						</div>
					</div>
					
					<div class="item">
						<img style="width: 1920px;margin: 0;padding: 0;height: 660px" alt="strings" src="./resources/images/guitar_strings.jpg"/>
						<div class="carousel-caption">
							<h1 class="caro">
								GUITAR STRINGS
							</h1>
						</div>
					</div>
				
				
				
				</div>
			<a class="left carousel-control" href="#my-slider" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			</a>
			<a class="right carousel-control" href="#my-slider" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			</a>
			
			</div>	
			
			
<br/><br/><br/>
		<div class="jumbotron row pop">
		  <div class="pop2" >
		  <div class="col-md-3 col-md-push-9">
		  	<img src="./resources/images/photo.jpg" class="img-responsive pop3 img-circle"/>
		  </div>
		  <div class="col-md-9 col-md-pull-3 pop2" >
			  <h1>FANKAAR</h1> 
			  <p>Fankaar is the most popular HTML, CSS, and JS framework for developing responsive,
			  mobile-first projects on the web.</p> 
			  <br/>
			 
		  </div>
		  </div>
		</div>
		
			<div class="row">
				<div class="col-lg-4 col-md-4 col-xs-12" style="margin: 0px">
					<div class="panel panel-default">
						<div class="panel-heading">
							heading
						</div>
						<div class="panel-body">
							<img src="./resources/images/instrument_saxophone.jpg" class="img-responsive img-thumbnail"/>
						</div>
						<div class="panel-footer">
							paragraph
						</div>
					</div> 
				</div> 
					
				<div class="col-lg-4  col-md-4  col-xs-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							heading
						</div>
						<div class="panel-body">
							<img src="./resources/images/headphones.jpg" class="img-responsive img-thumbnail"/>
						</div>
						<div class="panel-footer">
							paragraph
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-4 col-md-4 col-xs-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							heading
						</div>
						<div class="panel-body">
							<img src="./resources/images/guitar1.jpg" class="img-responsive img-thumbnail"/>
						</div>
						<div class="panel-footer">
							paragraph
						</div>
					</div>
				</div>
			</div>
			
		<script>	
			$(window).load(function() {
		// Animate loader off screen
		$(".se-pre-con").fadeOut("slow");;
	});
		</script>
	<%@include file="templates/footer.jsp" %>
	

</body>
</html>
