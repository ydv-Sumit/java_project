<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="jakarta.mail.*"%>
<%@page import="jakarta.mail.internet.*"%>
<%@page import="java.util.*"%>
<%
    String email = (String) session.getAttribute("email");

    if(email != null){
        String otp = String.valueOf(new Random().nextInt(900000) + 100000);
        session.setAttribute("otp", otp);

        final String from = "ysumit8896@gmail.com";
        final String password = "wqok bjsh wstz jszb";

        Properties props = new Properties();
        props.put("mail.smtp.host","smtp.gmail.com");
        props.put("mail.smtp.port","587");
        props.put("mail.smtp.auth","true");
        props.put("mail.smtp.starttls.enable","true");

        Session mailSession = Session.getInstance(props, new Authenticator(){
            protected PasswordAuthentication getPasswordAuthentication(){
                return new PasswordAuthentication(from,password);
            }
        });

        try {
            MimeMessage message = new MimeMessage(mailSession);
            message.setFrom(new InternetAddress(from));
            message.addRecipient(Message.RecipientType.TO,new InternetAddress(email));
            message.setSubject("OTP Resend");
            message.setText("Your new OTP is: " + otp);
            Transport.send(message);

            // Success message session attribute में store करें
            session.setAttribute("msg", "OTP resend successful!");

        } catch(Exception e){
            e.printStackTrace();
            session.setAttribute("msg", "OTP resend failed! Try again.");
        }

        // redirect same page (verifyotp.jsp)
        response.sendRedirect("verifyotp.jsp");

    } else {
        session.setAttribute("msg", "Session expired. Please login again.");
        response.sendRedirect("verifyotp.jsp");
    }
%>