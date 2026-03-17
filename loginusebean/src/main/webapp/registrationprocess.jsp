<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="dao.registerdao" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Process</title>
</head>
<body>

<jsp:useBean id="reg" class="beans.registerbean"></jsp:useBean>
<jsp:setProperty name="reg" property="*" />

<%

int status = registerdao.registerUser(reg);

if(status > 0)
{
	out.println("<h2>Registration Successful</h2>");
}
else
{
	out.println("<h2>Registration Failed</h2>");
}

%>

</body>
</html>