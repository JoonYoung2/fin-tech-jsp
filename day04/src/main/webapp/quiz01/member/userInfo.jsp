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
	<jsp:useBean id="dao" class="quiz01.MemberDAO"/>
	<c:set var="dto" value="${ dao.userInfo(sessionScope.userId) }"/>
	<c:import url="../default/header.jsp"/>
	<h1>개인 정보</h1>
	아이디 : ${ dto.id }<br>
	비밀번호 : ${ dto.pwd }<br>
	이름 : ${ dto.name }<br>
	주소 : ${ dto.addr }<br>
	전번 : ${ dto.tel }<br>
	<a href="modifyInfo.jsp">수정</a> <a onclick="userDelete();">삭제</a>
	<c:import url="../default/footer.jsp"/>
	<script>
		const userDelete = () => {
			if( window.confirm("정말 삭제하시겠습니까?") ){
				location.href="delete.jsp";
			}
		}
	</script>
</body>
</html>