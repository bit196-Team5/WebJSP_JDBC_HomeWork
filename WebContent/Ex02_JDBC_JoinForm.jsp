<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>오조라고 : 회원가입</title>
	
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<script type="text/javascript">
	//jquery 로 간단하게 유효성 check 하기
	$(function() {
		$('#joinForm').submit(function() {
			//alert("가입");
			if ($('#id').val() == "") { //아이디 검사
				alert('ID를 입력해 주세요.');
				$('#id').focus();
				$('#id').addClass('has-danger');
				return false;
			} else if ($('#pwd').val() == "") { //비밀번호 검사
				alert('PWD를 입력해 주세요.');
				$('#pwd').focus();
				return false;
			} else if ($('#mname').val() == "") { //이름 검사
				alert('mname를 입력해 주세요.');
				$('#mname').focus();
				return false;
			} else if ($('#age').val() == "") { //나이 검사
				alert('age를 입력해 주세요.');
				$('#age').focus();
				return false;
			} else if ($('#email').val() == "") { //우편번호
				alert('email를 입력해 주세요.');
				$('#email').focus();
				return false;
			}

		});
	});
</script>
<!--  
CREATE TABLE koreaMember
(
    id VARCHAR2(50) PRIMARY KEY ,
    pwd VARCHAR2(50) NOT NULL,
    NAME VARCHAR2(50) NOT NULL,
    age NUMBER ,
    gender CHAR(4),
    email VARCHAR2(50),
    ip   VARCHAR2(50)
)
-->

</head>
<body>
	<header class="header-global">
		<jsp:include page="/common/Top.jsp"></jsp:include>
	</header>
	<main>
	<!--  
        <div class="preloader bg-dark flex-column justify-content-center align-items-center">
    <svg id="loader-logo" xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 64 78.4">
        <path fill="#fff" d="M10,0h1.2V11.2H0V10A10,10,0,0,1,10,0Z"/>
        <rect fill="none" stroke="#fff" stroke-width="11.2" x="40" y="17.6" width="0" height="25.6"/>
        <rect fill="none" stroke="#fff" stroke-opacity="0.4" stroke-width="11.2" x="23" y="35.2" width="0" height="25.6"/>
        <path fill="#fff" d="M52.8,35.2H64V53.8a7,7,0,0,1-7,7H52.8V35.2Z"/>
        <rect fill="none" stroke="#fff" stroke-width="11.2" x="6" y="52.8" width="0" height="25.6"/>
        <path fill="#fff" d="M52.8,0H57a7,7,0,0,1,7,7h0v4.2H52.8V0Z"/>
        <rect fill="none" stroke="#fff" stroke-opacity="0.4" stroke-width="11.2" x="57.8" y="17.6" width="0" height="11.2"/>
        <rect fill="none" stroke="#fff" stroke-width="11.2" x="6" y="35.2" width="0" height="11.2"/>
        <rect fill="none" stroke="#fff" stroke-width="11.2" x="40.2" y="49.6" width="0" height="11.2"/>
        <path fill="#fff" d="M17.6,67.2H28.8v1.2a10,10,0,0,1-10,10H17.6V67.2Z"/>
        <rect fill="none" stroke="#fff" stroke-opacity="0.4" stroke-width="28.8" x="31.6" width="0" height="11.2"/>
        <rect fill="none" stroke="#fff" x="14" stroke-width="28.8" y="17.6" width="0" height="11.2"/>
    </svg>
</div>
-->
        <!-- Section -->
        <section class="min-vh-150 d-flex align-items-center bg-soft">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 d-flex align-items-center justify-content-center">
                        <div class="signin-inner mt-3 mt-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-500">
                            <div class="text-center text-md-center mb-4 mt-md-0">
                                <h1 class="mb-0 h3">Create an account</h1>
                            </div>
                            <form action="Ex02_JDBC_JoinOK.jsp" method="post" name="joinForm" id="joinForm">
                                <!-- Form -->
                                <div class="form-group">
                                    <label for="exampleInputIcon4">Your ID</label>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fas fa-user-circle"></span></span>
                                        </div>
                                        <input class="form-control" id="id" name="id" placeholder="ID" type="text" aria-label="id" required>
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
                                            <input class="form-control" id="pwd" name="pwd" placeholder="Password" type="password" aria-label="Password" required>
                                        </div>
                                    </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
	                                <div class="form-group">
	                                    <label for="exampleInputIcon4">Your Name</label>
	                                    <div class="input-group mb-4">
	                                        <div class="input-group-prepend">
	                                            <span class="input-group-text"><span class="fas fa-smile"></span></span>
	                                        </div>
	                                        <input class="form-control" id="mname" name="mname" placeholder="Name" type="text" aria-label="mname" required>
	                                    </div>
	                                </div>
	                                <!-- End of Form -->
	                                <!-- Form -->
	                                <div class="form-group">
	                                    <label for="exampleInputIcon4">Your Age</label>
	                                    <div class="input-group mb-4">
	                                        <div class="input-group-prepend">
	                                            <span class="input-group-text"><span class="fas fa-heart"></span></span>
	                                        </div>
	                                        <input class="form-control" id="age" name="age" placeholder="Age" type="text" maxlength="3" aria-label="age" required>
	                                    </div>
	                                </div>
	                                <!-- End of Form -->
	                                <!-- Form -->
	                                <div class="form-group">
	                                    <label for="exampleInputIcon4">Your Gender</label>
	                                    <div class="input-group mb-4">
	                                        <div class="form-check">
		                                        <input name="gender" id="gender1" class="form-check-input" type="radio" value="여" checked>
										        <label class="form-check-label" for="gender1">
										            여자
										        </label>
									        </div>
									        <div class="form-check">
										        <input name="gender" id="gender2" class="form-check-input" type="radio" value="남">
										        <label class="form-check-label" for="gender2">
										            남자
										        </label>
									        </div>
	                                    </div>
	                                </div>
	                                <!-- End of Form -->
									<!-- Form -->
	                                <div class="form-group">
	                                    <label for="exampleInputIcon4">Your Email</label>
	                                    <div class="input-group mb-4">
	                                        <div class="input-group-prepend">
	                                            <span class="input-group-text"><span class="fas fa-envelope"></span></span>
	                                        </div>
	                                        <input class="form-control" name="email" id="email" placeholder="Email" type="text" aria-label="email" required>
	                                    </div>
	                                </div>
	                                <!-- End of Form -->
	                                <!-- 약관동의 
                                    <div class="form-check mb-4">
                                        <input class="form-check-input" type="checkbox" value="" id="defaultCheck6">
                                        <label class="form-check-label" for="defaultCheck6">
                                            I agree to the <a href="#">terms and conditions</a>
                                        </label>
                                    </div>
                                    -->
                                </div>
                                <button type="submit" class="btn btn-block btn-primary">Sign in</button>
                            </form>
                            <!-- SNS 회원가입 
                            <div class="mt-3 mb-4 text-center">
                                <span class="font-weight-normal">or</span>
                            </div>
                            <div class="btn-wrapper my-4 text-center">
                                <button class="btn btn-icon-only btn-pill btn-outline-light text-facebook mr-2" type="button" aria-label="facebook button" title="facebook button">
                                    <span aria-hidden="true" class="fab fa-facebook-f"></span>
                                </button>
                                <button class="btn btn-icon-only btn-pill btn-outline-light text-twitter mr-2" type="button" aria-label="twitter button" title="twitter button">
                                    <span aria-hidden="true" class="fab fa-twitter"></span>
                                </button>
                                <button class="btn btn-icon-only btn-pill btn-outline-light text-facebook" type="button" aria-label="github button" title="github button">
                                    <span aria-hidden="true" class="fab fa-github"></span>
                                </button>
                            </div>
                            -->
                            <div class="d-block d-sm-flex justify-content-center align-items-center mt-4">
                                <span class="font-weight-normal">
                                    Already have an account?
                                    <a href="Ex02_JDBC_Login.jsp" class="font-weight-bold">Login here</a>
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
	<script src="./vendor/jquery/dist/jquery.min.js"></script>
	<script src="./vendor/popper.js/dist/umd/popper.min.js"></script>
	<script src="./vendor/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="./vendor/headroom.js/dist/headroom.min.js"></script>
	
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
</html>