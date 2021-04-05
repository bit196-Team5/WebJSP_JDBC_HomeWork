<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav id="navbar-main" aria-label="Primary navigation" class="navbar navbar-main navbar-expand-lg navbar-theme-primary headroom navbar-dark">
	<div class="container position-relative">
		<a class="navbar-brand mr-lg-5" href="Ex02_JDBC_Main.jsp"> 
			<img class="navbar-brand-dark" src="./assets/img/brand/light.svg" alt="Pixel logo"> 
			<img class="navbar-brand-light" src="./assets/img/brand/dark.svg" alt="Pixel Logo Dark">
		</a>
		<div class="navbar-collapse collapse" id="navbar-default-primary">
			<div class="navbar-collapse-header">
				<div class="row">
					<div class="col-6 collapse-brand">
						<a href="#"> <img src="./assets/img/brand/dark.svg" alt="Pixel logo">
						</a>
					</div>
					<div class="col-6 collapse-close">
						<span class="fas fa-times" data-toggle="collapse" role="button"
							data-target="#navbar-default-primary" aria-controls="navbar-default-primary"
							aria-expanded="false" aria-label="Toggle navigation"></span>
					</div>
				</div>
			</div>
			<ul class="navbar-nav navbar-nav-hover align-items-lg-center">
				<li class="nav-item">
					<a href="Ex02_JDBC_Login.jsp" class="nav-link">
						<span class="nav-link-inner-text">Login</span>
					</a>
				</li>
				<li class="nav-item">
					<a href="Ex02_JDBC_JoinForm.jsp" class="nav-link"> 
						<span class="nav-link-inner-text">Register</span>
					</a>
				</li>
				<li class="nav-item">
					<a href="Ex02_JDBC_JoinForm.jsp" class="nav-link"> 
						<span class="nav-link-inner-text">Intro</span>
					</a>
				</li>
				<li class="nav-item">
					<a href="Ex02_JDBC_JoinForm.jsp" class="nav-link"> 
						<span class="nav-link-inner-text">Intro</span>
					</a>
				</li>
			</ul>
		</div>
		<div class="d-flex align-items-center">
                <span class="d-none d-md-inline">
                <%
				if(session.getAttribute("userid") != null){
					out.print("<b id='add_main_id'>" + session.getAttribute("userid") +"</b>");
					out.print("<a href='Ex02_JDBC_Logout.jsp' class='btn btn-outline-soft ml-md-3 animate-up-2'>LOGOUT</a>");
					//out.print("<a href='Ex02_JDBC_Logout.jsp'>[ 로그아웃 ]</a>");
				}else{
					//out.print("<b>[로그인 하지 않으셨네요]</b>");
					out.print("<a href='Ex02_JDBC_Login.jsp' class='btn btn-tertiary animate-up-2'>LOGIN</a>");
					//out.print("<a href='Ex02_JDBC_Login.jsp'>[ 로그인 ]</a>");
				}
				%> 
				</span>

				<button class="navbar-toggler ml-2" type="button" data-toggle="collapse" data-target="#navbar-default-primary" aria-controls="navbar-default-primary" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
		</div>
	</div>
</nav>