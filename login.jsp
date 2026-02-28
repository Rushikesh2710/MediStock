<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Login | Online Medicine Store</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet"
      href="<%= request.getContextPath() %>/assets/css/style.css">	
</head>

<body class="login-bg">

<div class="container d-flex justify-content-center align-items-center min-vh-100">

    <div class="login-card shadow-lg">
        <div class="text-center mb-4">
            <i class="fa-solid fa-user-shield fa-3x text-primary"></i>
            <h3 class="mt-3 fw-semibold">Admin Login</h3>
            <p class="text-muted small">
                Secure access to medicine management system
            </p>
        </div>

        <form action="login" method="post">

            <!-- Username -->
            <div class="mb-3">
                <label class="form-label">Username</label>
                <div class="input-group">
                    <span class="input-group-text">
                        <i class="fa fa-user"></i>
                    </span>
                    <input type="text" name="username"
                           class="form-control"
                           placeholder="Enter username"
                           required>
                </div>
            </div>

            <!-- Password -->
            <div class="mb-4">
                <label class="form-label">Password</label>
                <div class="input-group">
                    <span class="input-group-text">
                        <i class="fa fa-lock"></i>
                    </span>
                    <input type="password" name="password"
                           class="form-control"
                           placeholder="Enter password"
                           required>
                </div>
            </div>

            <!-- Error Message -->
            <% if(request.getAttribute("error") != null) { %>
                <div class="alert alert-danger text-center py-2">
                    <%= request.getAttribute("error") %>
                </div>
            <% } %>

            <!-- Login Button -->
            <button class="btn btn-primary w-100 py-2">
                Login
            </button>
        </form>

        <div class="text-center mt-4">
            <a href="index" class="text-decoration-none small">
                ← Back to Home
            </a>
        </div>
    </div>

</div>

</body>
</html>