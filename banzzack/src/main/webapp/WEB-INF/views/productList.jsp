<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html>
<head>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>반짝 반짝 아름다운 Banzzack에 오신걸 환영합니다.</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Place favicon.ico in the root directory -->
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value='resources/shop/images/favicon.ico'/>">
<link rel="apple-touch-icon"
	href="<c:url value='resources/shop/apple-touch-icon.png'/>">


<!-- All css files are included here. -->
<!-- Bootstrap fremwork main css -->
<link rel="stylesheet"
	href="<c:url value='resources/shop/css/bootstrap.min.css'/>">
<!-- Owl Carousel min css -->
<link rel="stylesheet"
	href="<c:url value='resources/shop/css/owl.carousel.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='resources/shop/css/owl.theme.default.min.css'/>">
<!-- This core.css'/> file contents all plugings css file. -->
<link rel="stylesheet"
	href="<c:url value='resources/shop/css/core.css'/>">
<!-- Theme shortcodes/elements style -->
<link rel="stylesheet"
	href="<c:url value='resources/shop/css/shortcode/shortcodes.css'/>">
<!-- Theme main style -->
<link rel="stylesheet" href="<c:url value='resources/shop/style.css'/>">
<!-- Responsive css -->
<!-- <link rel="stylesheet" href="<c:url value='resources/shop/css/responsive.css'/>"> -->
<!-- User style -->
<link rel="stylesheet"
	href="<c:url value='resources/shop/css/custom.css'/>">


<!-- Modernizr JS -->
<script
	src="<c:url value='resources/shop/js/vendor/modernizr-3.5.0.min.js'/>"></script>
</head>
<body>
	<!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

	<!-- Body main wrapper start -->
	<div class="wrapper">
		<!-- Start Header Style -->
		<header id="htc__header" class="htc__header__area header--one">
			<!-- Start Mainmenu Area -->
			<div id="sticky-header-with-topbar"
				class="mainmenu__wrap sticky__header">
				<div class="container">
					<div class="row">
						<div class="menumenu__container clearfix">
							<div class="col-lg-2 col-md-2 col-sm-3 col-xs-5">
								<div class="logo">
									<a href="home.do"><img
										src="<c:url value='resources/shop/images/logo/logo.png'/>"
										alt="logo images"></a>
								</div>
							</div>
							<div class="col-md-6">
								<nav class="main__menu__nav hidden-xs hidden-sm">
									<ul class="main__menu">
										<li class="drop"><a href="home.do">Home</a></li>
										<li class="drop"><a href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=all">귀걸이</a>
											<ul class="dropdown">
												<!-- Start Single Mega MEnu -->
												<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=패션 귀걸이">패션
													귀걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=실버침">실버침</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=투웨이귀걸이">투웨이귀걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=핸드메이드 귀걸이">핸드메이드
													귀걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=롱귀걸이">롱귀걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=러블리">러블리</a></li>
												<!-- End Single Mega MEnu -->
											</ul></li>

										<li class="drop"><a href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=all">반지</a>
											<ul class="dropdown">
												<li><a
												href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=14/18k">14/18k</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=실버링">실버링</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=커플링">커플링</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=심플링">심플링</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=다이아몬드 링">다이아몬드
													링</a></li>
											</ul></li>

										<li class="drop"><a href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=all">목걸이</a>
											<ul class="dropdown">
												<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=14/18k 목걸">14/18k
													목걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=14/18k 펜던트">14/18k
													펜던트</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=24k 순금목걸이">24k
													순금목걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=탄생석 목걸이">탄생석
													목걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=진주 목걸이">진주
													목걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=체인 목걸이">체인
													목걸이</a></li>
											</ul></li>
									</ul>
								</nav>

								<div class="mobile-menu clearfix visible-xs visible-sm">
									<nav id="mobile_dropdown">
										<ul>
											<li class="drop"><a href="home">Home</a></li>
											<li class="drop"><a href="#">귀걸이</a>
												<ul class="dropdown">
													<!-- Start Single Mega MEnu -->
													<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=패션 귀걸이">패션
													귀걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=실버침">실버침</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=투웨이귀걸이">투웨이귀걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=핸드메이드 귀걸이">핸드메이드
													귀걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=롱귀걸이">롱귀걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=러블리">러블리</a></li>
													<!-- End Single Mega MEnu -->
												</ul></li>

											<li class="drop"><a href="#">반지</a>
												<ul class="dropdown">
													<li><a
												href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=14/18k">14/18k</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=실버링">실버링</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=커플링">커플링</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=심플링">심플링</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=다이아몬드 링">다이아몬드
													링</a></li>

											<li class="drop"><a href="#">목걸이</a>
												<ul class="dropdown">
													<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=14/18k 목걸">14/18k
													목걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=14/18k 펜던트">14/18k
													펜던트</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=24k 순금목걸이">24k
													순금목걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=탄생석 목걸이">탄생석
													목걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=진주 목걸이">진주
													목걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=체인 목걸이">체인
													목걸이</a></li>
											</ul></li>
												</ul></li>
										</ul>
									</nav>
								</div>
							</div>
							<div class="col-md-4">
								<div class="header__right">

									<div class="header__account">
										<c:choose>
											<c:when test="${sessionScope.userId == null}">
												<a href="login.do"><i class="icon-user icons"></i>로그인</a>
											</c:when>
											<c:otherwise>
												<c:choose>
													<c:when test="${sessionScope.userId == 'root'}">
														<a href="productReg.do">상품등록</a>
													</c:when>
													<c:otherwise>
														<a href="myPage.do">마이페이지</a>
													</c:otherwise>
												</c:choose>
											</c:otherwise>
										</c:choose>

									</div>
									<c:choose>
										<c:when test="${sessionScope.userId == null}">
											<a href="signup.do">회원가입</a>
										</c:when>
										<c:otherwise>
											<a href="logout.do">로그아웃</a>
										</c:otherwise>
									</c:choose>

								</div>
							</div>
						</div>
					</div>
					<div class="mobile-menu-area"></div>
				</div>
			</div>
			<!-- End Mainmenu Area -->
		</header>
		<!-- End Header Area -->
		<div class="body__overlay"></div>
		<!-- Start Offset Wrapper -->
		<div class="offset__wrapper">
			<!-- Start Search Popap -->
			<div class="search__area">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="search__inner">
								<form action="#" method="get">
									<input placeholder="Search here... " type="text">
									<button type="submit"></button>
								</form>
								<div class="search__close__btn">
									<span class="search__close__btn_icon"><i
										class="zmdi zmdi-close"></i></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Search Popap -->
			<!-- Start Cart Panel -->
			<div class="shopping__cart">
				<div class="shopping__cart__inner">
					<div class="offsetmenu__close__btn">
						<a href="#"><i class="zmdi zmdi-close"></i></a>
					</div>
					<div class="shp__cart__wrap">
						<div class="shp__single__product">
							<div class="shp__pro__thumb">
								<a href="#"> </a>
							</div>
							<div class="shp__pro__details">
								<h2>
									<a href="product-details.html">BO&Play Wireless Speaker</a>
								</h2>
								<span class="quantity">QTY: 1</span> <span class="shp__price">$105.00</span>
							</div>
							<div class="remove__btn">
								<a href="#" title="Remove this item"><i
									class="zmdi zmdi-close"></i></a>
							</div>
						</div>
						<div class="shp__single__product">
							<div class="shp__pro__thumb">
								<a href="#"> </a>
							</div>
							<div class="shp__pro__details">
								<h2>
									<a href="product-details.html">Brone Candle</a>
								</h2>
								<span class="quantity">QTY: 1</span> <span class="shp__price">$25.00</span>
							</div>
							<div class="remove__btn">
								<a href="#" title="Remove this item"><i
									class="zmdi zmdi-close"></i></a>
							</div>
						</div>
					</div>
					<ul class="shoping__total">
						<li class="subtotal">Subtotal:</li>
						<li class="total__price">$130.00</li>
					</ul>
					<ul class="shopping__btn">
						<li><a href="cart.html">View Cart</a></li>
						<li class="shp__checkout"><a href="checkout.html">Checkout</a></li>
					</ul>
				</div>
			</div>
			<!-- End Cart Panel -->
		</div>
		<!-- End Offset Wrapper -->
		<!-- Start Bradcaump area -->
		<div class="ht__bradcaump__area"
			style="background: rgba(0, 0, 0, 0) url(resources/shop/images/bg/banner.jpg) no-repeat scroll center center/cover;">
			<div class="ht__bradcaump__wrap" style="height: 150px;">
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<div class="bradcaump__inner"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Bradcaump area -->
		<!-- Start Product Grid -->
		<section class="htc__product__grid bg__white ptb--100">
			<div class="container">
				<div class="row">
					<div
						class="col-lg-9 col-lg-push-3 col-md-9 col-md-push-3 col-sm-12 col-xs-12">
						<div class="htc__product__rightidebar">
							<div class="htc__grid__top">
								<div class="htc__select__option">
									<select class="ht__select">
										<option>Default softing</option>
										<option>Sort by popularity</option>
										<option>Sort by average rating</option>
										<option>Sort by newness</option>
									</select>
								</div>
								<div class="ht__pro__qun">
									<!-- <span>Showing 1-12 of 1033 products</span> -->
								</div>
							</div>
							<!-- Start Product View -->
							<div class="row">
								<div class="shop__grid__view__wrap">
									<div role="tabpanel" id="grid-view"
										class="single-grid-view tab-pane fade in active clearfix">
										<c:forEach var="row" items="${list}">
											<!-- Start Single Product -->
											<div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">

												<div class="category">
													<div class="ht__cat__thumb">
														<a href="productDetail.do?PRODUCT_NUM=${row.PRODUCT_NUM}">
															<img
															src="<c:url value='http://localhost:8181/banzzackimg/product/${row.PRODUCT_IMG1}'/>">
														</a>
													</div>
													<div class="fr__hover__info">
														<ul class="product__action">
															<li><a href="cart.html"><i
																	class="icon-handbag icons"></i></a></li>
														</ul>
													</div>

													<div class="fr__product__inner">
														<h4>
															<a href="productDetail.do?PRODUCT_NUM=${row.PRODUCT_NUM}">${row.PRODUCT_TITLE}</a>
														</h4>
														<ul class="fr__pro__prize">
															<li>${row.PRODUCT_RPICE}원</li>
														</ul>
													</div>
												</div>
											</div>
											<!-- End Single Product -->
										</c:forEach>
									</div>
									<div role="tabpanel" id="list-view"
										class="single-grid-view tab-pane fade clearfix">
										<div class="col-xs-12">
											<div class="ht__list__wrap">

												
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- End Product View -->
						</div>
						<!-- Start Pagenation -->
						<!-- 페이징 -->
						<!-- <div class="row">
							<div class="col-xs-12">
								<ul class="htc__pagenation">
									<li><a href="#"><i class="zmdi zmdi-chevron-left"></i></a></li>
									<li><a href="#">1</a></li>
									<li class="active"><a href="#">3</a></li>
									<li><a href="#">19</a></li>
									<li><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
								</ul>
							</div>
						</div> -->
						<!-- End Pagenation -->
					</div>
					<div
						class="col-lg-3 col-lg-pull-9 col-md-3 col-md-pull-9 col-sm-12 col-xs-12 smt-40 xmt-40">
						<div class="htc__product__leftsidebar">
							<!-- Start Prize Range -->
							<div class="htc-grid-range">
								<h4 class="title__line--4">가격</h4>
								<div class="content-shopby">
									<div class="price_filter s-filter clear">
										<form action="#" method="GET">
											<div id="slider-range"></div>
											<div class="slider__range--output">
												<div class="price__output--wrap">
													<div class="price--output">
														<span>Price :</span><input type="text" id="amount"
															readonly>
													</div>
													<div class="price--filter">
														<a href="#">Serch</a>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
							<!-- End Prize Range -->
							<!-- Start Category Area -->
							<div class="htc__category">
								<c:choose>
									<c:when test="${PRODUCT_CATEGORY1 == '귀걸이'}">
										<h3 class="title__line--4">
											<a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=all">귀걸이</a>
										</h3>
										<ul class="ht__cat__list">
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=패션 귀걸이">패션
													귀걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=실버침">실버침</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=투웨이귀걸이">투웨이귀걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=핸드메이드 귀걸이">핸드메이드
													귀걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=롱귀걸이">롱귀걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=러블리">러블리</a></li>
										</ul>
									</c:when>
									<c:when test="${PRODUCT_CATEGORY1 == '반지'}">
										<h3 class="title__line--4">
											<a
												href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=all">반지</a>
										</h3>
										<ul class="ht__cat__list">
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=14/18k">14/18k</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=실버링">실버링</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=커플링">커플링</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=심플링">심플링</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=다이아몬드 링">다이아몬드
													링</a></li>
										</ul>
									</c:when>
									<c:when test="${PRODUCT_CATEGORY1 == '목걸이'}">
										<h3 class="title__line--4">
											<a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=all">목걸이</a>
										</h3>
										<ul class="ht__cat__list">
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=14/18k 목걸">14/18k
													목걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=14/18k 펜던트">14/18k
													펜던트</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=24k 순금목걸이">24k
													순금목걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=탄생석 목걸이">탄생석
													목걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=진주 목걸이">진주
													목걸이</a></li>
											<li><a
												href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=체인 목걸이">체인
													목걸이</a></li>
										</ul>
									</c:when>
								</c:choose>

							</div>
							<!-- End Category Area -->

							<!-- Start Tag Area 나중에 사용 할 수도-->
							<!-- <div class="htc__tag">
								<h4 class="title__line--4">tags</h4>
								<ul class="ht__tag__list">
									<li><a href="#">Clothing</a></li>
									<li><a href="#">bag</a></li>
									<li><a href="#">Shoes</a></li>
									<li><a href="#">Jewelry</a></li>
									<li><a href="#">Food</a></li>
									<li><a href="#">Aceessories</a></li>
									<li><a href="#">Store</a></li>
									<li><a href="#">Watch</a></li>
									<li><a href="#">Other</a></li>
								</ul>
							</div> -->
							<!-- End Tag Area -->
							<!-- Start Best Sell Area -->
							<div class="htc__recent__product">
								<h2 class="title__line--4">best seller</h2>
								<div class="htc__recent__product__inner">




									<c:forEach var="i" begin="0" end="2">
										<!-- Start Single Product -->
										<div class="htc__best__product">
											<div class="htc__best__pro__thumb">
												<a
													href="productDetail.do?PRODUCT_NUM=${list2[i].PRODUCT_NUM}">
													<img
													src="<c:url value='http://localhost:8181/banzzackimg/product/${list2[i].PRODUCT_IMG1}'/>">
												</a>
											</div>
											<div class="htc__best__product__details">
												<h2>
													<a
														href="productDetail.do?PRODUCT_NUM=${list2[i].PRODUCT_NUM}">${list2[i].PRODUCT_TITLE}</a>
												</h2>
												<ul class="rating">
													<li><i class="icon-star icons"></i></li>
													<li><i class="icon-star icons"></i></li>
													<li><i class="icon-star icons"></i></li>
													<li class="old"><i class="icon-star icons"></i></li>
													<li class="old"><i class="icon-star icons"></i></li>
												</ul>
												<ul class="pro__prize">
													<li>${list2[i].PRODUCT_RPICE}원</li>
												</ul>
											</div>
										</div>
										<!-- End Single Product -->
									</c:forEach>
									
								</div>
							</div>
							<!-- End Best Sell Area -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Product Grid -->
		<!-- Start Brand Area -->
		<div class="htc__brand__area bg__cat--4" style="margin-top: 100px;">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="ht__brand__inner">
							<ul class="brand__list owl-carousel clearfix">
								<li><a href="#"><img
										src="<c:url value='resources/shop/images/brand/1.png'/>"
										alt="brand images"></a></li>
								<li><a href="#"><img
										src="<c:url value='resources/shop/images/brand/2.png'/>"
										alt="brand images"></a></li>
								<li><a href="#"><img
										src="<c:url value='resources/shop/images/brand/3.png'/>"
										alt="brand images"></a></li>
								<li><a href="#"><img
										src="<c:url value='resources/shop/images/brand/4.png'/>"
										alt="brand images"></a></li>
								<li><a href="#"><img
										src="<c:url value='resources/shop/images/brand/5.png'/>"
										alt="brand images"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Brand Area -->
		<footer id="htc__footer">
			<!-- Start Footer Widget -->
			<div class="footer__container bg__cat--1">
				<div class="container">
					<div class="row">
						<!-- Start Single Footer Widget -->
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="footer">
								<h2 class="title__line--2">ABOUT US</h2>
								<div class="ft__details">
									<p style="font-family: '돋움'";>악세서리 가상착용 쇼핑몰 입니다. 자신의 사진을
										업로드하고 가상으로 착용하는 경험을 선사해드립니다!</p>
									<div class="ft__social__link">
										<ul class="social__link">
											<li><a href="#"><i class="icon-social-twitter icons"></i></a></li>

											<li><a href="#"><i
													class="icon-social-instagram icons"></i></a></li>

											<li><a href="#"><i
													class="icon-social-facebook icons"></i></a></li>

											<li><a href="#"><i class="icon-social-google icons"></i></a></li>

											<li><a href="#"><i
													class="icon-social-linkedin icons"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- End Single Footer Widget -->
						<!-- Start Single Footer Widget -->
						<div class="col-md-3 col-sm-6 col-xs-12 xmt-40">
							<div class="footer">
								<h2 class="title__line--2">Callcenter</h2>
								<div class="ft__inner">
									<ul class="ft__list">
										<li><b><p style="font-size: 32px; font-family: '돋움';">1522-0000</p></b></li>
										<li><p style="font-family: '돋움'";>Open/ 10:00~18:00</p></li>
										<li><p style="font-family: '돋움'";>Open/ 10:00~18:00</p></li>
										<li><h3></h3></li>
										<li><p style="font-family: '돋움'";>Sat, Sun, Holiday
												Closed</p></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- End Single Footer Widget -->
						<!-- Start Single Footer Widget -->
						<div class="col-md-3 col-sm-6 col-xs-12 xmt-40 smt-40">
							<div class="footer">
								<h2 class="title__line--2">Bank account</h2>
								<div class="ft__inner">
									<ul class="ft__list">
										<li><p style="font-family: '돋움'";>우리 1002-341-409783</p></li>
										<li><p style="font-family: '돋움'";>기업
												537-000004-00-000</p></li>
										<li><p style="font-family: '돋움'";>국민 088201-00-000000</p></li>
										<li><p style="font-family: '돋움'";>국민 355-0000-0000-00</p></li>
										<li><h3></h3></li>
										<li><p style="font-family: '돋움'";>예금주 : 주식회사 반짝</p></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- End Single Footer Widget -->
						<!-- Start Single Footer Widget -->
						<div class="col-md-4 col-sm-6 col-xs-12 xmt-40 smt-40">
							<div class="footer">
								<h2 class="title__line--2">Deilvery</h2>
								<div class="ft__inner">
									<ul class="ft__list">
										<li><p style="font-family: '돋움'";>
												<a href="https://www.doortodoor.co.kr/parcel/pa_004.jsp">CJ
													대한통운 : 1588-1255</a>
											</p></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- End Single Footer Widget -->
					</div>
				</div>
			</div>
			<!-- End Footer Widget -->
			<!-- Start Copyright Area -->
			<div class="htc__copyright bg__cat--5">
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<div class="copyright__inner">
								<p>
									Copyright© <a href="home">Banzzack</a> 2020. All right
									reserved.
								</p>
								<a href="#"><img
									src="<c:url value='resources/shop/images/others/shape/paypol.png'/>"
									alt="payment images"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Copyright Area -->
		</footer>
		<!-- End Footer Style -->
	</div>
	<!-- Body main wrapper end -->

	<!-- Placed js at the end of the document so the pages load faster -->

	<!-- jquery latest version -->
	<script
		src="<c:url value='resources/shop/js/vendor/jquery-3.2.1.min.js'/>"></script>
	<!-- Bootstrap framework js -->
	<script src="<c:url value='resources/shop/js/bootstrap.min.js'/>"></script>
	<!-- All js plugins included in this file. -->
	<script src="<c:url value='resources/shop/js/plugins.js'/>"></script>
	<script src="<c:url value='resources/shop/js/slick.min.js'/>"></script>
	<script src="<c:url value='resources/shop/js/owl.carousel.min.js'/>"></script>
	<!-- Waypoints.min.js'/>. -->
	<script src="<c:url value='resources/shop/js/waypoints.min.js'/>"></script>
	<!-- Main js file that contents all jQuery plugins activation. -->
	<script src="<c:url value='resources/shop/js/main.js'/>"></script>

</body>

</html>