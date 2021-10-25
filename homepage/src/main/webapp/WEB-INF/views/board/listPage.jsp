<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시물 목록</title>
<link rel="stylesheet" href="/resources/css/list.css">
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
	
	<div class="paging py-3">
		<div class="paging-body">
			<ul class="pagination">
				<c:forEach begin="1" end="${pageNum}" var="num">
					<li class="px-1"><a class="page-link" href="/board/listPage?num=${num}">${num}</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>
</body>
</html>