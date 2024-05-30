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
	<form:form action="/admin/staffs/index" modelAttribute="item">
		<form:input path="maNhanVien" />
		<form:input path="tenNhanVien" />
		<form:input path="matKhauNV" />
		<form:input path="emailNV" />
		<form:input path="soDienThoaiNV" />
		<button formaction="/admin/staffs/save">Lưu</button>
		<button formaction="/admin/staffs/update">Sửa</button>
		<button formaction="/admin/staffs/delete/${item.maNhanVien}">Xóa</button>
		<a href="/admin/staffs/index">Trở lại</a>
	</form:form>
</body>
</html>