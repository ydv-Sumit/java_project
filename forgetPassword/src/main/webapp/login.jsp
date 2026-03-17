<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>Login</h2>

<form action="dologin.jsp" method="post">

Email:
<input type="email" name="email"><br><br>

Password:
<input type="password" name="password"><br><br>

<input type="submit" value="Login">

</form>

<a href="forgot.jsp">Forgot Password?</a>

</body>
</html>