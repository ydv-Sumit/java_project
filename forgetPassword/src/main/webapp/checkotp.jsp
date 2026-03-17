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

String otp=request.getParameter("otp");

String sessionotp=(String)session.getAttribute("otp");

if(otp.equals(sessionotp)){

response.sendRedirect("resetpassword.jsp");

}
else{

out.println("Invalid OTP");

}

%>

</body>
</html>