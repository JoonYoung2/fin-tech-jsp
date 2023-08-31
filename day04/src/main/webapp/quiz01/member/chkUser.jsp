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
	<jsp:useBean id="dao" class="quiz01.MemberDAO" />
	<c:set var="id" value="${ param.id }"/>
	<c:set var="pw" value="${ param.pw }"/>
	<c:set var="result" value="${ dao.checkUser(id, pw) }"/>
	<c:import url="../default/header.jsp"/>
	<c:if test="${ result == 1 }">
		<script>
			alert("없는 아이디입니다.");
			window.history.back();
		</script>
	</c:if>
	<c:if test="${ result == -1 }">
		<script>
			alert("비밀번호가 일치하지 않습니다.");
			window.history.back();
		</script>
	</c:if>
	<c:if test="${ result == 0 }">
	<% session.setAttribute("userId", request.getParameter("id")); %>
		<script>
			alert("로그인 완료!");
			location.href="index.jsp";
		</script>
	</c:if>
	<c:import url="../default/footer.jsp"/>
</body>
</html>