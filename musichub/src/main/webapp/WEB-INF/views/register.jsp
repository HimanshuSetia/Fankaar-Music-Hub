<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="./templates/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp</title>
<style type="text/css">
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
</style>
</head>
<body>
<div class="se-pre-con"></div>
<div class="hero-slide">
<div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1>
                    <b>Sign Up</b> </h1>
            </div>
        </div>
    </div>
</div>
</div>

<div class="well">
<div class="container">
<div class="row">
<div class="form-horizontal">

<c:url var="url" value="registerCustomer"></c:url>

<form:form action="${url }" commandName="customer" >

<b><u>PERSONAL DETAILS</u></b>
<div class="form-group">
<form:label class="col-md-4 control-label" path="firstname">FIRST NAME</form:label>
<div class="col-md-6">
<form:input path="firstname" class="form-control"></form:input>
<form:errors path="firstname" cssStyle="color: #ff0000" />
</div>
</div>

<div class="form-group">
<form:label class="col-md-4 control-label"  path="lastname">LAST NAME</form:label>
<div class="col-md-6">
<form:input path="lastname" class="form-control"></form:input>
<form:errors path="lastname" cssStyle="color: #ff0000" />
</div>
</div>

<div class="form-group">
<form:label class="col-md-4 control-label" path="email">EMAIL</form:label>
<div class="col-md-6">
<span style="color: #ff0000">${emailMsg}</span>
<form:input path="email" class="form-control"></form:input>
<form:errors path="email" cssStyle="color: #ff0000" />
</div>
</div>

<div class="form-group">
<form:label class="col-md-4 control-label"  path="phonenumber">PHONE NUMBER</form:label>
<div class="col-md-6">
<form:input path="phonenumber" class="form-control"></form:input>
</div>
</div>

<div class="form-group">
<form:label class="col-md-4 control-label"  path="username">USERNAME</form:label>
<div class="col-md-6">
<span style="color: #ff0000">${usernameMsg}</span>
<form:input path="username" class="form-control"></form:input>
<form:errors path="username" cssStyle="color: #ff0000" />
</div>
</div>

<div class="form-group">
<form:label class="col-md-4 control-label"  path="password">PASSWORD</form:label>
<div class="col-md-6">
<form:input path="password" type="password" class="form-control"></form:input>
<form:errors path="password" cssStyle="color: #ff0000" />
</div>
</div>
<br>
<br>
<H4><b><u>BILLING ADDRESS</u></b></H4>
<div class="form-group">
<form:label class="col-md-4 control-label"  path="billingAddress.houseNumber">H#</form:label>
<div class="col-md-6">
<form:input path="billingAddress.houseNumber" class="form-control"></form:input>
</div>
</div>

<div class="form-group">
<form:label class="col-md-4 control-label" path="billingAddress.streetName">STREET NAME</form:label>
<div class="col-md-6">
<form:input path="billingAddress.streetName" class="form-control"></form:input>
</div>
</div>


<div class="form-group">
<form:label class="col-md-4 control-label" path="billingAddress.city">CITY</form:label>
<div class="col-md-6">
<form:input path="billingAddress.city" class="form-control"></form:input>
</div>
</div>

<div class="form-group">
<form:label class="col-md-4 control-label" path="billingAddress.state">STATE</form:label>
<div class="col-md-6">
<form:input path="billingAddress.state" class="form-control"></form:input>
</div>
</div>

<div class="form-group">
<form:label class="col-md-4 control-label" path="billingAddress.country">COUNTRY</form:label>
<div class="col-md-6">
<form:input path="billingAddress.country" class="form-control"></form:input>
</div>
</div>

<div class="form-group">
<form:label class="col-md-4 control-label" path="billingAddress.zipCode">ZIPCODE</form:label>
<div class="col-md-6">
<form:input path="billingAddress.zipCode" class="form-control"></form:input>
</div>
</div>

<br>
<br>
<H4><b><u>SHIPPING ADDRESS</u></b></H4>
<div class="form-group">
<form:label class="col-md-4 control-label" path="shippingAddress.houseNumber">H#</form:label>
<div class="col-md-6">
<form:input path="shippingAddress.houseNumber" class="form-control"></form:input>
</div>
</div>

<div class="form-group">
<form:label class="col-md-4 control-label" path="shippingAddress.streetName">STREET NAME</form:label>
<div class="col-md-6">
<form:input path="shippingAddress.streetName" class="form-control"></form:input>
</div>
</div>

<div class="form-group">
<form:label class="col-md-4 control-label" path="shippingAddress.city">CITY</form:label>
<div class="col-md-6">
<form:input path="shippingAddress.city" class="form-control"></form:input>
</div>
</div>

<div class="form-group">
<form:label class="col-md-4 control-label" path="shippingAddress.state">STATE</form:label>
<div class="col-md-6">
<form:input path="shippingAddress.state" class="form-control"></form:input>
</div>
</div>

<div class="form-group">
<form:label class="col-md-4 control-label" path="shippingAddress.country">COUNTRY</form:label>
<div class="col-md-6">
<form:input path="shippingAddress.country" class="form-control"></form:input>
</div>
</div>

<div class="form-group">
<form:label class="col-md-4 control-label" path="shippingAddress.zipCode">ZIPCODE</form:label>
<div class="col-md-6">
<form:input path="shippingAddress.zipCode" class="form-control"></form:input>
</div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary">Register</button>
  </div>
</div>

</form:form>

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
</body>
</html>

<%@include file="./templates/footer.jsp"%>
