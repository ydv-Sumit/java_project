<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

           <!-- create object registratiobean -->
<jsp:useBean id="reg" class="beans.registrationbean" scope="application"></jsp:useBean>

           <!-- create object registerdao-->
<jsp:useBean id="regdao" class="dao.registerdao"></jsp:useBean>

           <!--  set the property means data ko bean me store kiya  ---> 
<jsp:setProperty property="*" name="reg"/>

<% 

String msg = regdao.save(reg);
if(msg.equals("success")){
%>

<jsp:forward page="welcome.jsp"></jsp:forward>

<% } else{ %>

<jsp:forward page="error.jsp"></jsp:forward>

<%}%>

</body>
</html>