<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Pets Management</title>
</head>
<body>
	<nav>
		<a href="/admin/pets/index">Thú cưng</a> <a
			href="/admin/customers/index">Khách hàng</a>
	</nav>
	<h1>Pets Management</h1>
	<jsp:include page="form.jsp" />
	<hr>
	<jsp:include page="table.jsp" />
</body>
</html>