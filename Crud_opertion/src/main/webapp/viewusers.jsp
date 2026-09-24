<%@ page import="java.util.*,dao.userdao,beans.userbean" %>

<%
List<userbean> list = userdao.getAllRecords();
%>

<!DOCTYPE html>
<html>
<head>
    <title>User List</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">

    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2 class="text-primary">User List</h2>
        <a href="viewform.jsp" class="btn btn-secondary">Back</a>
    </div>

    <div class="card shadow">
        <div class="card-body">

            <table class="table table-bordered table-hover table-striped">
                <thead class="table-dark">
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>

                <%
                for(userbean u : list){
                %>

                    <tr>
                        <td><%=u.getId()%></td>
                        <td><%=u.getName()%></td>
                        <td><%=u.getEmail()%></td>
                        <td><%=u.getPassword()%></td>
                        <td>
                            <a href="editform.jsp?id=<%=u.getId()%>" 
                               class="btn btn-warning btn-sm">
                               Edit
                            </a>
                        </td>
                        <td>
                            <a href="delete.jsp?id=<%=u.getId()%>" 
                               class="btn btn-danger btn-sm"
                               onclick="return confirm('Are you sure you want to delete?');">
                               Delete
                            </a>
                        </td>
                    </tr>

                <% } %>

                </tbody>
            </table>

        </div>
    </div>

</div>

</body>
</html>