<%@page import="kr.or.bit.utils.Singleton_Helper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("userid") == null || !session.getAttribute("userid").equals("admin") ){
		//강제로 페이지 이동
		out.print("<script>location.href='Ex02_JDBC_Login.jsp'</script>");
	}
    
	request.setCharacterEncoding("UTF-8");

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>오조라고 : 회원검색</title>
	
	<!-- Primary Meta Tags -->
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="title" content="Pixel Lite - Free Bootstrap 4 UI Kit">
	<meta name="author" content="Themesberg">
	<meta name="description"
		content="Open source and accessibility first Bootstrap Design System featuring over 80 premium components and 4 example pages.">
	<meta name="keywords"
		content="bootstrap, Bootstrap Design System, accessiblity, accessibility first, open source, open source Bootstrap Design System" />
	<link rel="canonical"
		href="https://themesberg.com/product/ui-kits/pixel-lite-free-bootstrap-4-ui-kit">
	
	<!-- Favicon -->
	<link rel="apple-touch-icon" sizes="120x120"
		href="./assets/img/favicon/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32"
		href="./assets/img/favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16"
		href="./assets/img/favicon/favicon-16x16.png">
	<link rel="manifest" href="./assets/img/favicon/site.webmanifest">
	<link rel="mask-icon" href="./assets/img/favicon/safari-pinned-tab.svg"
		color="#ffffff">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="theme-color" content="#ffffff">
	
	<!-- Fontawesome -->
	<link type="text/css"
		href="./vendor/@fortawesome/fontawesome-free/css/all.min.css"
		rel="stylesheet">
	
	<!-- Pixel CSS -->
	<link type="text/css" href="./css/pixel.css" rel="stylesheet">
</head>
<body>

	<%
	/*  
	 1.관리자만 접근 가능한 페이지
	 2.로그인한 일반 회원이 주소값을 외워서 ... 접근불가 
	 3.그러면  회원에 관련되 모든 페이지 상단에는 아래 코드를 ..... : sessionCheck.jsp >> include 
	*/
	 if(session.getAttribute("userid") == null || !session.getAttribute("userid").equals("admin") ){
		//강제로 페이지 이동
		//out.print("<script>location.href='Ex02_JDBC_Login.jsp'</script>");
		response.sendRedirect("Ex02_JDBC_Login.jsp");
	} 
	%>
	<header class="header-global">
		<jsp:include page="/common/Top.jsp"></jsp:include>
	</header>
	<main>
		<section class="section section-lg">
			<div class="container">
		<!--  
				데이터 받아서 UI 구성
			-->
		<%
                    String name=request.getParameter("search");	
                
                    Connection conn = null;
                    PreparedStatement pstmt = null;
                    ResultSet rs = null;
                    try{
                    //where ename like '%길동%'
                    conn = Singleton_Helper.getConnection("oracle");
                    String sql="select count(*) from koreamember where name like ?";
                    String sql2 ="select id, name, email from koreamember where name like '%"+name+"%'";
                    
                    pstmt = conn.prepareStatement(sql);
                    pstmt.setString(1, '%'+name+'%');
                    rs= pstmt.executeQuery();
                    int rowcount=0;
                    if(rs.next()){
                        rowcount = rs.getInt(1); //조회건수
                    } 
				%>

		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">#회원 ID</th>
					<th scope="col">#회원 이름</th>
					<th scope="col">#회원 email</th>

				</tr>
			</thead>
			<tbody>
				<%
					if(rowcount > 0){
						pstmt = conn.prepareStatement(sql2); 
                        rs = pstmt.executeQuery();
                        while(rs.next()){
                        	String id = rs.getString(1);
                            String mname = rs.getString(2);
                            String email = rs.getString(3);
                %>
				<tr>
					<div class="d-flex align-items-center">
						<td><%=id%></td>
					</div>
					<div class="d-flex align-items-center">
						<td><%=mname%></td>
					</div>
					<div class="d-flex align-items-center">
						<td><%=email%></td>
					</div>	
				</tr>
				<%			
						} //end while
						out.print("<tr><td colspan='3'>");
						out.print("<b>'" + name + "' 검색 결과 : " + rowcount + "건 조회</b>");
						out.print("</td></tr>");	
					}else{ //조회된 건수가 없는 경우
						out.print("<tr><td colspan='3'>");
						out.print("<b>'" + name + "' 검색 결과가 없습니다</b>");
						out.print("</td></tr>");	
					}
				%>
			
		</table>
		<div class="container text-center">
			<button onclick="location.href='Ex03_Memberlist.jsp'" class="btn btn-outline-primary fa-2x">회원 목록 페이지</button >
		</div>
		<%
			Singleton_Helper.close(rs);
			Singleton_Helper.close(pstmt);
        %>
		</td>
		</tr>
		</div>
		<%	
			}catch(Exception e){
						
			}finally{
				Singleton_Helper.close(rs);
				Singleton_Helper.close(pstmt);
			}
		%>
		</tbody>
		</table>
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