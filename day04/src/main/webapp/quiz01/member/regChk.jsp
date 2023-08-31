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
	<jsp:useBean id="dto" class="quiz01.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	<c:set var="result" value="${ dao.memberInsert(dto) }"/>
	<c:import url="../default/header.jsp"/>
	<c:if test="${ result eq 0 }">
		<script>
			alert("같은 아이디가 존재합니다.");
			window.history.back();
		</script>
	</c:if>
	<c:if test="${ result eq 1 }">
		<script>
			alert("회원가입 성공!");
			location.href="login.jsp";
		</script>
	</c:if>
	<c:import url="../default/footer.jsp"/>
</body>
</html>