<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <!-- jsp:useBean ka kam yah hota hai ki vah internally object banata hai aur vaha bean ka oject banata hai aur use "log" variablr me store kar deta hai     -->
  
<jsp:useBean id ="log" class="javabean.bean"  scope ="application"></jsp:useBean>


<!-- use to setproperty method data ko set yani store karne ke  liye kiya  gya hai  -->

<jsp:setProperty property="username" name="log"/>
<jsp:setProperty property="password" name="log"/>

<!-- use to get property -->

  <h4>Username is :</h4>
     <jsp:getProperty property="username" name="log"/>
     <br>
     <br>
     
   <h4>Password is:</h4>
      <jsp:getProperty property="password" name="log"/>





</body>
</html>