<%@ page import="java.util.*, com.medicinestore.model.Medicine" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Stock</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
   <link rel="stylesheet"
      href="<%= request.getContextPath() %>/assets/css/style.css">
</head>

<body class="dashboard-bg">

<div class="container mt-5">

    <div class="d-flex justify-content-between mb-3">
        <h4>Manage Medicine Stock</h4>
        <a href="dashboard" class="btn btn-secondary btn-sm">Back</a>
    </div>

    <!-- SEARCH -->
    <form action="searchStock" method="get" class="mb-3">
        <div class="input-group">
            <input type="text" name="keyword" class="form-control"
                   placeholder="Search medicine..." required>
            <button class="btn btn-primary">Search</button>
            <a href="manageStock" class="btn btn-dark">Reset</a>
        </div>
    </form>

    <!-- TABLE -->
    <div class="table-responsive">
        <table class="table table-bordered table-hover shadow-sm">
            <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Current Stock</th>
                <th>Update Stock</th>
            </tr>
            </thead>

            <tbody>
            <%
                List<Medicine> list =
                    (List<Medicine>) request.getAttribute("medicines");

                for (Medicine m : list) {
            %>
            <tr class="<%= (m.getQuantity() < 10) ? "table-danger" : "" %>">
                <td><%= m.getId() %></td>
                <td><%= m.getName() %></td>
                <td><%= m.getQuantity() %></td>

                <td>
                    <form action="manageStock" method="post"
                          class="d-flex gap-2">
                        <input type="hidden" name="id"
                               value="<%= m.getId() %>">

                        <input type="number" name="quantity"
                               class="form-control form-control-sm"
                               value="<%= m.getQuantity() %>"
                               min="0" required>

                        <button class="btn btn-success btn-sm">
                            Update
                        </button>
                    </form>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>

    <p class="text-muted small mt-2">
        Highlighted rows indicate low stock (less than 10)
    </p>

</div>

</body>
</html>