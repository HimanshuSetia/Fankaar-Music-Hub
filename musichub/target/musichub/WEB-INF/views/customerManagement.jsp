<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="./templates/header.jsp" %>
<style>
body {
	/* background: linear-gradient(to bottom, #ffffcc 1%, #669999 100%); */
	padding-top: 100px;
	font-size: 14px;
	background-color: #f2f6f9;
}
</style>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer Management Page</h1>

            <p class="lead">This is the customer management page!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Username</th>
            </tr>
            </thead>
            <c:forEach items="${customerList}" var="customer">
                <tr>
                    <td>${customer.firstname}</td>
                    <td>${customer.email}</td>
                    <td>${customer.phonenumber}</td>
                    <td>${customer.username}</td>
                </tr>
            </c:forEach>
        </table>
        </div>
        </div>
        <br>
	<br>
	<br>
	

<%@ include file="./templates/footer.jsp" %>