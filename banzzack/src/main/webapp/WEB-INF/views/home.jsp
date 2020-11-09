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

<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- Modernizr JS -->
<script
	src="<c:url value='resources/shop/js/vendor/modernizr-3.5.0.min.js'/>"></script>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		var randomnumber = Math.floor(Math.random() * 10) + 1;
		var str = new Array();
		var str2 = new Array();
		str[0] = "productDetail.do?PRODUCT_NUM=${list[0].PRODUCT_NUM}";
		str[1] = "productDetail.do?PRODUCT_NUM=${list[1].PRODUCT_NUM}";
		str[2] = "productDetail.do?PRODUCT_NUM=${list[2].PRODUCT_NUM}";
		str[3] = "productDetail.do?PRODUCT_NUM=${list[3].PRODUCT_NUM}";
		str[4] = "productDetail.do?PRODUCT_NUM=${list[4].PRODUCT_NUM}";
		str[5] = "productDetail.do?PRODUCT_NUM=${list[5].PRODUCT_NUM}";
		str[6] = "productDetail.do?PRODUCT_NUM=${list[6].PRODUCT_NUM}";
		str[7] = "productDetail.do?PRODUCT_NUM=${list[7].PRODUCT_NUM}";
		
		str2[0] ="<c:url value='http://localhost:8181/banzzackimg/product/${list[0].PRODUCT_IMG1}'/>";
		str2[1] ="<c:url value='http://localhost:8181/banzzackimg/product/${list[1].PRODUCT_IMG1}'/>";
		str2[2] ="<c:url value='http://localhost:8181/banzzackimg/product/${list[2].PRODUCT_IMG1}'/>";
		str2[3] ="<c:url value='http://localhost:8181/banzzackimg/product/${list[3].PRODUCT_IMG1}'/>";
		str2[4] ="<c:url value='http://localhost:8181/banzzackimg/product/${list[4].PRODUCT_IMG1}'/>";
		str2[5] ="<c:url value='http://localhost:8181/banzzackimg/product/${list[5].PRODUCT_IMG1}'/>";
		str2[6] ="<c:url value='http://localhost:8181/banzzackimg/product/${list[6].PRODUCT_IMG1}'/>";
		str2[7] ="<c:url value='http://localhost:8181/banzzackimg/product/${list[7].PRODUCT_IMG1}'/>";
		
		$("#random").attr("href", str[randomnumber]);
		$("#randomImg").attr("src", str2[randomnumber]);
		
	});
</script>
<body>
	<!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->
	<c:if test="${msg == 'logout'}">
		<script>
			alert("로그아웃 되었습니다.");
		</script>
	</c:if>
	<c:if test="${msg == 'success'}">
		<script>
			alert("${sessionScope.userName}님 환영합니다.");
		</script>
	</c:if>

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
								<a href="#"> <img
									src="<c:url value='resources/shop/images/product-2/sm-smg/1.jpg'/>"
									alt="product images">
								</a>
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
								<a href="#"> <img
									src="<c:url value='resources/shop/images/product-2/sm-smg/2.jpg'/>"
									alt="product images">
								</a>
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
		<!-- Start Slider Area -->
		<div class="slider__container slider--one bg__cat--3">
			<div class="slide__container slider__activation__wrap owl-carousel">
				<!-- Start Single Slide -->
				<div class="single__slide animation__style01 slider__fixed--height">
					<div class="container">
						<div class="row align-items__center">
							<div class="col-md-7 col-sm-7 col-xs-12 col-lg-6">
								<div class="slide">
									<div class="slider__inner">
										<h2>collection 2020</h2>
										<h1>New Accessory</h1>
										<div class="cr__btn">
											<a href="productDetail.do?PRODUCT_NUM=${list[0].PRODUCT_NUM}">Buy
												now</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-sm-5 col-xs-12 col-md-5">
								<div class="slide__thumb">
									<img
										src="<c:url value='http://localhost:8181/banzzackimg/product/${list[0].PRODUCT_IMG1}'/>">
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End Single Slide -->
				<!-- Start Single Slide -->
				<div class="single__slide animation__style01 slider__fixed--height">
					<div class="container">
						<div class="row align-items__center">
							<div class="col-md-7 col-sm-7 col-xs-12 col-lg-6">
								<div class="slide">
									<div class="slider__inner">
										<h2>collection 2020</h2>
										<h1>New Accessory</h1>
										<div class="cr__btn">
											<a href="productDetail.do?PRODUCT_NUM=${list[1].PRODUCT_NUM}">Buy
												now</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-sm-5 col-xs-12 col-md-5">
								<div class="slide__thumb">
									<img
										src="<c:url value='http://localhost:8181/banzzackimg/product/${list[1].PRODUCT_IMG1}'/>"
										alt="slider images">
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End Single Slide -->
			</div>
		</div>
		<!-- Start Slider Area -->
		<!-- Start Category Area -->
		<section class="htc__category__area ptb--100">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="section__title--2 text-center">
							<h2 class="title__line">New Banzzack</h2>
							<p>Find an accessory that will shine on you!</p>
						</div>
					</div>
				</div>
				<!-- 새상품 블록 -->
				<div class="htc__product__container">
					<div class="row">
						<div class="product__list clearfix mt--30">
							<c:forEach var="i" begin="0" end="3">
								<!-- Start Single Category -->
								<div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
									<div class="category">
										<div class="ht__cat__thumb">
											<a href="productDetail.do?PRODUCT_NUM=${list[i].PRODUCT_NUM}">
												<img
												src="<c:url value='http://localhost:8181/banzzackimg/product/${list[i].PRODUCT_IMG1}'/>"
												alt="product images">
											</a>
										</div>
										<div class="fr__hover__info">
											<ul class="product__action">

												<li><a href="cart.html"><i
														class="icon-handbag icons"></i></a></li>
												<!-- <li><a href="wishlist.html"><i
													class="icon-heart icons"></i></a></li>
											<li><a href="#"><i class="icon-shuffle icons"></i></a></li> -->
											</ul>
										</div>
										<div class="fr__product__inner">
											<h4>
												<a
													href="productDetail.do?PRODUCT_NUM=${list[i].PRODUCT_NUM}">${list[i].PRODUCT_TITLE}</a>
											</h4>
											<ul class="fr__pro__prize">
												<li>${list[i].PRODUCT_RPICE}원</li>
											</ul>
										</div>
									</div>
								</div>
								<!-- End Single Category -->
							</c:forEach>
						</div>
					</div>
				</div>
				<!-- 새상품 블록 끝 -->
			</div>
		</section>
		<!-- End Category Area -->
		<!-- Start Prize Good Area -->
		<section class="htc__good__sale bg__cat--3">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">


						<div class="fr__prize__inner">
							<h2>추천 악세서리를 확인하세요!</h2>
							<h3>추천악세서리는 랜덤 입니다.</h3>
							<a class="fr__btn" id="random" href="">자세히 보기</a>
						</div>
					</div>

					<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
						<div class="prize__inner">
							<div class="prize__thumb">
								<img id="randomImg"
									src="<c:url value='resources/shop/images/earring/매직스퀘어 귀걸이.gif'/>"
									alt="banner images">
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Prize Good Area -->
		<!-- Start Product Area -->
		<section class="ftr__product__area ptb--100">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="section__title--2 text-center">
							<h2 class="title__line">Best Banzzack</h2>
							<p>Check out the best Seller Accessory</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="product__wrap clearfix">
					<c:forEach var="i" begin="0" end="3">
						<!-- Start Single Category -->
						<div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
							<div class="category">
								<div class="ht__cat__thumb">
									<a href="productDetail.do?PRODUCT_NUM=${list2[i].PRODUCT_NUM}"> <img
										src="<c:url value='http://localhost:8181/banzzackimg/product/${list2[i].PRODUCT_IMG1}'/>"
										alt="product images">
									</a>
								</div>
								<div class="fr__hover__info">
									<ul class="product__action">
										<li><a href="productDetail.do?PRODUCT_NUM=${list2[i].PRODUCT_NUM}"><i class="icon-handbag icons"></i></a></li>
									</ul>
								</div>
								<div class="fr__product__inner">
									<h4>
										<a href="productDetail.do?PRODUCT_NUM=${list2[i].PRODUCT_NUM}">${list2[i].PRODUCT_TITLE}</a>
									</h4>
									<ul class="fr__pro__prize">
										<li>${list2[i].PRODUCT_RPICE}원</li>
									</ul>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</section>
		<!-- End Product Area -->
		<!-- Start Top Rated Area -->
		<!-- 이부분 추후 추가할 수 있음  -->
		<%-- 
		<section class="top__rated__area bg__white pt--100 pb--110">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="section__title--2 text-center">
							<h2 class="title__line">Top Rated</h2>
							<p>But I must explain to you</p>
						</div>
					</div>
				</div>
				<div class="row mt--20">
					<!-- Start Single Product -->
					<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
						<div class="htc__best__product">
							<div class="htc__best__pro__thumb">
								<a href="product-details.html"> <img
									src="<c:url value='resources/shop/images/product-2/sm-img-2/1.jpg'/>"
									alt="small product">
								</a>
							</div>
							<div class="htc__best__product__details">
								<h2>
									<a href="product-details.html">dummy Product title</a>
								</h2>
								<ul class="rating">
									<li><i class="icon-star icons"></i></li>
									<li><i class="icon-star icons"></i></li>
									<li><i class="icon-star icons"></i></li>
									<li class="old"><i class="icon-star icons"></i></li>
									<li class="old"><i class="icon-star icons"></i></li>
								</ul>
								<ul class="top__pro__prize">
									<li class="old__prize">$82.5</li>
									<li>$75.2</li>
								</ul>
								<div class="best__product__action">
									<ul class="product__action--dft">
										<li><a href="wishlist.html"><i
												class="icon-heart icons"></i></a></li>
										<li><a href="cart.html"><i class="icon-handbag icons"></i></a></li>
										<li><a href="#"><i class="icon-shuffle icons"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- End Single Product -->
					<!-- Start Single Product -->
					<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
						<div class="htc__best__product">
							<div class="htc__best__pro__thumb">
								<a href="product-details.html"> <img
									src="<c:url value='resources/shop/images/product-2/sm-img-2/2.jpg'/>"
									alt="small product">
								</a>
							</div>
							<div class="htc__best__product__details">
								<h2>
									<a href="product-details.html">dummy Product title</a>
								</h2>
								<ul class="rating">
									<li><i class="icon-star icons"></i></li>
									<li><i class="icon-star icons"></i></li>
									<li><i class="icon-star icons"></i></li>
									<li class="old"><i class="icon-star icons"></i></li>
									<li class="old"><i class="icon-star icons"></i></li>
								</ul>
								<ul class="top__pro__prize">
									<li class="old__prize">$82.5</li>
									<li>$75.2</li>
								</ul>
								<div class="best__product__action">
									<ul class="product__action--dft">
										<li><a href="wishlist.html"><i
												class="icon-heart icons"></i></a></li>
										<li><a href="cart.html"><i class="icon-handbag icons"></i></a></li>
										<li><a href="#"><i class="icon-shuffle icons"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- End Single Product -->
					<!-- Start Single Product -->
					<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
						<div class="htc__best__product">
							<div class="htc__best__pro__thumb">
								<a href="product-details.html"> <img
									src="<c:url value='resources/shop/images/product-2/sm-img-2/3.jpg'/>"
									alt="small product">
								</a>
							</div>
							<div class="htc__best__product__details">
								<h2>
									<a href="product-details.html">dummy Product title</a>
								</h2>
								<ul class="rating">
									<li><i class="icon-star icons"></i></li>
									<li><i class="icon-star icons"></i></li>
									<li><i class="icon-star icons"></i></li>
									<li class="old"><i class="icon-star icons"></i></li>
									<li class="old"><i class="icon-star icons"></i></li>
								</ul>
								<ul class="top__pro__prize">
									<li class="old__prize">$82.5</li>
									<li>$75.2</li>
								</ul>
								<div class="best__product__action">
									<ul class="product__action--dft">
										<li><a href="wishlist.html"><i
												class="icon-heart icons"></i></a></li>
										<li><a href="cart.html"><i class="icon-handbag icons"></i></a></li>
										<li><a href="#"><i class="icon-shuffle icons"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- End Single Product -->
				</div>
			</div>
		</section> --%>
		<!-- 이부분 추후 추가 할 수 있음 -->
		<!-- End Top Rated Area -->
		<!-- Start Blog Area -->
		<section class="htc__good__sale bg__cat--3">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="section__title--2 text-center">
							<h2 class="title__line">구매 후기</h2>
							<p>고객들의 생생한 구매 후기를 확인하세요!</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="ht__blog__wrap clearfix">
					<c:forEach var="i" begin="0" end="3">
						<!-- Start Single Blog -->
						<div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
							<div class="blog">
								<div class="blog__thumb">
									<img
										src="<c:url value='http://localhost:8181/banzzackimg/reivew/${list3[i].REVIEW_IMG}'/>"
										alt="blog images">
								</div>
								<div class="blog__details">
									<div class="bl__date">
										<span>${list3[i].REVIEW_TIME}</span>
									</div>
									<h2>
										<a href="#">${list3[i].REVIEW_TITLE}</a>
									</h2>
									<p>${list3[i].REVIEW_CONTENTS}</p>
								</div>
							</div>
						</div>
						<!-- End Single Blog -->
						</c:forEach>
					</div>
				</div>
			</div>
		</section>
		<!-- End Blog Area -->
		<!-- End Banner Area -->
		<!-- Start Footer Area -->
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