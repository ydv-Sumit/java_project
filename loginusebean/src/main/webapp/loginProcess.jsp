<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.logindao" %>
<%@ page import="beans.loginbean" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Process</title>
</head>
<body>

<jsp:useBean id="login" class="beans.loginbean"></jsp:useBean>
<jsp:setProperty name="login" property="*" />

<%
   
    String name = logindao.validate(login);

    if(name != null)
    {
        out.println("<h2>Login Successful</h2>");
        out.println("<h3>Welcome " + name + "</h3>");
    }
    else
    {
        out.println("<h2>Invalid Email or Password</h2>");
    }
%>

</body>
</html>