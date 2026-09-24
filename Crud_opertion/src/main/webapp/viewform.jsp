<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>View Users</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">

    <div class="card shadow p-4">
        <h3 class="text-center text-primary mb-4">User Management</h3>

        <div class="d-grid gap-3">
            <form action="viewusers.jsp" method="get">
                <button type="submit" class="btn btn-primary w-100">
                    Show All Users
                </button>
            </form>

            <a href="adduserform.jsp" class="btn btn-success w-100">
                + Add New User
            </a>
        </div>

    </div>

</div>

</body>
</html>