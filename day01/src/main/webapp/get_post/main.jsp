<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>main</h3>
	<hr>
	<h3>get 방식</h3>
	<form action="get.jsp" method="get">
		<input type="text" name="id"><br>
		<input type="submit" value="전송">
	</form>
	<hr>
	<h3>post 방식</h3>
	<form action="/day01/get_post/post.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>