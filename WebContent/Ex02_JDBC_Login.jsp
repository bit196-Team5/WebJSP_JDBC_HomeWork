<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>오조라고 : Login</title>
	
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
	<header class="header-global">
		<jsp:include page="/common/Top.jsp" />
	</header>
	<main>

        <!-- Section -->
        <section class="min-vh-100 d-flex align-items-center bg-soft">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 d-flex align-items-center justify-content-center">
                        <div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-500">
                            <div class="text-center text-md-center mb-4 mt-md-0">
                                <h1 class="mb-0 h3">로그인</h1>
                            </div>
                            <form action="Ex02_JDBC_loginok.jsp" method="post" name="loginForm" id="joinForm" class="mt-4">
                                <!-- Form -->
                                <div class="form-group">
                                    <label for="exampleInputIcon3">ID</label>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                                        </div>
                                        <input class="form-control" name="id" id="id" placeholder="아이디" type="text" aria-label="email adress" required>
                                    </div>
                                </div>
                                <!-- End of Form -->
                                <div class="form-group">
                                    <!-- Form -->
                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                            </div>
                                            <input class="form-control" name="pwd" id="pwd" placeholder="비밀번호" type="password" aria-label="Password" required>
                                        </div>
                                    </div>
                                    <!-- End of Form 
                                    <div class="d-flex justify-content-between align-items-center mb-4">
                                        <div class="form-check m-0">
                                            <input class="form-check-input" type="checkbox" value="" id="defaultCheck5">
                                            <label class="form-check-label" for="defaultCheck5">
                                              Remember me
                                            </label>
                                        </div>
                                        <div><a href="#" class="small text-right">Lost password?</a></div>
                                    </div>
                                    -->
                                </div>
                                <button type="submit" class="btn btn-block btn-primary">LOGIN</button>
                            </form>
                            <!-- SNS 로그인 
                            <div class="mt-3 mb-4 text-center">
                                <span class="font-weight-normal">or login with</span>
                            </div>
                            <div class="btn-wrapper my-4 text-center">
                                <button class="btn btn-icon-only btn-pill btn-outline-light text-facebook mr-2" type="button" aria-label="facebook button" title="facebook button">
                                    <span aria-hidden="true" class="fab fa-facebook-f"></span>
                                </button>
                                <button class="btn btn-icon-only btn-pill btn-outline-light text-twitter mr-2" type="button" aria-label="twitter button" title="twitter button">
                                    <span aria-hidden="true" class="fab fa-twitter"></span>
                                </button>
                                <button class="btn btn-icon-only btn-pill btn-outline-light text-github" type="button" aria-label="github button" title="github button">
                                    <span aria-hidden="true" class="fab fa-github"></span>
                                </button>
                            </div>
                            -->
                            <div class="d-block d-sm-flex justify-content-center align-items-center mt-4">
                                <span class="font-weight-normal">
                                    Not registered?
                                    <a href="Ex02_JDBC_JoinForm.jsp" class="font-weight-bold">Create account</a>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
	<footer class="footer pt-7 pb-6 bg-primary text-white">
		<jsp:include page="/common/Bottom.jsp" />
	</footer>

	<!-- Core -->
	<script src="/vendor/jquery/dist/jquery.min.js"></script>
	<script src="/vendor/popper.js/dist/umd/popper.min.js"></script>
	<script src="/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="/vendor/headroom.js/dist/headroom.min.js"></script>
	
	<!-- Vendor JS -->
	<script src="./vendor/onscreen/dist/on-screen.umd.min.js"></script>
	<script src="./vendor/nouislider/distribute/nouislider.min.js"></script>
	<script src="./vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<script src="./vendor/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
	<script src="./vendor/waypoints/lib/jquery.waypoints.min.js"></script>
	<script src="./vendor/jarallax/dist/jarallax.min.js"></script>
	<script src="./vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
	<script src="./vendor/vivus/dist/vivus.min.js"></script>
	
	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	
	<!-- pixel JS -->
	<script src="./assets/js/pixel.js"></script>

</body>
</html>
