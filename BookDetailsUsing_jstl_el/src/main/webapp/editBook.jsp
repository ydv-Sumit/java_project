<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <%@page import="Dao.BookDao"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="u" class="Beans.BookBean"  />
<jsp:setProperty property="*" name="u"/>

<%


    BookDao.update(u);
    response.sendRedirect("viewbooks.jsp");

%>

</body>
</html>