<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<%@ include file = "include/header.jsp" %>
<%@ include file = "include/nav.jsp" %>
<div class="container">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-9">
			<%@ include file = "board/listPage.jsp" %>
		</div>
	</div>
</div>
</body>
</html>
