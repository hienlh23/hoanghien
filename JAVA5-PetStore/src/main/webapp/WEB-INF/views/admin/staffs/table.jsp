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
					<th>Mã nhân viên</th>
					<th>Tên nhân viên</th>
					<th>Mật khẩu nhân viên</th>
					<th>Email nhân viên</th>
					<th>Số điện thoại nhân viên</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${items}">
					<tr>
						<td>${item.maNhanVien}</td>
						<td>${item.tenNhanVien}</td>
						<td>${item.matKhauNV}</td>
						<td>${item.emailNV}</td>
						<td>${item.soDienThoaiNV}</td>
						<td><a
							href="/admin/staffs/edit/${item.maNhanVien}">Edit</a>
							<a
							href="/admin/staffs/delete/${item.maNhanVien}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>