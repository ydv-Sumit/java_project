<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- <%@page import ="usebeanRegistraion.regprocess" %>--->

<!-- agar scope usebean tag e nhi lagte to o difult hoti yani scope="page" hota hai  mtlb scope page likhane par alag-2 page par alag objct banat hai vahi scope scope="application" likhane par check karta hai already object bana to nhi hai agar bana  hota hai to nhi banta fir hum usebean ka use karke obj se dusre page par data fetch kar sakte hai   -->

<jsp:useBean id="reg" class="usebeanRegistraion.regprocess" scope ="application"></jsp:useBean>  
<jsp:setProperty property="*" name="reg"/> 

<% 
String name =request.getParameter("username");
String pass = request.getParameter("password");

if(name!=null && pass!=null && name.equals(reg.getUsername())&& pass.equals(reg.getPassword())){
	
%>

<h2>Welcome <%=reg.getFirstName()%></h2>

<%	
}else{   
%>
	<h3 Style="color:red;">Invalid Username or PassWord</h3>
     
<%
}
%>
  <a href ="loginform.jsp"></a>

</body>
</html>