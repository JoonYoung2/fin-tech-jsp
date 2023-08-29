<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<% 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<script>
	const loginCheck = (id, pw) => {
		let inputId = document.getElementById("id").value;
		let inputPw = document.getElementById("pw").value;
		if(id == inputId){
			if(pw == inputPw){
				alert("로그인 성공!!");
			}else{
				alert("비밀번호가 다릅니다.");
			}
		}else{
			alert("없는 아이디입니다.");
		}
	}
</script>
<body>
	<form action="login.do" method="post">
		<input type="text" id="id" name="id" placeholder="아이디"><br>
		<input type="text" id="pw" name="pw" placeholder="비밀번호"><br>
		<input type="button" value="로그인" onclick="loginCheck('<%=id%>', '<%=pw%>');">
	</form>
	<a href="register.jsp">회원가입</a>
</body>
</html>