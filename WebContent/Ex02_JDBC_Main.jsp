<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>오조라고 : Main</title>
	
	<!-- Primary Meta Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="title" content="Pixel Lite - Free Bootstrap 4 UI Kit">
	<meta name="author" content="Themesberg">
	<meta name="description" content="Open source and accessibility first Bootstrap Design System featuring over 80 premium components and 4 example pages.">
	<meta name="keywords" content="bootstrap, Bootstrap Design System, accessiblity, accessibility first, open source, open source Bootstrap Design System" />
	<link rel="canonical" href="https://themesberg.com/product/ui-kits/pixel-lite-free-bootstrap-4-ui-kit">
	
	<!-- Favicon -->
	<link rel="apple-touch-icon" sizes="120x120" href="./assets/img/favicon/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="./assets/img/favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="./assets/img/favicon/favicon-16x16.png">
	<link rel="manifest" href="./assets/img/favicon/site.webmanifest">
	<link rel="mask-icon" href="./assets/img/favicon/safari-pinned-tab.svg" color="#ffffff">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="theme-color" content="#ffffff">
	
	<!-- Fontawesome -->
	<link type="text/css" href="./vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
	
	<!-- Pixel CSS -->
	<link type="text/css" href="./css/pixel.css" rel="stylesheet">

</head>
<body>

		<jsp:include page="/common/Top.jsp" />


	<main>
		<div class="preloader bg-dark flex-column justify-content-center align-items-center">
			<svg id="loader-logo" xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 64 78.4">
	        <path fill="#fff" d="M10,0h1.2V11.2H0V10A10,10,0,0,1,10,0Z" />
	        <rect fill="none" stroke="#fff" stroke-width="11.2" x="40" y="17.6" width="0" height="25.6" />
	        <rect fill="none" stroke="#fff" stroke-opacity="0.4" stroke-width="11.2" x="23" y="35.2" width="0" height="25.6" />
	        <path fill="#fff" d="M52.8,35.2H64V53.8a7,7,0,0,1-7,7H52.8V35.2Z" />
	        <rect fill="none" stroke="#fff" stroke-width="11.2" x="6" y="52.8" width="0" height="25.6" />
	        <path fill="#fff" d="M52.8,0H57a7,7,0,0,1,7,7h0v4.2H52.8V0Z" />
	        <rect fill="none" stroke="#fff" stroke-opacity="0.4" stroke-width="11.2" x="57.8" y="17.6" width="0" height="11.2" />
	        <rect fill="none" stroke="#fff" stroke-width="11.2" x="6" y="35.2" width="0" height="11.2" />
	        <rect fill="none" stroke="#fff" stroke-width="11.2" x="40.2" y="49.6" width="0" height="11.2" />
	        <path fill="#fff" d="M17.6,67.2H28.8v1.2a10,10,0,0,1-10,10H17.6V67.2Z" />
	        <rect fill="none" stroke="#fff" stroke-opacity="0.4" stroke-width="28.8" x="31.6" width="0" height="11.2" />
	        <rect fill="none" stroke="#fff" x="14" stroke-width="28.8" y="17.6" width="0" height="11.2" />
    		</svg>
		</div>
		<!-- Hero -->
		<section class="section-header bg-secondary text-white">
			<div class="container">
				<div class="row justify-content-between align-items-center">
					<div class="col-12 col-md-7 col-lg-6 text-center text-md-left">
						<h1 class="display-2 mb-4">
							<%
							String id = null;
							id = (String)session.getAttribute("userid");
							
							if(id != null){
								//회원
								out.print("<h1 class='display-2 mb-4'>" +id + "님<br class='d-none d-md-inline'>안녕하세요🥰</h1>");
								if(id.equals("admin")){
									out.print("<a href='Ex03_Memberlist.jsp' class='btn btn-tertiary mr-3 animate-up-2' id='add_main_btn'>회원관리<span class='ml-2'><span class='fas fa-arrow-right'></span></span></a>");
								}
							}else{
								//로그인 하지 않은 사용자
								//메인 페이지는 회원만 볼수 있어요 (강제 링크 추가)
								out.print("<h1 class='display-2 mb-4'>WELCOME💙<br class='d-none d-md-inline'>오조라고</h1>");
							}
						%>
						</h1>
						<p class="lead mb-4 text-muted">
							안녕하세요🙇‍♂️ 오조라고 페이지입니다.<br> 회원관리를 하고 싶으면 관리자로 로그인해주세요❗
						</p>

					</div>
					<div class="col-12 col-md-5 d-none d-md-block text-center">
						<img src="assets/img/illustrations/about-illustration.svg" alt="">
					</div>
				</div>
			</div>
			<div
				class="position-absolute bottom-0 left-0 w-100 d-none d-md-block mb-n2">
				<svg class="fill-white" version="1.1"
					xmlns="http://www.w3.org/2000/svg"
					xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
					viewBox="0 0 1920 43.4"
					style="enable-background: new 0 0 1920 43.4;" xml:space="preserve">
                  <path
						d="M0,23.3c0,0,405.1-43.5,697.6,0c316.5,1.5,108.9-2.6,480.4-14.1c0,0,139-12.2,458.7,14.3 c0,0,67.8,19.2,283.3-22.7v35.1H0V23.3z"></path>
               </svg>
			</div>
		</section>
		<!-- End of Hero section -->
		<!-- Section -->
		<section class="section section-lg">
			<div class="container">
				<div class="row align-items-center justify-content-around">
					<div class="col-md-6 col-xl-6 my-5 mt-sm-0 d-none d-sm-block">
						<img class="rounded img-fluid effect-img-1"
							src="./assets/img/sections/about-us-3.jpg"
							alt="Themesberg Office"> <img
							class="rounded img-fluid effect-img-2"
							src="./assets/img/sections/about-us-2.jpg" alt="Pixel Office">
					</div>
					<div class="col-md-6 col-xl-5 text-center text-md-left">
						<h2 class="h1 mb-5 font-weight-light">
							Small team, <br> <span class="font-weight-bold">Big
								hearts.</span>
						</h2>
						<p class="lead">Themesberg is an experienced and passionate
							group of designers, developers, project managers, writers and
							artists. Every client we work with becomes a part of the team.
							Together we face the challenges and celebrate the victories.</p>
						<p class="lead">With a culture of collaboration, a roster of
							talent, and several office pooches, the Themesberg team is active
							in the creative community, endlessly interested in what’s next,
							and generally pleasant to be around.</p>

					</div>
				</div>
			</div>
		</section>
		<!-- End of section -->
	</main>
	
	<footer class="footer pt-7 pb-6 bg-primary text-white">
		<jsp:include page="/common/Bottom.jsp" />
	</footer>
	<!-- Core -->
			<script src="./vendor/jquery/dist/jquery.min.js"></script>
			<script src="./vendor/popper.js/dist/umd/popper.min.js"></script>
			<script src="./vendor/bootstrap/dist/js/bootstrap.min.js"></script>
			<script src="./vendor/headroom.js/dist/headroom.min.js"></script>

			<!-- Vendor JS -->
			<script src="./vendor/onscreen/dist/on-screen.umd.min.js"></script>
			<script src="./vendor/nouislider/distribute/nouislider.min.js"></script>
			<script
				src="./vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
			<script
				src="./vendor/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
			<script src="./vendor/waypoints/lib/jquery.waypoints.min.js"></script>
			<script src="./vendor/jarallax/dist/jarallax.min.js"></script>
			<script
				src="./vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
			<script src="./vendor/vivus/dist/vivus.min.js"></script>

			<!-- Place this tag in your head or just before your close body tag. -->
			<script async defer src="https://buttons.github.io/buttons.js"></script>

			<!-- pixel JS -->
			<script src="./assets/js/pixel.js"></script></body>
</html>


