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


<script>
	var PRODUCT_IMG1 = false;
	var PRODUCT_IMG2 = false;
	var PRODUCT_IMG3 = false;
	
	var Move_Type = 0;	// 1,2 귀걸이 3 목걸이 4 반지
	
	var Earring1 = false;	// 귀걸이 1
	var Earring2 = false;	// 귀걸이 2
	var Necklace = false;	// 목걸이
	var Ring = false;	// 반지
	
	$(document).ready(function() {
		$(".fileDrop").on("dragenter dragover", function(event) {
			event.preventDefault(); // 기본효과를 막음
		});
		// event : jQuery의 이벤트
		// originalEvent : javascript의 이벤트
		$(".fileDrop").on("drop", function(event) {
			event.preventDefault(); // 기본효과를 막음
			// 드래그된 파일의 정보
			var files = event.originalEvent.dataTransfer.files;
			// 첫번째 파일
			var file = files[0];
			// 콘솔에서 파일정보 확인
			console.log(file);

			// ajax로 전달할 폼 객체
			var formData = new FormData();
			// 폼 객체에 파일추가, append("변수명", 값)
			formData.append("file", file);

			$.ajax({
				type : "post",
				url : "virtualUploadAjax.do",
				data : formData,
				// processData: true=> get방식, false => post방식
				dataType : "text",
				// contentType: true => application/x-www-form-urlencoded, 
				//                false => multipart/form-data
				processData : false,
				contentType : false,
				success : function(data) {
					alert("성공");
					var text = "<img class=\"myImg\" alt=\"\"src=\"<c:url value='http://localhost:8181/banzzackimg/virtual/"+$.trim(data)+"'/>\">";
					$(".centered").html(text); 
					
					$(".myImg").on("click", function(event) {
						var width = $(".centered").width() / 2 - $(".myImg").width() / 2;
						var height = $(".centered").height() / 2 - $(".myImg").height() / 2;
						
						switch(Move_Type) {
						case 1: // 귀걸이1
							var virtualwidth = $(".virsualEarring1").width() / 2;
							$(".virsualEarring1").css({left: width+event.offsetX-virtualwidth, top: height+event.offsetY});
							break;
						case 2:	// 귀걸이2
							var virtualwidth = $(".virsualEarring2").width() / 2;
							$(".virsualEarring2").css({left: width+event.offsetX-virtualwidth, top: height+event.offsetY});
							break;
						case 3: // 목걸이
							var virtualwidth = $(".virsualNecklace").width() / 2;
							$(".virsualNecklace").css({left: width+event.offsetX-virtualwidth, top: height+event.offsetY});
							break;
						case 4: // 반지
							var virtualwidth = $(".virsualRing").width() / 2;
							$(".virsualRing").css({left: width+event.offsetX-virtualwidth, top: height+event.offsetY});
							break;
						}
						/* alert(event.currentTarget.className);
						alert("현재 좌표는 : " + event.offsetX + "/" + event.offsetY); */
					});
				}
			});
		});
		
		// 가상아이템 불러오기
		$(".earring1").on("click", function(event) {
			if(Earring1 == false) {
				var str = "<img class=\"virsualEarring1\" alt=\"\" style=\"width: 30px;\" src=\"<c:url value='http://localhost:8181/banzzackimg/virtual/${dto2.VIRTUAL_IMG}'/>\">";
				$(".Virtual").append(str);
				alert("귀걸이가 추가되었습니다 원하는 위치를 클릭해주세요!"); 
				Earring1 = true;
				Move_Type = 1;
			}else {
				Move_Type = 1;
			}
		});
		$(".earring2").on("click", function(event) {
			if(Earring2 == false) {
				var str = "<img class=\"virsualEarring2\" alt=\"\" style=\"width: 30px;\" src=\"<c:url value='http://localhost:8181/banzzackimg/virtual/${dto2.VIRTUAL_IMG2}'/>\">";
				$(".Virtual").append(str);
				alert("귀걸이가 추가되었습니다 원하는 위치를 클릭해주세요!"); 
				Earring2 = true;
				Move_Type = 2;
			}else {
				Move_Type = 2;
			}
		});
		$(".necklace").on("click", function(event) {
			if(Necklace == false) {
				var str = "<img class=\"virsualNecklace\" alt=\"\" style=\"width: 30px;\" src=\"<c:url value='http://localhost:8181/banzzackimg/virtual/${dto2.VIRTUAL_IMG}'/>\">";
				$(".Virtual").append(str);
				alert("목걸이가 추가되었습니다 원하는 위치를 클릭해주세요!"); 
				Necklace = true;
				Move_Type = 3;
			}else {
				alert("이미 목걸이를 불러왔습니다 화면을 클릭해보세요!"); 
			}
		});
		$(".ring").on("click", function(event) {
			if(Ring == false) {
				var str = "<img class=\"virsualRing\" alt=\"\" style=\"width: 30px;\" src=\"<c:url value='http://localhost:8181/banzzackimg/virtual/${dto2.VIRTUAL_IMG}'/>\">";
				$(".Virtual").append(str);
				alert("반지가 추가되었습니다 원하는 위치를 클릭해주세요!"); 
				Ring = true;
				Move_Type = 4;
			}else {
				alert("이미 반지를 불러왔습니다 화면을 클릭해보세요!"); 
			}
		});
		
		
		
		
		$(".range1").on("change", function(event) {
			$(".virsualEarring1").css({width: $(".range1").val()});
			Move_Type = 1;
		});
		$(".range2").on("change", function(event) {
			$(".virsualEarring2").css({width: $(".range2").val()});
			Move_Type = 2;
		});
		$(".range3").on("change", function(event) {
			$(".virsualNecklace").css({width: $(".range3").val()});
		});
		$(".range4").on("change", function(event) {
			$(".virsualRing").css({width: $(".range4").val()});
		});

	});
</script>
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
										<li class="drop"><a
											href="productList.do?PRODUCT_CATEGORY1=귀걸이&PRODUCT_CATEGORY2=all">귀걸이</a>
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

										<li class="drop"><a
											href="productList.do?PRODUCT_CATEGORY1=반지&PRODUCT_CATEGORY2=all">반지</a>
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

										<li class="drop"><a
											href="productList.do?PRODUCT_CATEGORY1=목걸이&PRODUCT_CATEGORY2=all">목걸이</a>
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
		<!-- Start Product Details Area -->
		<section class="htc__product__details bg__white ptb--100">
			<!-- Start Product Details Top -->
			<div class="htc__product__details__top">
				<div class="container">
					<div class="row">
						<div class="col-md-5 col-lg-5 col-sm-12 col-xs-12">
							<div class="htc__product__details__tab__content">
								<!-- Start Product Big Images -->
								<div class="product__big__images">
									<div class="portfolio-full-image tab-content">
										<div role="tabpanel" class="tab-pane fade in active"
											id="img-tab-1">
											<p style="text-align: center;">
												<img
													src="<c:url value='http://localhost:8181/banzzackimg/product/${dto.PRODUCT_IMG1}'/>">
											</p>
										</div>
										<div role="tabpanel" class="tab-pane fade" id="img-tab-2">
											<p style="text-align: center;">
												<img
													src="<c:url value='http://localhost:8181/banzzackimg/product/${dto.PRODUCT_IMG2}'/>">
											</p>
										</div>
										<div role="tabpanel" class="tab-pane fade" id="img-tab-3">
											<p style="text-align: center;">
												<img
													src="<c:url value='http://localhost:8181/banzzackimg/product/${dto.PRODUCT_IMG3}'/>">
											</p>
										</div>

									</div>
								</div>
								<!-- End Product Big Images -->

							</div>
							<!-- Start Small images -->
							<div style="margin-top: 10px;">
								<ul class="product__small__images">
									<li role="presentation" class="pot-small-img active"><a
										href="#img-tab-1" role="tab" data-toggle="tab"> <img
											src="<c:url value='http://localhost:8181/banzzackimg/product/${dto.PRODUCT_IMG1}'/>">
									</a></li>
									<li role="presentation" class="pot-small-img"><a
										href="#img-tab-2" role="tab" data-toggle="tab"> <img
											src="<c:url value='http://localhost:8181/banzzackimg/product/${dto.PRODUCT_IMG2}'/>">
									</a></li>
									<li role="presentation" class="pot-small-img"><a
										href="#img-tab-3" role="tab" data-toggle="tab"> <img
											src="<c:url value='http://localhost:8181/banzzackimg/product/${dto.PRODUCT_IMG3}'/>">
									</a></li>
								</ul>
							</div>
							<!-- End Small images -->
						</div>
						<form action="orderProduct.do" method="post">
							<div class="col-md-7 col-lg-7 col-sm-12 col-xs-12 smt-40 xmt-40">
								<div class="ht__product__dtl">
									<h2>${dto.PRODUCT_TITLE}</h2>
									<input type="hidden" name="PRODUCT_NUM"
										value="${dto.PRODUCT_NUM}">
									<h6>
										상품번호: <span>${dto.PRODUCT_NUM}</span>
									</h6>
									<ul class="rating">
										<li><i class="icon-star icons"></i></li>
										<li><i class="icon-star icons"></i></li>
										<li><i class="icon-star icons"></i></li>
										<li class="old"><i class="icon-star icons"></i></li>
										<li class="old"><i class="icon-star icons"></i></li>
									</ul>
									<ul class="pro__prize">
										<li>${dto.PRODUCT_RPICE}원</li>
									</ul>
									<div class="ht__pro__desc">
										<div class="sin__desc align--left">
											<p>
												<span>수량</span>
											</p>
											<select class="select__size" name="ORDERS_AMOUNT">
												<option value=1>1</option>
												<option value=2>2</option>
												<option value=3>3</option>
												<option value=4>4</option>
												<option value=5>5</option>
												<option value=6>6</option>
												<option value=7>7</option>
												<option value=8>8</option>
												<option value=9>9</option>
												<option value=10>10</option>
											</select>
										</div>
										<div class="sin__desc align--left">
											<p>
												<span>Categories:</span>
											</p>
											<ul class="pro__cat__list">
												<li><a
													href="productList.do?PRODUCT_CATEGORY1=${dto.PRODUCT_CATEGORY1}&PRODUCT_CATEGORY2=all">${dto.PRODUCT_CATEGORY1}</a></li>
												<li><a
													href="productList.do?PRODUCT_CATEGORY1=${dto.PRODUCT_CATEGORY1}&PRODUCT_CATEGORY2=${dto.PRODUCT_CATEGORY2}">${dto.PRODUCT_CATEGORY2}</a></li>
											</ul>
										</div>
										<!-- 공유하기 기능  -->
										<!-- <div class="sin__desc product__share__link">
										<p>
											<span>Share this:</span>
										</p>
										<ul class="pro__share">
											<li><a href="#" target="_blank"><i
													class="icon-social-twitter icons"></i></a></li>

											<li><a href="#" target="_blank"><i
													class="icon-social-instagram icons"></i></a></li>

											<li><a
												href="https://www.facebook.com/Furny/?ref=bookmarks"
												target="_blank"><i class="icon-social-facebook icons"></i></a></li>

											<li><a href="#" target="_blank"><i
													class="icon-social-google icons"></i></a></li>

											<li><a href="#" target="_blank"><i
													class="icon-social-linkedin icons"></i></a></li>

											<li><a href="#" target="_blank"><i
													class="icon-social-pinterest icons"></i></a></li>
										</ul>
									</div> -->
										<p class="pro__info">${dto.PRODUCT_CONTENTS}</p>
										<div class="row">
											<!-- <div class="col-md-6">
											<div class="dark-btn" style="margin-top: 20px">
												<button>장바구니에 추가</button>
											</div>
										</div> -->
											<div class="col-md-12">
												<div class="dark-btn" style="margin-top: 20px">
													<button>주문하기</button>
												</div>
											</div>
										</div>

									</div>
								</div>

							</div>
						</form>
					</div>
					<hr>
					<div class="row" style="margin-top: 20px">
						<div class="col-md-4"></div>
						<div class="col-md-4">
							<div class="row">
								<div class="col-md-12">
									<div class="section__title--2 text-center">
										<h2 class="title__line">가상 착용</h2>
										<p>
											해당 상품을 가상으로 착용해보고<br> 나에게 어울리는지 확인해보세요!!
										</p>
									</div>
									<div class="thumbnail" style="margin-top: 20px">
										<div class="fileDrop">
											<div class="centered">
												<img class="myImg" alt=""
													src="<c:url value='resources/shop/images/logo/가상착용이미지.png'/>">
											</div>
											<div class="Virtual"></div>

										</div>
									</div>
								</div>
								<c:choose>
									<c:when test="${dto.PRODUCT_CATEGORY1 == '귀걸이'}">
										<div>
											<div class="col-md-6 dark-btn" style="margin-top: 20px;">
												<button class="earring1" style="margin-bottom: 20px;">귀걸이1
													착용</button>
												<h4>크기 조절</h4>
												<input class="range1" type="range" value="30" min="5"
													max="100" style="margin-top: 5px;">
											</div>
											<div class="col-md-6 dark-btn"
												style="margin-top: 20px; margin-bottom: 20px;">
												<button class="earring2" style="margin-bottom: 20px;">귀걸이2
													착용</button>
												<h4>크기 조절</h4>
												<input class="range2" type="range" value="30" min="5"
													max="100" style="margin-top: 5px;">
											</div>
										</div>
									</c:when>

									<c:when test="${dto.PRODUCT_CATEGORY1 == '목걸이'}">
										<div>
											<div class="col-md-12 dark-btn" style="margin-top: 20px;">
												<button class="necklace" style="margin-bottom: 20px;">목걸이
													착용</button>
												<h4>크기 조절</h4>
												<input class="range3" type="range" value="30" min="5"
													max="100" style="margin-top: 5px;">
											</div>
										</div>
									</c:when>

									<c:when test="${dto.PRODUCT_CATEGORY1 == '반지'}">
										<div>
											<div class="col-md-12 dark-btn" style="margin-top: 20px;">
												<button class="ring" style="margin-bottom: 20px;">반지
													착용</button>
												<h4>크기 조절</h4>
												<input class="range4" type="range" value="30" min="5"
													max="100" style="margin-top: 5px;">
											</div>
										</div>
									</c:when>

								</c:choose>
							</div>
						</div>
						<div class="col-md-4"></div>
					</div>

				</div>
			</div>
			<!-- End Product Details Top -->
		</section>
		<!-- End Product Details Area -->

		<section class="htc__good__sale bg__cat--3">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="section__title--2 text-center">
							<h2 class="title__line">구매 후기</h2>
							<p>해당 상품 구매 고객들의 생생한 구매 후기를 확인하세요!</p>
						</div>
					</div>
				</div>
				<div class="row">
				<c:if test="${list2.size()==0}">
					<div class="col-xs-12" style="width: 100%; margin-top: 20px;">
										<div class="section__title--2 text-center">
											<h2 class="title__line">등록된 후기가 없습니다 ㅠㅠ</h2>
										</div>
									</div>
				</c:if>
					<div class="ht__blog__wrap clearfix">
						<c:choose>
							<c:when test="${list2.size()==0}">
							</c:when>
							<c:when test="${list2.size() < 4}">
								<c:forEach var="i" begin="0" end="${list2.size()-1}">
									<!-- Start Single Blog -->
									<div class="col-md-3 col-lg-3 col-sm-6 col-xs-12">
										<div class="blog">
											<div class="blog__thumb">
												<img
													src="<c:url value='http://localhost:8181/banzzackimg/reivew/${list2[i].REVIEW_IMG}'/>"
													alt="blog images">
											</div>
											<div class="blog__details">
												<div class="bl__date">
													<span>${list2[i].REVIEW_TIME}</span>
												</div>
												<h2>
													<a href="#">${list2[i].REVIEW_TITLE}</a>
												</h2>
												<p>${list2[i].REVIEW_CONTENTS}</p>
											</div>
										</div>
									</div>
									<!-- End Single Blog -->
								</c:forEach>
							</c:when>
							<c:otherwise>
								<c:forEach var="i" begin="0" end="3">
									<!-- Start Single Blog -->
									<div class="col-md-6 col-lg-4 col-sm-6 col-xs-12">
										<div class="blog">
											<div class="blog__thumb">
												<img
													src="<c:url value='http://localhost:8181/banzzackimg/reivew/${list2[i].REVIEW_IMG}'/>"
													alt="blog images">
											</div>
											<div class="blog__details">
												<div class="bl__date">
													<span>${list2[i].REVIEW_TIME}</span>
												</div>
												<h2>
													<a href="#">${list2[i].REVIEW_TITLE}</a>
												</h2>
												<p>${list2[i].REVIEW_CONTENTS}</p>
											</div>
										</div>
									</div>
									<!-- End Single Blog -->
								</c:forEach>
							</c:otherwise>
						</c:choose>


					</div>
				</div>
			</div>
		</section>
		<!-- Start Product Area -->
		<section class="htc__product__area--2 pb--100 product-details-res">
			<div class="container" style="padding-top: 20px">
				<div class="row">
					<div class="col-xs-12">
						<div class="section__title--2 text-center">
							<h2 class="title__line">추천 상품</h2>
							<p>추천 상품을 확인하고 예쁜 악세서리 구매하세요!</p>
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
										<a href="productDetail.do?PRODUCT_NUM=${list[i].PRODUCT_NUM}">
											<img
											src="<c:url value='http://localhost:8181/banzzackimg/product/${list[i].PRODUCT_IMG1}'/>"
											alt="product images">
										</a>
									</div>
									<div class="fr__hover__info">
										<ul class="product__action">
											<li><a
												href="productDetail.do?PRODUCT_NUM=${list[i].PRODUCT_NUM}"><i
													class="icon-handbag icons"></i></a></li>
										</ul>
									</div>
									<div class="fr__product__inner">
										<h4>
											<a href="productDetail.do?PRODUCT_NUM=${list[i].PRODUCT_NUM}">${list[i].PRODUCT_TITLE}</a>
										</h4>
										<ul class="fr__pro__prize">
											<li>${list[i].PRODUCT_RPICE}원</li>
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