<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Menu - Way2Burger</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-3">
    <h2 class="text-center">Menu - Welcome ${sessionScope.user}</h2>
    <div class="text-end mb-2">
        <a href="cart.jsp" class="btn btn-warning">View Cart</a>
        <a href="logout" class="btn btn-danger">Logout</a>
    </div>
    <div class="row">
        <c:forEach var="i" items="${menu}">
            <div class="col-md-4 mb-4">
                <div class="card h-100">
                    <img src="${i.img}" class="card-img-top" style="height:200px;object-fit:cover;">
                    <div class="card-body text-center">
                        <h5 class="card-title">${i.name}</h5>
                        <p class="card-text">₹${i.price}</p>
                        <form method="post" action="cart">
                            <input type="hidden" name="item" value="${i.name}">
                            <input type="hidden" name="price" value="${i.price}">
                            <button class="btn btn-primary">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
