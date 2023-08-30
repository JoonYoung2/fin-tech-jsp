<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../default/header.jsp" %>
	
	<jsp:useBean id="dto" class="quiz01.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	<jsp:useBean id="dao" class="quiz01.MemberDAO" />
	<%
		int result = dao.memberUpdate(dto);
		if(result == 1){
	%>
	<script>
		alert("수정 완료");
		location.href="userInfo.jsp";
	</script>
	<% }else{ %>
	<script>
		alert("문제 발생");
		window.history.back();
	</script>
	<% } %>
	
	<%@ include file="../default/footer.jsp" %>
</body>
</html>