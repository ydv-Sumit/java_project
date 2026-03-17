<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="dao.registerdao"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%

String password=request.getParameter("password");

String email=(String)session.getAttribute("email");

registerdao.updatePassword(email,password);

out.println("Password Updated Successfully");

%>

</body>
</html> 