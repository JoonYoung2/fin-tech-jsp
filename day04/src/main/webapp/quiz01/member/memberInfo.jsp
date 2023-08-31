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
	<c:set var="dto" value="${ dao.getList() }" />
	<c:import url="../default/header.jsp"/>
	<div align="center">
		<table border="1">
			<tr>
				<th>아디</th>
				<th>비번</th>
				<th>이름</th>
				<th>주소</th>
				<th>폰번</th>
				<th></th>
			</tr>
			<c:forEach var="list" items="${ dto }">
				<tr>
					<td>${ list.id }</td>
					<td>${ list.pwd }</td>
					<td>${ list.name }</td>
					<td>${ list.addr }</td>
					<td>${ list.tel }</td>
					<td><input type="checkbox" class="checkBox" value="${ list.id }"></td>
				</tr>
			</c:forEach>
		</table>
		<a onclick="checkDelete();">삭제</a>
	</div>
	<c:import url="../default/footer.jsp"/>
	<script>
		const checkDelete = () => {
			let checkBox = document.querySelectorAll(".checkBox");
			let ids = "";
			let cnt = 0;
			for(var i = 0; i < checkBox.length; i++){
				if(checkBox[i].checked == true){
					cnt++;
					ids += "'" + checkBox[i].value + "'" + ",";
				}
			}
			if(cnt == 0){
				alert("변경사항이 없습니다.");
				return;
			}
			ids = ids.substring(0, ids.length-1);
			location.href="deletes.jsp?ids="+ids;
		}
	</script>
</body>
</html>