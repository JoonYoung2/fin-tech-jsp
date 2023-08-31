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
	<jsp:useBean id="dao" class="quiz01.MemberDAO"/>
	<c:set var="dto" value="${ dao.userInfo(sessionScope.userId) }"/>
	<form action="changeUser.jsp" method="post">
		<input type="hidden" name="id" value="${ dto.id }">
		이름 : <input type="text" value="${ dto.name }" name="name"><br>
		주소 : <input type="text" value="${ dto.addr }" name="addr"><br>
		전번 : <input type="text" value="${ dto.tel }" name="tel"><br>
		<input type="submit" value="수정"><input type="reset" value="취소"><br> 
	</form>
	<c:import url="../default/footer.jsp"/>
</body>
</html>