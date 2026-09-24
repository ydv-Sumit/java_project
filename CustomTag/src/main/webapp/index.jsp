<%@ taglib uri="/WEB-INF/math.tld" prefix="math" %>

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

String n1 =request.getParameter("n1");
String n2 = request.getParameter("n2");

%>

<math:sum num1="<%=n1%>" num2="<%=n2%>"><br>
this is.....body
</math:sum>

</body>
</html>