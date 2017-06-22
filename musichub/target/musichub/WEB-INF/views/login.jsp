<%@include file="templates/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<html>
<head>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LogIn</title>
<link rel="shortcut icon" href="<c:url value="/resources/images/favicon.ico"/>">
</head>
<body>
<div class="se-pre-con"></div>
<div class="container-wrapper">
<div class="container">
<div id="login-box">
<h2>Login with Username and Password</h2>
<c:if test ="${not empty msg}">
	<div class="msg">${msg}</div>
</c:if>
								<!--j_spring_security_check"-->
<form name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="post">
	<c:if test="${not empty error}">
		<div class="error"style="color: #ff0000;">${error}</div>
	</c:if>
	
	<div class="form-group">
		<label for="username">User: </label>
		<input type="text"id="username"name="username"class="form-control"/>
	</div>
	
	<div class="form-group">
		<label for="password">Password:</label>
		<input type="password"id="password"name="password"class="form-control"/>
	</div>
	
	<input type="submit" value="Submit" class="btn btn-default">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>

</div>
</div>
</div>
<script>	
			$(window).load(function() {
		// Animate loader off screen
		$(".se-pre-con").fadeOut("slow");;
	});
			</script>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</body>
</html>
<%@include file="templates/footer.jsp"%>