<%@ page import="com.medicinestore.model.Medicine" %>
<%
    Medicine m = (Medicine) request.getAttribute("medicine");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Medicine</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet"
          href="<%= request.getContextPath() %>/assets/css/style.css">
</head>

<body class="dashboard-bg">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card shadow-lg">
                <div class="card-body">
                    <h4 class="text-center mb-4">Edit Medicine</h4>

                    <form action="editMedicine" method="post">

                        <input type="hidden" name="id"
                               value="<%= m.getId() %>">

                        <div class="mb-3">
                            <label>Medicine Name</label>
                            <input type="text" name="name"
                                   class="form-control"
                                   value="<%= m.getName() %>" required>
                        </div>

                        <div class="mb-3">
                            <label>Price</label>
                            <input type="number" step="0.01"
                                   name="price"
                                   class="form-control"
                                   value="<%= m.getPrice() %>" required>
                        </div>

                        <div class="mb-4">
                            <label>Quantity</label>
                            <input type="number" name="quantity"
                                   class="form-control"
                                   value="<%= m.getQuantity() %>" required>
                        </div>

                        <button class="btn btn-primary w-100">
                            Update Medicine
                        </button>
                    </form>

                    <div class="text-center mt-3">
                        <a href="viewMedicine">← Back</a>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>