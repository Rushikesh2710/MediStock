<%@ page import="java.util.*, com.medicinestore.model.Medicine" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Medicines</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    
    <link rel="stylesheet"
      href="<%= request.getContextPath() %>/assets/css/style.css">
</head>

<body class="dashboard-bg">

<div class="container mt-5">

    <div class="d-flex justify-content-between align-items-center mb-4">
        <h4><i class="fa-solid fa-table-list"></i> Medicine List</h4>
        <a href="dashboard" class="btn btn-secondary btn-sm">Back</a>
    </div>


	<!-- SEARCH BAR -->
<form action="searchMedicine" method="get" class="mb-3">
    <div class="input-group">
        <input type="text" name="keyword"
               class="form-control"
               placeholder="Search medicine by name..."
               required>

        <button class="btn btn-primary">
             Search
        </button>

        <a href="viewMedicine" class="btn btn-secondary">
            Reset
        </a>
    </div>
</form>
    <div class="table-responsive">
        <table class="table table-bordered table-hover shadow-sm">
            <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price </th>
                <th>Quantity</th>
                <th width="160">Action</th>
            </tr>
            </thead>
            <tbody>
            <%
                List<Medicine> list =
                    (List<Medicine>) request.getAttribute("medicines");

                for (Medicine m : list) {
            %>
            <tr>
                <td><%= m.getId() %></td>
                <td><%= m.getName() %></td>
                <td><%= m.getPrice() %></td>
                <td><%= m.getQuantity() %></td>
                <td>
                   <a href="editMedicine?id=<%= m.getId() %>"
   						class="btn btn-warning btn-sm">
  					 	<i class="fa fa-edit"></i> Edit
					</a>

                    <a href="deleteMedicine?id=<%= m.getId() %>"
                       class="btn btn-danger btn-sm"
                       onclick="return confirm('Delete this medicine?');">
                        <i class="fa fa-trash"></i>
                    </a>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>

</div>

</body>
</html>