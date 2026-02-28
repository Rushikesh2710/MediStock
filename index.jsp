<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Online Medicine Store</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet"
      href="<%= request.getContextPath() %>/assets/css/style.css">
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark shadow-sm custom-navbar">
    <div class="container">
        <a class="navbar-brand fw-bold" href="#">
            💊 Online Medicine Store
        </a>

        <div class="ms-auto">
            <a href="login" class="btn btn-outline-light btn-sm px-4">
                Admin Login
            </a>
        </div>
    </div>
</nav>

<!-- HERO SECTION -->
<section class="hero-section">
    <div class="container">
        <div class="row align-items-center">

            <!-- TEXT -->
            <div class="col-md-6">
                <h1 class="hero-title">
                    Smart & Secure<br>
                    <span>Medicine Management</span>
                </h1>

                <p class="hero-text">
                    A web-based platform to manage medicines digitally using
                    Java, JSP, Servlets, and MySQL.
                </p>

                <a href="login" class="btn btn-primary btn-lg px-5 mt-3">
                    Get Started
                </a>
            </div>

            <!-- CARD -->
            <div class="col-md-6">
                <div class="hero-card shadow">
                    <h4>Project Highlights</h4>
                    <ul>
                        <li>✔ Admin Login & Authentication</li>
                        <li>✔ Add / Update / Delete Medicines</li>
                        <li>✔ MySQL Database Integration</li>
                        <li>✔ Secure MVC Architecture</li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- FOOTER -->
<footer class="footer">
    <div class="container text-center">
        <p class="mb-1">© 2026 Online Medicine Store</p>
        <small>Academic Project | JSP • Servlet • JDBC • MySQL</small>
    </div>
</footer>

</body>
</html>