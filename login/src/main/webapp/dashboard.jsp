<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
 String user = (String)session.getAttribute("loginuser");
    

%>

<h2> Welcome <%= user %></h2>
<a href="logout.jsp">Logout</a>

</body>
</html>