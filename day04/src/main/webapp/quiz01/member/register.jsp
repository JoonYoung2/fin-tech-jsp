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
	<form action="regChk.jsp" method="post">
		<input type="text" name="id" placeholder="id"><br>
		<input type="password" name="pwd" placeholder="pwd"><br>
		<input type="text" name="name" placeholder="name"><br>
		<input type="text" name="addr" placeholder="addr"><br>
		<input type="text" name="tel" placeholder="tel"><br>
		<input type="submit" value="REGISTER"><br>
	</form>
	<c:import url="../default/footer.jsp"/>
</body>
</html>