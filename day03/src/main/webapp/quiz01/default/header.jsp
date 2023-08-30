<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">CARE LAB</h1>
<hr>
<a href="/day03/quiz01/member/index.jsp">HOME</a> 

<% if(session.getAttribute("userId") == null){ %>
	<a href="/day03/quiz01/member/login.jsp">로그인</a>
<% }else{ %>
	<a href="/day03/quiz01/member/userInfo.jsp">개인정보</a>
	<a href="/day03/quiz01/member/logout.jsp">로그아웃</a>
<% } %>
<br>