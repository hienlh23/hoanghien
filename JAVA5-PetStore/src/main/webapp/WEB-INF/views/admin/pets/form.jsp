<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<form:form action="/admin/pets/index" modelAttribute="item">
		<form:input path="maThuCung" />
		<form:input path="tenThuCung" />
		<form:input path="loai" />
		<form:input path="giong" />
		<form:input path="tuoi" />
		<form:input path="gia" />
		<button formaction="/admin/pets/save">Lưu</button>
		<button formaction="/admin/pets/update">Sửa</button>
		<button formaction="/admin/pets/delete/${item.maThuCung}">Xóa</button>
		<a href="/admin/pets/index">Trở lại</a>
	</form:form>
</body>
</html>