<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../default/header.jsp"/>
	
	<form action="chkUser.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="password" name="pw"><br>
		<input type="submit" value="로그인">
		<a href="register.jsp">회원가입</a>
	</form>
	
	<c:import url="../default/footer.jsp"/>
</body>
</html>