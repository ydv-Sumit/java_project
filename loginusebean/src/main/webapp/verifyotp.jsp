<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Verify OTP</title>

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

.otp-icon{
font-size:40px;
color:#4e73df;
}

</style>

</head>
<body>

<% 
    String message = (String) session.getAttribute("msg");
    if(message != null){
%>
    <div class="alert alert-success text-center">
        <%= message %>
    </div>
<%
        session.removeAttribute("msg"); // सिर्फ एक बार दिखाने के लिए
    }
%>

<div class="container d-flex justify-content-center align-items-center vh-100">

<div class="card shadow-lg p-4" style="width:420px;">

<div class="text-center mb-3">
<i class="bi bi-shield-check otp-icon"></i>
<h3 class="mt-2">Verify OTP</h3>
<p class="text-muted small">Enter the OTP sent to your email</p>
</div>


<form action="checkotp.jsp" method="post">

<div class="mb-3">
<label class="form-label fw-semibold">Enter OTP</label>

<div class="input-group">
<span class="input-group-text">
<i class="bi bi-key"></i>
</span>

<input type="text" name="otp" class="form-control" placeholder="Enter OTP" required>

</div>
</div>

<div class="d-grid mt-4">
<button type="submit" class="btn btn-success btn-lg">
<i class="bi bi-check-circle"></i> Verify OTP
</button>
</div>

</form>

<div class="text-center mt-3">
    <a href="resendotp.jsp" class="text-decoration-none">Resend OTP</a>
</div>

</div>

</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>