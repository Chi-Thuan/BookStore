<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>
<body class="page-checkout">
	<%@ include file="../navigation.jsp" %>
<!-- END nav -->

	<section class="ftco-menu my-5 pb-5">
	 	<div class="container">
	       <div class="d-flex justify-content-center flex-column align-items-center py-5" style="margin-top: 30px;">
	         <h2 class="text-center m-0">
	           Xin chào, <span style="color: #c49b63"> <%= userLogin.getFullname() %></span>
	         </h2>
	         <a href="login" style="color: rgba(255, 255, 255, 0.7); font-size: 14px; margin-top: 5px;">Đăng xuất</a>
	       </div>
	       <hr style="background: rgba(255, 255, 255, 0.1);">
	 	</div>
	 </section>
    
<%@ include file="../footer.jsp" %>