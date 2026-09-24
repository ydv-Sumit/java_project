<%@ page import="dao.userdao,beans.userbean" %>

<%
int id = Integer.parseInt(request.getParameter("id"));
userbean u = userdao.getRecordbyid(id);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit User</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card shadow">
                <div class="card-body">

                    <h3 class="text-center text-warning mb-4">Edit User</h3>

                    <form action="edit.jsp" method="post">

                        <!-- Hidden ID Field -->
                        <input type="hidden" name="id" value="<%=u.getId()%>">

                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <input type="text" name="name" 
                                   value="<%=u.getName()%>" 
                                   class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="email" name="email" 
                                   value="<%=u.getEmail()%>" 
                                   class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="text" name="password" 
                                   value="<%=u.getPassword()%>" 
                                   class="form-control" required>
                        </div>

                        <div class="d-grid">
                            <button type="submit" class="btn btn-warning">
                                Update User
                            </button>
                        </div>

                    </form>

                    <hr>

                    <div class="text-center">
                        <a href="viewusers.jsp" class="btn btn-secondary btn-sm">
                            Back to List
                        </a>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>