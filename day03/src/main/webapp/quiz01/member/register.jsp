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
	
	<form action="regChk.jsp" method="post">
		<input type="text" name="id" placeholder="id"><br>
		<input type="password" name="pwd" placeholder="pwd"><br>
		<input type="text" name="name" placeholder="name"><br>
		<input type="text" name="addr" placeholder="addr"><br>
		<input type="text" name="tel" placeholder="tel"><br>
		<button>등록하기</button><button type="button" onclick="window.history.back();">뒤로가기</button>
	</form>
	
	<%@ include file="../default/footer.jsp" %>
</body>
</html>