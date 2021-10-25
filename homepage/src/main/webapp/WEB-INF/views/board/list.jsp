<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시물 목록</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>날짜</th>
			</tr>
		</thead>
		
		<tbody>
		<c:forEach items="${list}" var="list">
			<tr>
				<td>${list.bno}</td>
				<td>${list.title}</td>
				<td>${list.writer}</td>
				<td>${list.viewCnt}</td>
				<td>${list.regDate}</td>
			</tr>
		</c:forEach>
		</tbody>
		
	</table>
</body>
</html>