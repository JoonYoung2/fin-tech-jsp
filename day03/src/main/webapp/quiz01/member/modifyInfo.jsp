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
	
	<jsp:useBean id="dto" class="quiz01.MemberDTO" />
	<jsp:useBean id="dao" class="quiz01.MemberDAO" />
	<%
		dto = dao.getUserInfo((String)session.getAttribute("userId"));
	%>
	<form action="changeUser.jsp" method="post">
		<input type="hidden" name="id" value="<%= dto.getId() %>"><br>
		<input type="text" name="name" value="<%= dto.getName() %>"><br>
		<input type="text" name="addr" value="<%= dto.getAddr() %>"><br>
		<input type="text" name="tel" value="<%= dto.getTel() %>"><br>
		<button>완료</button><button type="reset">취소</button>
	</form>
	
	<%@ include file="../default/footer.jsp" %>
</body>
</html>