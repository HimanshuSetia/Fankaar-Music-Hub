<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>contact</title>
<link rel="shortcut icon" href="<c:url value="/resources/images/favicon.ico"/>">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
ul.unstyled{
	list-style: none;
	padding: 0;
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
.jumbotron {
background: #1569C7;
color:#FFF ;
border-radius: 0px;
}
.jumbotron-sm { padding-top: 24px;
padding-bottom: 24px; }
.jumbotron small {
color: #FFF;
}
.h1 small {
font-size: 24px;
}

</style>

</head>
 <%@include file="templates/header.jsp" %>
<body >
<div class="se-pre-con"></div>


				<br/><br/>
<div>
		<div  class="jumbotron jumbotron-sm" style="height:150px">
		    <div class="container">
		        <div class="row" >
					<div class="col-xs-12 col-lg-10 col-md-8 col-sm-6">
		            <h1 >
		                    <b><i style="text-align: center;">Contact us</i></b> </h1>
		            </div><div class="col-xs-2"></div>
					<div class="col-xs-9 col-lg-2 col-md-4 col-sm-6">
						<img class="img img-responsive" style="height:100px;" alt="one direction" src="http://c2.thejournal.ie/media/2015/03/zayn-one-direction2-752x501.jpg">
					</div>		        
		            
		        </div>
		    </div>
		</div>

<div  class="container-fluid" style="background:-webkit-linear-gradient(#ffffff,#ff4d4d);">
    <div class="row">
        <div class="col-md-8" class="col-sm-8" class="col-lg-8" class="col-xs-8">
            <div class="well well-sm">
                <form method="post" action="<c:url value="/sendEmail" />">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input type="email" name="recipient" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="service">Customer Care</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="product">Product Support</option>
                                <option value="other">Others</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6" class="col-sm-6" class="col-lg-6" class="col-xs-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12" class="container">
                        <button type="submit" class="btn btn-primary pull-right">
                            Send Message</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our Headquarters</legend>
            <address>
                <strong>India, Inc.</strong><br>
                SCO -26,Old Delhi Road,Sector-14<br>
                Gurugram,Haryana,IN 122001<br>
                <strong title="Phone">
                    P:</strong>
                0124 2303969
            </address>
            <address>
                <strong>Mail Us:</strong>
                <a style="color:crimson" href="mailto:himanshusetia5662@gmail.com">himanshusetia5662@gmail.com</a>
            </address>
            </form>
        </div>
    </div><br/><br/><br/><br/>
    <script>	
			$(window).load(function() {
		// Animate loader off screen
		$(".se-pre-con").fadeOut("slow");;
	});
			</script>
    <%@include file="templates/footer.jsp" %>
</div>
	</div>			
	
	

</body>
</html>