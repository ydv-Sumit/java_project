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
       String FirstName =request.getParameter("FirstName");
       String LastName =request.getParameter("LastName");
       String username =request.getParameter("username");
       String password =request.getParameter("password");
       
       // store data in session
       
               session.setAttribute("firstName", FirstName);
               session.setAttribute("lastName", LastName);
               session.setAttribute("Username", username);
               session.setAttribute("Password", password);
               
               out.print("<h2 style='color:green;'>Registration Successful<h2>");
             

    %>

  <a href =loginForm.jsp> go to login now</a>
</body>
</html>