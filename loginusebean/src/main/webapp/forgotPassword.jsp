<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

<style>

body{
background: linear-gradient(135deg,#4e73df,#1cc88a);
height:100vh;
}

.card{
border:none;
border-radius:15px;
}

.logo-icon{
font-size:40px;
color:#4e73df;
}

</style>

</head>
<body>

<div class="container d-flex justify-content-center align-items-center vh-100">

<div class="card shadow-lg p-4" style="width:420px;">

<div class="text-center mb-3">
<i class="bi bi-shield-lock logo-icon"></i>
<h3 class="mt-2">Forgot Password</h3>
<p class="text-muted small">Enter your registered email to receive OTP</p>
</div>

<form action="sendotp.jsp" method="post">

<div class="mb-3">
<label class="form-label fw-semibold">Email Address</label>
<div class="input-group">
<span class="input-group-text">
<i class="bi bi-envelope"></i>
</span>
<input type="email" name="email" class="form-control" placeholder="Enter your email address" required>
</div>
</div>

<div class="d-grid mt-4">
<button type="submit" class="btn btn-primary btn-lg">
<i class="bi bi-send"></i> Send OTP
</button>
</div>

</form>

<div class="text-center mt-3">
<a href="login.jsp" class="text-decoration-none">Back to Login</a>
</div>

</div>

</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>