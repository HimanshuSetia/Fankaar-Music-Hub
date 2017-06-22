<%@ include file="./templates/header.jsp" %>
<style>
body {
	background-color:;
	padding-top: 80px;
}
</style>
<div class="container-wrapper" style="background:-webkit-linear-gradient(#ffffff,#ff4d4d);">
    <div class="container">
        <div class="page-header">
            <h1>Administrator page</h1>

            <p class="lead">Welcome to the administrator page!</p>
        </div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                Welcome: ${pageContext.request.userPrincipal.name} |
                <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
            </h2>

        </c:if>

        <h3>
            <a href="<c:url value="/admin/productInventory" /> ">Product Inventory</a>
        </h3>

        <p>Click Here to Add, Modify and View the Products!</p>

        <br/><br/>

        <h3>
            <a href="<c:url value="/admin/customer" /> ">Customer Management</a>
        </h3>

        <p>Click Here to view the customer information!</p>
        </div>
        </div>
<br/>
<%@ include file="./templates/footer.jsp" %>