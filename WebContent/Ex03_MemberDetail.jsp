<%@page import="kr.or.bit.utils.Singleton_Helper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
/*  
	회원 상세 페이지 (id 컬럼 PK)
	1.권한 검사
	2.id 값 받기 (request.getparameter("id")) >> 한글처리
	3.select id,pwd,name,age,gender,email from koreamember where id=?
	4.id primary key (데이터 1건 보장)
	5.화면 출력 UI 구성
*/	
/*  
1.관리자만 접근 가능한 페이지
2.로그인한 일반 회원이 주소값을 외워서 ... 접근불가 
3.그러면  회원에 관련되 모든 페이지 상단에는 아래 코드를 ..... : sessionCheck.jsp >> include 
*/
	if(session.getAttribute("userid") == null || !session.getAttribute("userid").equals("admin") ){
		//강제로 페이지 이동
		out.print("<script>location.href='Ex02_JDBC_Login.jsp'</script>");
	}

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>오조라고 : 회원정보</title>
	
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
		<%-- <tr>
			<td style="width: 200px">
				<jsp:include page="/common/Left.jsp"></jsp:include>
			</td>
			<td style="width: 700px"> --%>
				<!--  
				회원리스트 출력
				<table style="width: 400px;height: 100px;margin-left: auto;margin-right: auto">
				</table>
				-->
				<%
				  		String id = request.getParameter("id");
				  
				  		Connection conn = null;
				  		PreparedStatement pstmt = null;
				  		ResultSet rs = null;
				  		
				  		try{
				  			conn = Singleton_Helper.getConnection("oracle");
				  			String sql = "select id,pwd,name,age,gender,email from koreamember where id=?";
				  			pstmt = conn.prepareStatement(sql);
				  			
				  			pstmt.setString(1, id);
				  			
				  			rs = pstmt.executeQuery();
				  			//rs.next(); 추후에 데이터 1건 경우  (while 없이 )
				  			while(rs.next()){
				  %>
				  			 <div id="title">
				  			 	<h3 class="h3">회원 정보 관리</h3>
				  			 </div>
				  			 
				  			 <table class="table table-hover">
							    <tbody>
							        <tr>
							            <td>
							                <div class="d-flex align-items-center">
							                    	아이디
							                </div>
							            </td>
							            <td><%= rs.getString("id") %></td>
							        </tr>
							        <tr>
							            <td>
							                <div class="d-flex align-items-center">
							                    	비밀번호
							                </div>
							            </td>
							            <td><%= rs.getString("pwd") %></td>
							        </tr>
							        <tr>
							            <td>
							                <div class="d-flex align-items-center">
							                    	이름
							                </div>
							            </td>
							            <td><%= rs.getString("name") %></td>
							        </tr>
							        <tr>
							            <td>
							                <div class="d-flex align-items-center">
							                    	나이
							                </div>
							            </td>
							            <td><%= rs.getString("age") %></td>
							        </tr>
							        <tr>
							            <td>
							                <div class="d-flex align-items-center">
							                    	성별
							                </div>
							            </td>
							            <td><%= rs.getString("gender") %></td>
							        </tr>
							        <tr>
							            <td>
							                <div class="d-flex align-items-center">
							                    	이메일
							                </div>
							            </td>
							            <td><%= rs.getString("email") %></td>
							        </tr>
							    </tbody>
				  			 </table>
				  			 <div id="memberlist_btn">
				  			 	<button class="btn mb-2 mr-2 btn-light" type="button" onclick="location.href='Ex03_Memberlist.jsp'">회원목록</button>
				  			 	<button class="btn mb-2 mr-2 btn-primary" type="button" onclick="location.href='Ex03_MemberEdit.jsp?id=<%=rs.getString("id")%>'">수정하기</button>
				  			 </div>
				  			 	
				  <%				
				  			}
				 
				  		}catch(Exception e){
				  			
				  		}finally{
				  			Singleton_Helper.close(rs);
				  			Singleton_Helper.close(pstmt);
				  		}
				  
				  %>
			<!-- /td>
		</tr> -->
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
</body>
</html>