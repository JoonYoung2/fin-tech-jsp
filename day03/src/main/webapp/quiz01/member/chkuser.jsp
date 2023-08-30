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
<jsp:setProperty property="*" name="dto"/>
<%
	int result = dao.checkUser(dto.getId(), dto.getPwd());
	String msg = "";
	if(result == 0){
		msg = "로그인 성공";
		session.setAttribute("userId", dto.getId());
	}else if(result == 1){
		msg = "비밀번호가 일치하지 않습니다.";
	}else{
		msg = "등록되지 않은 아이디입니다.";
	}
	if(msg.equals("로그인 성공")){
%>
	<script>
		alert('<%=msg%>');
		location.href="index.jsp";
	</script>
<%
	}else{
%>
	<script>
		alert('<%=msg%>');
		location.href="login.jsp";
	</script>
<%	
	}
%>

	<%@ include file="../default/footer.jsp" %>

</body>
</html>