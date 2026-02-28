<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Dashboard | Online Medicine Store</title>

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

<body class="dashboard-bg">

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark shadow custom-navbar">
    <div class="container">
        <span class="navbar-brand fw-semibold">
            <i class="fa-solid fa-gauge-high"></i> Admin Dashboard
        </span>

        <div class="ms-auto d-flex align-items-center gap-3">
            <span class="text-white small">
                Welcome, <b><%= session.getAttribute("admin") %></b>
            </span>
            <a href="logout" class="btn btn-outline-light btn-sm">
                Logout
            </a>
        </div>
    </div>
</nav>

<!-- DASHBOARD CONTENT -->
<div class="container mt-5">

    <div class="text-center mb-4">
        <h2 class="fw-semibold">Medicine Management Panel</h2>
        <p class="text-muted">
            Manage medicines, stock, and records efficiently
        </p>
    </div>

    <div class="row g-4 text-center">

        <!-- Add Medicine -->
        <div class="col-md-4">
            <div class="dashboard-tile shadow-sm">
                <i class="fa-solid fa-circle-plus"></i>
                <h5>Add Medicine</h5>
                <p>Add new medicine details to the system</p>
                <a href="addMedicine" class="btn btn-success w-100">
                    Add Medicine
                </a>
            </div>
        </div>

        <!-- View Medicine -->
        <div class="col-md-4">
            <div class="dashboard-tile shadow-sm">
                <i class="fa-solid fa-table-list"></i>
                <h5>View Medicines</h5>
                <p>View, edit or delete existing medicines</p>
                <a href="viewMedicine" class="btn btn-primary w-100">
                    View Medicines
                </a>
            </div>
        </div>

        <!-- Stock -->
        <div class="col-md-4">
            <div class="dashboard-tile shadow-sm">
                <i class="fa-solid fa-boxes-stacked"></i>
                <h5>Stock Management</h5>
                <p>Monitor and manage medicine stock</p>
                <a href="manageStock" class="btn btn-warning w-100">
                    Manage Stock
                </a>
            </div>
        </div>
        
       

    </div>
</div>

</body>
</html>