<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Cart - Way2Burger</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-3">
    <h2>Your Cart</h2>
    <a href="menu" class="btn btn-secondary mb-3">Back to Menu</a>
    <ul class="list-group">
        <c:forEach var="c" items="${sessionScope.cart}">
            <li class="list-group-item">${c}</li>
        </c:forEach>
    </ul>
</div>
</body>
</html>
