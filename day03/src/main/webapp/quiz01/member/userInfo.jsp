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
	<h1>개인 정보</h1>
	아이디 <%= dto.getId() %><br>
	비밀번호 <%= dto.getPwd() %><br>
	이름 <%= dto.getName() %><br>
	주소 <%= dto.getAddr() %><br>
	전화번호 <%= dto.getTel() %><br>
	<a href="modifyInfo.jsp">수정</a> <a onclick="memberDelete();">삭제</a>
	<script>
		const memberDelete = () => {
			if(window.confirm("정말 삭제하시겠습니까?")){
				location.href="delete.jsp";	
			}
		}
	</script>
	
	<%@ include file="../default/footer.jsp" %>
</body>
</html>