<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.or.bit.utils.Singleton_Helper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	/* 
	회원정보 수정하기
	1.DB 쿼리 : 2개 (수정정보 : select , 수정정보반영 : update)
	 1.1 : select * from koreamember where id=?
	 1.2 : update koreamember set ename=? where id=?		 
	2.화면 1개(기존에 입력내용 보여주는 것)-> 처리 1개 (수정처리)
	 2.1  DB select 한 결과 화면 출력 
	   <input type="text" value="rs.getString(id)">
	      수정안하고 .. 화면 .. 전송(x) : <td>rs.getString("id")</td>
	      수정안하고 .. 화면 .. 전송   : <input type="text" value="rs.getString(id)" readonly>
	      수정하고 ..화면  ..전송   :  <input type="text" value="rs.getString(id)">
	
	*/
	if(session.getAttribute("userid") == null || !session.getAttribute("userid").equals("admin") ){
		//강제로 페이지 이동
		out.print("<script>location.href='Ex02_JDBC_Login.jsp'</script>");
	}
	
    request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try{
		conn = Singleton_Helper.getConnection("oracle");
		String sql="select id,pwd,name,age,trim(gender),email from koreamember where id=?";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1,id);
		
		rs = pstmt.executeQuery(); 
		
		//while(rs.next())
		rs.next(); //1건 데이터가 있다면 전제조건
%>	
	
<!DOCTYPE html>
<html>
	<meta charset="UTF-8">
	<title>오조라고 : 회원수정</title>
	
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
		<jsp:include page="/common/Top.jsp"></jsp:include>
	</header>
	<main>
		<section class="min-vh-100 d-flex align-items-center bg-soft">
			<div class="container">
				<div id="title">
					<h3 class="h3">회원 정보 관리</h3>
				</div>

				<form action="Ex03_MemberEditok.jsp" method="post">
					<table class="table table-hover">
						<tbody>
							<tr>
								<td>
									<div class="d-flex align-items-center">아이디</div>
								</td>
								<td><input type="text" class="form-control" name="id"
									id="id" aria-describedby="emailHelp"
									value="<%=rs.getString(1)%>" readonly></td>
							</tr>

							<tr>
								<td>
									<div class="d-flex align-items-center">비번</div>
								</td>
								<td><%=rs.getString(2)%></td>
							</tr>

							<tr>
								<td>
									<div class="d-flex align-items-center">이름</div>
								</td>
								<td><input type="text" class="form-control" name="name"
									id="name" aria-describedby="emailHelp"
									value="<%=rs.getString(3)%>"
									style="background-color: lightgray"></td>
							</tr>

							<tr>
								<td>
									<div class="d-flex align-items-center">나이</div>
								</td>
								<td><input type="text" class="form-control" name="age"
									id="age" aria-describedby="emailHelp"
									value="<%=rs.getString(4)%>"
									style="background-color: lightgray"></td>
							</tr>

							<tr>
								<td>
									<div class="d-flex align-items-center">성별</div>
								</td>
								<td>
									<div class="form-check">
										<input class="form-check-input" type="radio"
											 name="gender" id="gender1" value="여"
											<%if (rs.getString(5).equals("여")) {%> checked <%}%>>
										<label class="form-check-label" for="gender1">
											여자 </label> <input class="form-check-input" type="radio"
											 name="gender" id="gender2" value="남"
											<%if (rs.getString(5).equals("남")) {%> checked <%}%>>
										<label class="form-check-label" for="gender2">
											남자 </label>
									</div>
								</td>
							</tr>

							<tr>
								<td>
									<div class="d-flex align-items-center">이메일</div>
								</td>
								<td><input type="text" class="form-control" name="email"
									id="email" aria-describedby="emailHelp"
									value="<%=rs.getString(6)%>"
									style="background-color: lightgray"></td>
							</tr>
						</tbody>
					</table>
					<div id="memberlist_btn">
						<input type="submit" class="btn mb-2 mr-2 btn-light" value="수정하기">
						<button class="btn mb-2 mr-2 btn-light" type="button" onclick="location.href='Ex03_Memberlist.jsp'">회원목록</button>
				  	</div>
					</form>
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
<%
	}catch(Exception e){
		
	}finally{
		Singleton_Helper.close(rs);
		Singleton_Helper.close(pstmt);
	}

%>
