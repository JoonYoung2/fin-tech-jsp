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
	<jsp:useBean id="dto" class="quiz01.MemberDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	<c:set var="result" value="${ dao.userUpdate(dto) }" />
	<c:if test="${ result eq 0 }">
		<script>
			alert("수정 실패");
			window.history.back();
		</script>
	</c:if>
	<c:if test="${ result eq 1 }">
		<script>
			alert("수정완료");
			location.href="userInfo.jsp";
		</script>
	</c:if>
	<c:import url="../default/footer.jsp"/>
</body>
</html>

















