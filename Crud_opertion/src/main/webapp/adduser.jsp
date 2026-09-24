<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dao.userdao,beans.userbean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<jsp:useBean id="u" class="beans.userbean" />

<%
if(request.getMethod().equals("POST")){

    u.setName(request.getParameter("name"));
    u.setEmail(request.getParameter("email"));
    u.setPassword(request.getParameter("password"));

    userdao.save(u);
    response.sendRedirect("viewusers.jsp");
}
%>


</body>
</html>