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
	<form:form action="/admin/customers/index" modelAttribute="item">
		<form:input path="maKhachHang" />
		<form:input path="tenKhachHang" />
		<form:input path="emailKH" />
		<form:input path="matKhauKH" />
		<form:input path="soDienThoaiKH" />
		<form:input path="diaChiKH" />
		<Button formaction="/admin/customers/save">Lưu</Button>
		<Button formaction="/admin/customers/update">Sửa</Button>
		<Button formaction="/admin/customers/edit/${item.maKhachHang}">Xóa</Button>
	</form:form>
</body>
</html>