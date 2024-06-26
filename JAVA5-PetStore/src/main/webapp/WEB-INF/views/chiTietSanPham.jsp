
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Waggy Pet Shop</title>
<!-- ICON -->
<link rel="icon" href="/hinhAnh/pets/nhaiconbanphim2-01.png">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://kit.fontawesome.com/246169b37f.js"
	crossorigin="anonymous"></script>
<!-- Bootstrap Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-cn7l7gDp0ey6b8c5UyN9UNpSLQFcpTxuP8r72d9czD8Gknf2/2frT0BOu71lfFhH"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
<!-- FONT -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Chilanka&family=Montserrat:wght@300;400;500&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300..700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Playpen+Sans:wght@100..800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Grandstander:ital,wght@0,100..900;1,100..900&family=Playpen+Sans:wght@100..800&display=swap"
	rel="stylesheet">

<!-- ANGULAR JS -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script src="https://code.angularjs.org/1.8.2/angular-route.min.js"></script>

<style>
body {
	font-family: 'Grandstander'
}

header {
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 1000;
}

main {
	margin-top: 110px;
}

/* LOADER */

/* MENU */
a {
	transition: ease-in-out 0.3s;
}

a:hover {
	text-decoration: none;
	font-weight: bold;
	width: fit-content;
}

.fa-solid {
	font-size: 25px;
	color: #bfa789;
	transition: ease-in-out 0.3s;
}

.fa-solid:hover {
	color: #bfa789;
	cursor: pointer;
	transform: scale(1.2);
}

/* BANNER */
#banner {
	background: url(images/background-img.png) no-repeat;
	background-size: cover;
}

#banner .carousel-inner img {
	width: 500px;
	margin: 30px auto;
	filter: drop-shadow(0 0 5rem rgba(246, 175, 175, 0.759));
}

/* CATEGORIES */
.categories-item {
	text-decoration: none;
	color: #bfa789;
	cursor: pointer;
}

.category-icon {
	color: #ebcea9;
	font-size: 100px;
	margin: 0 auto;
}

.search-container {
	overflow: hidden;
	transition: width 0.3s ease-in-out;
}

.search-btn, .submit-btn {
	background-color: transparent;
	border: none;
	color: #bfa789;
	padding: 10px;
	cursor: pointer;
	border-radius: 5px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.search-btn .fa-search, .submit-btn .fa-paper-plane {
	font-size: 16px;
}

.search-input {
	width: 0;
	padding: 10px;
	border: none;
	border-radius: 5px;
	opacity: 0;
	transition: width 0.3s ease-in-out, opacity 0.3s ease-in-out,
		border-color 0.3s ease-in-out;
}

.search-input:focus {
	outline: none;
	border: 2px solid #bfa789;
	/* Màu viền khi focus */
	border-radius: 5px;
}

.search-container.expand .search-input {
	width: 200px;
	opacity: 1;
}

.search-container.expand .submit-btn {
	display: flex;
}

.submit-btn {
	display: none;
}

/* ITEMS */
.card {
	border: none;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	position: relative;
	overflow: hidden;
}

.card-img-top {
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.card-title {
	font-size: 1.25rem;
	font-weight: bold;
}

.rate-star {
	font-size: 1.25rem;
	margin-bottom: 0.5rem;
	color: goldenrod;
}

.text-price {
	font-size: 1.25rem;
	font-weight: lighter;
	color: #e1b784;
}

.btn-dark {
	border-radius: 20px;
}

.card-img-overlay {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(255, 255, 255, 0.6);
	opacity: 0;
	/* Initially hidden */
	transition: opacity 1s ease-in-out, margin-bottom 1s ease-in-out;
}

.btn-add-to-cart {
	background-color: #bfa789;
	color: white;
}

.btn-add-to-cart:hover {
	background-color: #ebcea9b5;
	color: white;
	transform: scale(1.1);
	filter: drop-shadow(0 0 0.5rem rgba(0, 0, 0, 0.5));
	transition: ease-in-out 0.3s;
}

/* Show the button on hover */
.card:hover .card-img-overlay {
	opacity: 1;
	margin-bottom: 0;
}

.social-icon {
	color: #bfa789;
	font-size: 1.5em;
	margin: 0 2px;
}

/* ACCOUNT */
#sidebar {
	background-color: white;
	margin-top: 20px;
	width: 250px;
	height: 100%;
}

#sidebar ul li {
	list-style: none;
	font-size: 18px;
	border-bottom: 1px solid #bfa789;
	cursor: pointer;
}

#sidebar ul li a {
	display: block;
	text-decoration: none;
	color: #bfa789;
	padding: 10px;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: space-between;
	transition: 0.3s;
}

#sidebar ul li a:hover {
	background-color: #bfa789;
	color: white;
}

.content {
	flex-grow: 1;
	padding: 15px;
}

.accordion-button {
	font-size: large;
	color: #bfa789;
}

.accordion-button:focus {
	box-shadow: none;
	color: #bfa789;
	font-weight: bold;
}

.content-section {
	display: none;
}

.content-section:target {
	display: block;
}

.accordion-collapse {
	transition: height 0.3s ease;
}

.collapse.show {
	display: block;
}

/* SHOPPING CART */
.cart-item {
	background-color: #fff;
	color: #000;
	border-radius: 8px;
	padding: 15px;
	margin-bottom: 15px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s, box-shadow 0.3s;
}

.cart-item:hover {
	transform: scale(1.02);
	box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
}

.cart-item img {
	width: 80px;
	height: auto;
	margin-right: 15px;
	border-radius: 4px;
}

.cart-item button {
	border: none;
	background: none;
	transition: color 0.3s;
}

.cart-item button i {
	color: #000;
}

.cart-item button:hover i {
	color: #007bff;
}

.summary {
	background-color: #fff;
	color: #000;
	border-radius: 8px;
	padding: 15px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.delivery, .payment-methods {
	background-color: #fff;
	color: #000;
	border-radius: 8px;
	padding: 15px;
	margin-top: 15px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.payment-methods img {
	height: 30px;
	margin-right: 10px;
	transition: transform 0.3s;
}

.payment-methods img:hover {
	transform: scale(1.1);
}

.btn-primary {
	background-color: #007bff;
	border-color: #007bff;
	transition: background-color 0.3s, transform 0.3s;
}

.btn-primary:hover {
	background-color: #0056b3;
	transform: scale(1.02);
}

.quantity input {
	width: 50px;
	text-align: center;
	border: 1px solid #ccc;
	border-radius: 4px;
	padding: 5px;
	transition: border-color 0.3s;
}

.quantity input:focus {
	border-color: #007bff;
	outline: none;
}

.details {
	background-color: #fff;
	color: #000;
	border-radius: 8px;
	padding: 15px;
	margin-top: 15px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.details-btn {
	margin-right: 10px;
	cursor: pointer;
	color: #007bff;
	text-decoration: none;
	transition: color 0.3s;
}

.details-btn:hover {
	color: #0056b3;
}

.remove-btn {
	cursor: pointer;
	color: #ff0000;
	text-decoration: none;
	transition: color 0.3s;
}

.remove-btn:hover {
	color: #cc0000;
}

.collapse-content {
	background-color: #f8f9fa;
	border: 1px solid #ddd;
	border-radius: 8px;
	padding: 10px;
	margin-top: 10px;
	box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.05);
	transition: max-height 0.3s ease-in-out, opacity 0.3s ease-in-out;
	overflow: hidden;
	max-height: 0;
	opacity: 0;
}

.collapse-content.show {
	max-height: 300px;
	opacity: 1;
}
</style>
</head>

<body>

	<!-- HEADER START -->
	<header class="bg-body shadow border-bottom ">
		<div class="container">
			<!-- BANNER HEADER -->
			<div class="d-flex">
				<div class="navbar-brand d-flex align-items-center gap-4 ">
					<a href="/"><img src="/hinhAnh/pets/logo.png" alt="logo"
						class="logo"></a>
				</div>
			</div>
			<nav class="main-menu d-flex navbar navbar-expand-lg ">
				<!-- KHÔNG REPOSIVE -->
				<div class="d-flex d-lg-none align-items-end mt-3">
					<ul class="d-flex justify-content-end list-unstyled m-0">
						<li><a href="account.html" class="mx-3"> <i
								class="fa-solid fa-user"></i>
						</a></li>
						<li><a href="wishlist.html" class="mx-3"> <i
								class="fa-solid fa-heart"></i>
						</a></li>
						<li class=""><a href="#" class="mx-3"
							data-bs-toggle="offcanvas" data-bs-target="#offcanvasCart"
							aria-controls="offcanvasCart"> <i
								class="fa-solid fa-cart-shopping"></i> <span
								class="position-absolute translate-middle badge rounded-circle bg-warning  pt-2 m-0">
									03 </span>
						</a></li>
					</ul>
				</div>

				<!-- REPOSIVE BUTTON-->
				<button class="navbar-toggler" type="button"
					data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
					aria-controls="offcanvasNavbar">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="offcanvas offcanvas-end" tabindex="-1"
					id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
					<div class="offcanvas-header justify-content-end ">
						<button type="button"
							class="btn-close w-50 border border-5 shadow-sm  "
							data-bs-dismiss="offcanvas" aria-label="Close"></button>
					</div>
					<div
						class="offcanvas-body justify-content-between align-items-center ">
						<div class="d-flex">
							<select class="shadow form-select border-0 mb-0 me-1">
								<option selected>Shop by Category</option>
								<option>Clothes</option>
								<option>Food</option>
								<option>Toy</option>
							</select>
						</div>
						<ul
							class="navbar-nav menu-list list-unstyled d-flex gap-md-3 mb-0">
							<li class="nav-item"><a href="index.html"
								class="nav-link active text-warning animated-link">Home</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" role="button" id="pages"
								data-bs-toggle="dropdown" aria-expanded="false">Pages</a>
								<ul class="dropdown-menu" aria-labelledby="pages">
									<li><a href="about.html" class="dropdown-item">About
											Us<span class="badge bg-success text-warning  ms-2">PRO</span>
									</a></li>
									<li><a href="shop.html" class="dropdown-item">Shop<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="single-product.html" class="dropdown-item">Single
											Product<span class="badge bg-success text-warning ms-2">PRO</span>
									</a></li>
									<li><a href="cart.html" class="dropdown-item">Cart<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="wishlist.html" class="dropdown-item">Wishlist<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="checkout.html" class="dropdown-item">Checkout<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="blog.html" class="dropdown-item">Blog<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="single-post.html" class="dropdown-item">Single
											Post<span class="badge bg-success text-warning ms-2">PRO</span>
									</a></li>
									<li><a href="contact.html" class="dropdown-item">Contact<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="faqs.html" class="dropdown-item">FAQs<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="account.html" class="dropdown-item">Account<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="thank-you.html" class="dropdown-item">Thankyou<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
									<li><a href="error.html" class="dropdown-item">Error
											404<span class="badge bg-success text-warning ms-2">PRO</span>
									</a></li>
									<li><a href="styles.html" class="dropdown-item">Styles<span
											class="badge bg-success text-warning ms-2">PRO</span></a></li>
								</ul></li>
							<li class="nav-item"><a href="shop.html" class="nav-link">Shop</a>
							</li>
							<li class="nav-item"><a href="blog.html" class="nav-link">Blog</a>
							</li>
							<li class="nav-item"><a href="contact.html" class="nav-link">Contact</a>
							</li>
							<li class="nav-item"><a href="#" class="nav-link">Others</a>
							</li>
							<li class="nav-item"><a
								href="https://templatesjungle.gumroad.com/l/waggy-pet-shop-ecommerce-html-website-template"
								class="nav-link fw-bold text-dark" target="_blank">GET PRO</a></li>
						</ul>
						<!-- SEARCH -->
						<div class="search-container d-flex align-items-center ">
							<button id="search-btn" class="search-btn">
								<i class="fa fa-search"></i>
							</button>
							<input type="text" id="search-input" class="search-input"
								placeholder="Search...">
							<button id="submit-btn" class="submit-btn">
								<i class="fa fa-paper-plane"></i>
							</button>
						</div>
						<!-- END SEARCH -->
						<!-- SAU REPOSIVE -->
						<div class="d-none d-lg-flex align-items-end">
							<ul class="d-flex justify-content-end list-unstyled m-0">
								<li><a href="account.html" class="mx-3"> <i
										class="fa-solid fa-user"></i>
								</a></li>
								<li><a href="wishlist.html" class="mx-3"> <i
										class="fa-solid fa-heart"></i>
								</a></li>
								<li class=""><a href="#" class="mx-3"
									data-bs-toggle="offcanvas" data-bs-target="#offcanvasCart"
									aria-controls="offcanvasCart"> <i
										class="fa-solid fa-cart-shopping"></i> <span
										class="position-absolute translate-middle badge rounded-circle bg-warning  pt-2 m-0">
											03 </span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!-- HEADER END -->

	<!-- MAIN START -->
	<main class="container" style="margin-top: 200px;">
		<!-- ITEMS -->
		<div class="container my-5">
			<div class="row">
				<div>
					<nav aria-label="breadcrumb">
						<ol
							class="breadcrumb
								breadcrumb-dark
								subtle-shadow">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item"><a href="#">Library</a></li>
							<li class="breadcrumb-item active" aria-current="page">Data</li>
						</ol>
					</nav>
				</div>
				<div class="col-md-6">
					<div class="card shadow-lg">
						<img src="/hinhAnh/pets/${thuCungDetail.hinhAnh}"
							class="card-img-top img-fluid" alt="${thuCungDetail.hinhAnh}">
						<div class="card-body text-center">
							<!-- Thumbnails -->
							<div class="d-flex justify-content-center">
								<img src="thumbnail1.jpg" class="img-thumbnail mx-1"
									alt="thumbnail1" style="width: 60px;"> <img
									src="thumbnail2.jpg" class="img-thumbnail mx-1"
									alt="thumbnail2" style="width: 60px;"> <img
									src="thumbnail3.jpg" class="img-thumbnail mx-1"
									alt="thumbnail3" style="width: 60px;"> <img
									src="thumbnail4.jpg" class="img-thumbnail mx-1"
									alt="thumbnail4" style="width: 60px;">
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<h1 class="display-5">${thuCungDetail.tenThuCung}</h1>
					<div class="d-flex align-items-center">
						<span class="me-2 fs-1">${thuCungDetail.gia} </span> <span
							class="text-warning me-2">★★★★☆</span> <span class="me-2">4.5</span>
						<span class="text-muted">(154 orders)</span>
					</div>
					<p class="text-success">In stock</p>
					<p>Thú cưng</p>
					<ul class="list-group list-group-flush">
						<li class="list-group-item"><strong>Loài:</strong>
							${thuCungDetail.loai}</li>
						<li class="list-group-item"><strong>Tuổi:</strong>
							${thuCungDetail.tuoi}</li>
						<li class="list-group-item"><strong>Giống:</strong>
							${thuCungDetail.giong}</li>
					</ul>
					<form class="mt-3">
						<div class="row mb-3">
							<div class="col-md-6">
								<label for="quantity" class="form-label">Quantity</label>
								<div class="input-group">
									<button class="btn btn-outline-secondary" type="button">-</button>
									<input type="number" class="form-control text-center"
										id="quantity" value="1" min="1">
									<button class="btn btn-outline-secondary" type="button">+</button>
								</div>
							</div>
						</div>
						<button type="button" class="btn btn-warning me-2">BUY
							NOW</button>
						<a href="/cart/details/view/${thuCungDetail.maThuCung}" type="button" class="btn btn-primary me-2">ADD TO
							CART</a>
						<button type="button" class="btn btn-outline-secondary">SAVE</button>
					</form>
				</div>
			</div>
		</div>
		<!-- Offcanvas Cart -->
		<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasCart"
			aria-labelledby="offcanvasCartLabel">
			<div class="offcanvas-header">
				<h5 class="offcanvas-title" id="offcanvasCartLabel">Giỏ hàng</h5>
				<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
					aria-label="Close"></button>
			</div>
			<div class="offcanvas-body">
				<div class="card">
					<div class="card-header">
						<h4>Giỏ hàng thú nuôi</h4>
					</div>
					<div class="card-body">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>Sản phẩm</th>
									<th>Số lượng</th>
									<th>Giá</th>
									<th>Tổng</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Thức ăn cho chó</td>
									<td>2</td>
									<td>$20</td>
									<td>$40</td>
									<td><button class="btn btn-danger btn-sm">Xóa</button></td>
								</tr>
								<tr>
									<td>Đồ chơi cho mèo</td>
									<td>1</td>
									<td>$15</td>
									<td>$15</td>
									<td><button class="btn btn-danger btn-sm">Xóa</button></td>
								</tr>
							</tbody>
						</table>
						<div class="text-end">
							<h5>Tổng cộng: $55</h5>
							<button class="btn btn-success">Thanh toán</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- MAIN END -->

	<!-- FOOTER START -->
	<footer class="my-5 shadow-lg">
		<div class="container py-5 my-5">
			<div class="row">
				<div class="col-md-3">
					<div class="footer-menu">
						<img width="100%" src="images/logo.png" alt="logo">
						<p class="blog-paragraph fs-6 mt-3">Đăng ký nhận tin để nhận
							thông tin về các ưu đãi lớn của chúng tôi.</p>
						<div class="social-links">
							<ul class="d-flex list-unstyled gap-2">
								<li class="social"><a
									href="https://www.facebook.com/hiimcorn"> <i
										class="fab fa-facebook-f social-icon"></i>
								</a></li>
								<li class="social"><a href="#"> <i width="100%"
										class="fab fa-twitter social-icon"></i>
								</a></li>
								<li class="social"><a href="#"> <i
										class="fab fa-pinterest-p social-icon"></i>
								</a></li>
								<li class="social"><a href="#"> <i
										class="fab fa-instagram social-icon"></i>
								</a></li>
								<li class="social"><a href="#"> <i
										class="fab fa-youtube social-icon"></i>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="footer-menu">
						<h3>Liên kết nhanh</h3>
						<ul class="menu-list list-unstyled">
							<li class="menu-item"><a href="#" class="nav-link">Trang
									chủ</a></li>
							<li class="menu-item"><a href="#" class="nav-link">Về
									chúng tôi</a></li>
							<li class="menu-item"><a href="#" class="nav-link">Ưu
									đãi</a></li>
							<li class="menu-item"><a href="#" class="nav-link">Dịch
									vụ</a></li>
							<li class="menu-item"><a href="#" class="nav-link">Liên
									hệ</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3">
					<div class="footer-menu">
						<h3>Trung tâm trợ giúp</h3>
						<ul class="menu-list list-unstyled">
							<li class="menu-item"><a href="#" class="nav-link">Câu
									hỏi thường gặp</a></li>
							<li class="menu-item"><a href="#" class="nav-link">Thanh
									toán</a></li>
							<li class="menu-item"><a href="#" class="nav-link">Đổi
									trả & Hoàn tiền</a></li>
							<li class="menu-item"><a href="#" class="nav-link">Thanh
									toán</a></li>
							<li class="menu-item"><a href="#" class="nav-link">Thông
									tin giao hàng</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3">
					<div>
						<h3>Bản tin của chúng tôi</h3>
						<p class="blog-paragraph fs-6">Đăng ký nhận tin của chúng tôi
							để cập nhật các ưu đãi lớn nhất của chúng tôi.</p>
						<div
							class="search-bar border rounded-pill border-dark-subtle px-2">
							<form class="text-center d-flex align-items-center" action=""
								method="">
								<input type="text" class="form-control border-0 bg-transparent"
									placeholder="Nhập email của bạn ở đây" />
								<iconify-icon class="send-icon" icon="tabler:location-filled"></iconify-icon>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<div class="footer-bottom">
		<div class="container">
			<hr class="m-0">
			<div class="row mt-3">
				<div class="col-md-6 copyright">
					<p class="secondary-font">© 2024 Vanh.</p>
				</div>
			</div>
		</div>
	</div>
	<!-- FOOTER END -->

</body>
<script src="script.js"></script>

</html>
</body>
</html>