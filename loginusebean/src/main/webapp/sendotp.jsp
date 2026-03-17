<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="jakarta.mail.*"%>
<%@page import="jakarta.mail.internet.*"%>
<%@page import="java.util.*"%>
<%@page import="dao.registerdao"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

String email=request.getParameter("email");

// DATABASE CHECK
boolean check = registerdao.checkEmail(email);

if(check){

String otp=String.valueOf(new Random().nextInt(999999));

session.setAttribute("otp",otp);
session.setAttribute("email",email);

final String from="ysumit8896@gmail.com";
final String password= "wqok bjsh wstz jszb"; 

Properties props=new Properties();

props.put("mail.smtp.host","smtp.gmail.com");
props.put("mail.smtp.port","587");
props.put("mail.smtp.auth","true");
props.put("mail.smtp.starttls.enable","true");

Session mailSession=Session.getInstance(props,new Authenticator(){

protected PasswordAuthentication getPasswordAuthentication(){

return new PasswordAuthentication(from,password);

}

});

MimeMessage message=new MimeMessage(mailSession);

message.setFrom(new InternetAddress(from));
message.addRecipient(Message.RecipientType.TO,new InternetAddress(email));

message.setSubject("OTP For Password Reset");

message.setText("Your OTP is: "+otp);

Transport.send(message);

response.sendRedirect("verifyotp.jsp");

}else{

out.println("<h3 style='color:red;'>User not found in database</h3>");

}

%>

</body>
</html>