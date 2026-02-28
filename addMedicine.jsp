<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Add Medicine</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">
</head>

<body class="dashboard-bg">

<div class="container mt-5">
    <div class="row justify-content-center">

        <div class="col-md-6">
            <div class="card shadow-lg rounded-4">
                <div class="card-body p-4">

                    <h4 class="text-center mb-4">
                        <i class="fa-solid fa-pills text-primary"></i>
                        Add New Medicine
                    </h4>

                    <form action="addMedicine" method="post">

                        <div class="mb-3">
                            <label class="form-label">Medicine Name</label>
                            <input type="text" name="name"
                                   class="form-control"
                                   placeholder="Enter medicine name"
                                   required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Price (₹)</label>
                            <input type="number" step="0.01" name="price"
                                   class="form-control"
                                   placeholder="Enter price"
                                   required>
                        </div>

                        <div class="mb-4">
                            <label class="form-label">Quantity</label>
                            <input type="number" name="quantity"
                                   class="form-control"
                                   placeholder="Enter quantity"
                                   required>
                        </div>

                        <button class="btn btn-success w-100">
                            <i class="fa-solid fa-circle-plus"></i>
                            Add Medicine
                        </button>
                    </form>

                    <div class="text-center mt-3">
                        <a href="dashboard" class="text-decoration-none small">
                            ← Back to Dashboard
                        </a>
                    </div>

                </div>
            </div>
        </div>

    </div>
</div>

</body>
</html>