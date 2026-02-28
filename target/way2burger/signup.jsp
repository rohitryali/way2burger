<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Sign Up - Way2Burger</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <div class="card p-4 mx-auto" style="max-width:400px;">
        <h3 class="card-title text-center">Create Account</h3>
        <form method="post" action="signup">
            <div class="mb-3">
                <input name="username" class="form-control" placeholder="Username" required>
            </div>
            <div class="mb-3">
                <input name="password" type="password" class="form-control" placeholder="Password" required>
            </div>
            <button class="btn btn-success w-100">Sign Up</button>
            <p class="mt-2 text-center">Already have account? <a href="login.jsp">Login</a></p>
            <p class="text-danger text-center">${error}</p>
        </form>
    </div>
</div>
</body>
</html>
