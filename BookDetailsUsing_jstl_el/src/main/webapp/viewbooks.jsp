<%@page import="Dao.BookDao"%>
<%@page import="java.util.*"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
List list = BookDao.getAllRecords();
request.setAttribute("list",list);
%>

<!DOCTYPE html>
<html>
<head>

<title>Book List</title>

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow">

<div class="card-header bg-dark text-white">

<div class="d-flex justify-content-between">

<h4>Book List</h4>

<a href="addbookForm.jsp" class="btn btn-success">Add Book</a>

</div>

</div>

<div class="card-body">

<div class="table-responsive">

<table class="table table-striped table-bordered table-hover">

<thead class="table-dark">

<tr>
<th>ID</th>
<th>Name</th>
<th>Author</th>
<th>Price</th>
<th>Edit</th>
<th>Delete</th>
</tr>

</thead>

<tbody>

<c:forEach var="b" items="${list}">

<tr>

<td>${b.id}</td>
<td>${b.name}</td>
<td>${b.author}</td>
<td>${b.price}</td>

<td>
<a href="editbookform.jsp?id=${b.id}" class="btn btn-warning btn-sm">
Edit
</a>
</td>

<td>
<a href="deleteBook.jsp?id=${b.id}" class="btn btn-danger btn-sm">
Delete
</a>
</td>

</tr>

</c:forEach>

</tbody>

</table>

</div>

</div>

</div>

</div>

</body>
</html>