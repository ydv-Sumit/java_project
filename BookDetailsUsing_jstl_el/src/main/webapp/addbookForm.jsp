<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!DOCTYPE html>
<html>
<head>

<title>Add Book</title>

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-6">

<div class="card shadow">

<div class="card-header bg-primary text-white">
<h4 class="text-center">Add Book</h4>
</div>

<div class="card-body">

<form action="addbook.jsp" method="post">

<div class="mb-3">
<label class="form-label">Book Name</label>
<input type="text" name="name" class="form-control" placeholder="Enter book name">
</div>

<div class="mb-3">
<label class="form-label">Author</label>
<input type="text" name="author" class="form-control" placeholder="Enter author name">
</div>

<div class="mb-3">
<label class="form-label">Price</label>
<input type="number" name="price" class="form-control" placeholder="Enter price">
</div>

<div class="text-center">
<button type="submit" class="btn btn-success">Save Book</button>
</div>

</form>

</div>

</div>

</div>

</div>

</div>

</body>
</html>