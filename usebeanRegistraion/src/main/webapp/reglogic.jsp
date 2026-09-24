<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="reg" class="usebeanRegistraion.regprocess" scope ="application"></jsp:useBean>
<jsp:setProperty property="*" name="reg"/>

<%
String User = request.getParameter("username");
String Pass = request.getParameter("password");

if(User != null && Pass != null 
&& !User.trim().isEmpty()       // isempty check karta hai ki "  " check karta hai aur trim aage piche ke space ko hatata hai
&& !Pass.trim().isEmpty()){


%>

<h2 style="color:green;">Registration Successful</h2>

<%}else { %>

<h2>Password or username are blank </h2>

<%} %>


<a href="loginform.jsp">Login Now</a>


</body>
</html>