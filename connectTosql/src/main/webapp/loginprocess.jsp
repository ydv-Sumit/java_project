<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="login" class="beans.loginbean" scope="request"></jsp:useBean>
<jsp:useBean id="logindao" class="dao.logindao"></jsp:useBean>

<jsp:setProperty property="*" name="login"/>

<%
String msg = logindao.checkLogin(login);

if(msg.equals("success")){

    session.setAttribute("user", login.getFullname());
    response.sendRedirect("welcome.jsp");

} else {

    response.sendRedirect("error.jsp");
}
%>


</body>
</html>