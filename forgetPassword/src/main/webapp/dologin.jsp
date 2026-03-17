<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="dao.UserDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<%
String email=request.getParameter("email");
String password=request.getParameter("password");

boolean status=UserDAO.login(email,password);

if(status){
out.println("Login Successful");
}
else{
out.println("Invalid Email or Password");
}
%>

</body>
</html>