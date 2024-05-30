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
	<div class="table-responsive">
		<table class="table table-bordered table-hover">
			<thead class="table-dark">
				<tr>
					<th>Mã khách hàng</th>
					<th>Tên khách hàng</th>
					<th>Email</th>
					<th>Mật khẩu</th>
					<th>Số điện thoại</th>
					<th>Địa chỉ</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${items}">
					<tr>
						<td>${item.maKhachHang}</td>
						<td>${item.tenKhachHang}</td>
						<td>${item.emailKH}</td>
						<td>${item.matKhauKH}</td>
						<td>${item.soDienThoaiKH}</td>
						<td>${item.diaChiKH}</td>
						<td><a
							href="/admin/customers/edit/${item.maKhachHang}">Edit</a>
							<a
							href="/admin/customers/delete/${item.maKhachHang}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>