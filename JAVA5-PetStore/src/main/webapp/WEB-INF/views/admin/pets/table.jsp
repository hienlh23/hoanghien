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
					<th>ID</th>
					<th>Name</th>
					<th>Loài</th>
					<th>Giống</th>
					<th>Tuổi</th>
					<th>Giá</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${items}">
					<tr>
						<td>${item.maThuCung}</td>
						<td>${item.tenThuCung}</td>
						<td>${item.loai}</td>
						<td>${item.giong}</td>
						<td>${item.tuoi}</td>
						<td>${item.gia}</td>
						<td><a
							href="${pageContext.request.contextPath}/admin/pets/edit/${item.maThuCung}">Edit</a>
							<a
							href="${pageContext.request.contextPath}/admin/pets/delete/${item.maThuCung}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>