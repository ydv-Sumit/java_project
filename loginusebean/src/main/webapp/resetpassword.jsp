<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background: linear-gradient(135deg, #4e73df, #1cc88a);
    height: 100vh;
}

.card {
    border-radius: 15px;
    box-shadow: 0 0 20px rgba(0,0,0,0.2);
}
</style>

</head>
<body>

<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card p-4" style="width: 400px;">
        <h3 class="text-center mb-4">Reset Password</h3>
        
        <form action="updatepassword.jsp" method="post">
            <div class="mb-3">
                <label for="password" class="form-label fw-semibold">New Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter new password" required>
            </div>
            
            <div class="d-grid mt-3">
                <button type="submit" class="btn btn-success btn-lg">Update Password</button>
            </div>
        </form>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>