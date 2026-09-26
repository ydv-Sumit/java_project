<%@page import="Dao.BookDao"%>
<%@page import="Beans.BookBean"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="dao" class="Dao.BookDao"/>

<%
int id = Integer.parseInt(request.getParameter("id"));
BookBean b = BookDao.getRecordbyid(id);
request.setAttribute("book", b);
%>

<!DOCTYPE html>
<html>

<head>

<title>Edit Book</title>

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="row justify-content-center">

<div class="col-md-6">

<div class="card shadow">

<div class="card-header bg-warning text-dark">
<h4 class="text-center">Edit Book</h4>
</div>

<div class="card-body">

<form action="editBook.jsp" method="post">

<input type="hidden" name="id" value="${book.id}">

<div class="mb-3">
<label class="form-label">Book Name</label>
<input type="text" name="name" class="form-control"
value="${book.name}">
</div>

<div class="mb-3">
<label class="form-label">Author</label>
<input type="text" name="author" class="form-control"
value="${book.author}">
</div>

<div class="mb-3">
<label class="form-label">Price</label>
<input type="number" name="price" class="form-control"
value="${book.price}">
</div>

<div class="text-center">

<button type="submit" class="btn btn-success">
Update Book
</button>

<a href="viewbooks.jsp" class="btn btn-secondary">
Back
</a>

</div>

</form>

</div>

</div>

</div>

</div>

</div>

</body>
</html>