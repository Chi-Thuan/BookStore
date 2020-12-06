<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../header.jsp" %>
  <body>
  	<%@ include file="../navigation.jsp" %>
    <!-- END nav -->

    <section class="ftco-menu my-5 pb-5">
    	<div class="container">
    		<div class="row d-md-flex justify-content-center">
                <div class="wrap-form">

                    <input type="radio" name="formLoginAndRegister" id="openFormLogin" checked hidden />
                    <input type="radio" name="formLoginAndRegister" id="openFormRegister" hidden />

                    <div class="login form-item py-4 d-flex flex-column align-items-center">
                        <h4 class="title pb-3">Login</h4>
                        <form action="">
                            <input type="email" class="txt_input" name="email" placeholder="Nhập Email" required>
                            <input type="password" class="txt_input" name="password" placeholder="Nhập Password" required >
                            <input type="submit" class="btnLogin" value="Đăng nhập">
                        </form>
                        <p class="wrap-openRegister mt-3">Nếu chưa có tài khoản, vui lòng <label for="openFormRegister" class="openFormRegister">Đăng ký</label></p>
                    </div>

                    <div class="register form-item py-4 d-flex flex-column align-items-center">
                        <h4 class="title pb-3">Register</h4>
                        <form action="">
                            <div class="row d-flex align-items-center justify-content-center">
                                <span class="mr-3"><i class="fas fa-user"></i></span>
                                <input type="text" class="txt_input pl-0" name="fullName" placeholder="Nhập Tên *" required>
                                <br>
                                <span class="col-12 ml-5 mt-1 pl-5 show-error">
                                    Tên nhập quá ngắn
                                </span>
                            </div>

                            <div class="row d-flex align-items-center justify-content-center">
                                <span class="mr-3"><i class="fas fa-envelope"></i></span>
                                <input type="email" class="txt_input pl-0" name="email" placeholder="Nhập Email *" required>
                                <br>
                                <span class="col-12 ml-5 mt-1 pl-5 show-error">
                                    Sai định dạng email
                                </span>
                            </div>

                            <div class="row d-flex align-items-center justify-content-center">
                                <span class="mr-3"><i class="fas fa-phone-alt"></i></span>
                                <input type="number" class="txt_input pl-0" name="phone" placeholder="Nhập Số Điện Thoại *" required>
                                <br>
                                <span class="col-12 ml-5 mt-1 pl-5 show-error">
                                    Sai định dang số điện thoại
                                </span>
                            </div>

                            <div class="row d-flex align-items-center justify-content-center">
                                <span class="mr-3"><i class="fas fa-lock"></i></span>
                                <input type="password" class="txt_input pl-0" name="password" placeholder="Nhập Password" required >
                                <br>
                                <span class="col-12 ml-5 mt-1 pl-5 show-error">
                                    Mật khẩu kém
                                </span>
                            </div>

                            <div class="row d-flex align-items-center justify-content-center">
                                <span class="mr-3"><i class="fas fa-lock"></i></span>
                                <input type="password" class="txt_input pl-0" name="RePassword" placeholder="Nhập Lại Password" required >
                                <br>
                                <span class="col-12 ml-5 mt-1 pl-5 show-error">
                                    Mật khẩu nhập lại không khớp
                                </span>
                            </div>
                            <input type="submit" class="btnRegister" value="Đăng Ký">
                        </form>
                        <p class="wrap-openRegister mt-3">Nếu đã có tài khoản? Vui lòng <label for="openFormLogin" class="openFormRegister">Đăng nhập</label></p>
                    </div>

                </div>
		    </div>
    	</div>
    </section>
    
<%@ include file="../footer.jsp" %>