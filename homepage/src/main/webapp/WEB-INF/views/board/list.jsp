<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시물 목록</title>
<style>
	thead th {
		color: #AFAFAF;
		border-bottom: 2px solid #999999;
		padding: 5px;
	}
	
	tr td {
		border-bottom: 1px solid #E1E1E1;
		padding: 5px;
	}
	
	td a {
		color: #333333;
		text-decoration: none;
	}
	
	td a:hover {
		color: #333333;
		text-decoration: underline;
	}
	
</style>
</head>
<body>
<%@ include file = "../include/bootstrap.jsp" %>
<div class="container">
	<table class="mt-3">
		<colgroup>
			<col style="width: 50%;"/>
			<col style="width: 7%;"/>
			<col style="width: 10%;"/>
		</colgroup>
		
		<thead>
			<tr>
				<th style="text-align: left;">글 제목</th>
				<th style="text-align: center;">조회수</th>
				<th style="text-align: right;">작성일</th>
			</tr>
		</thead>
		
		<tbody>
		<c:forEach items="${list}" var="list">
			<tr>
				<td><a href="#">${list.title}</a></td>
				<td style="text-align: center; color: #AFAFAF;">${list.viewCnt}</td>
				<td style="text-align: right; color: #AFAFAF;"><fmt:formatDate value="${list.regDate}" pattern="yyyy. MM. dd."></fmt:formatDate></td>
			</tr>
		</c:forEach>
		</tbody>
		
	</table>
</div>
</body>
</html>