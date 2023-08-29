<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   page : <%= pageContext.getAttribute("name") %><br>
   request : <%= request.getAttribute("name") %><br>
   session : <%= session.getAttribute("name") %><br>
   application : <%= application.getAttribute("name") %><br>
   <a href="test3.jsp">test3 설정확인</a>
   <a href="test1.jsp">test1 설정확인</a>
</body>
</html>