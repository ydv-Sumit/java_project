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

//loginForm se getparrameter dawara client se data liya 

      String userName =request.getParameter("userName");
      String password =request.getParameter("password");
      
      
      // getAttribute dwara serverside data jo session me use liya
              
      
             String Name = (String)session.getAttribute("Username");
              String pass =(String)session.getAttribute("Password");
              String fstname = (String)session.getAttribute("firstName");
              
              
              if(userName!=null && password!=null&& Name != null && pass != null){
            	  
            	  if(userName.equals(Name) && password.equals(pass)){
              		session.setAttribute("loginuser", fstname);
              		response.sendRedirect("dashboard.jsp");
              	}else{
              		out.println("<h2 style='color:red;'>invalid password or user name</h2>");
              	}
            	  
              }else{
            	
            	     response.sendRedirect("loginForm.jsp");
              }
      

%>



</body>
</html>