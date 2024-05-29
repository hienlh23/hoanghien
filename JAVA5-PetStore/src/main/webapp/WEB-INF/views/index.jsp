<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chủ</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	<h1>Trang Chủ</h1>
	<c:forEach var="item" items="${thuCungItems}">
		<p>${item.tenThuCung}</p>
	</c:forEach>
</body>
</html>