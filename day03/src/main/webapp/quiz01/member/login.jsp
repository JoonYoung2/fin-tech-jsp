<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../default/header.jsp" %>
	
	<form action="chkuser.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="password" name="pwd"><br>
		<button>로그인</button><br>
	</form>
	<a href="register.jsp">회원가입</a>
	
	<%@ include file="../default/footer.jsp" %>
</body>
</html>