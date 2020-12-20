<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="userLogin" class="beans.UserLoginSession" scope="session" />
<jsp:useBean id="cartSession" class="beans.CartSession" scope="session" />

<% String menuActive = (String) request.getAttribute("menuActive"); %>

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
   <div class="container">
     <a class="navbar-brand" href="home">book<small>Store</small></a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
       <span class="oi oi-menu"></span> Menu
     </button>
     <div class="collapse navbar-collapse" id="ftco-nav">
       <ul class="navbar-nav ml-auto">
	  <li class="nav-item <% if(menuActive == "trangchu"){%>active<%}%>"><a href="home" class="nav-link">Trang chủ</a></li>
	  <li class="nav-item <% if(menuActive == "tatcasanpham"){%>active<%}%>"><a href="product" class="nav-link">Tất cả sách</a></li>
	     
	     <% if(userLogin.getIsLogin() == true) {%>
	     <li class="nav-item dropdown">
	     <a class="nav-link dropdown-toggle iconUserLogin" href="room.html" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="icon icon-user"></span></a>
	          <div class="dropdown-menu" aria-labelledby="dropdown04">
	          	<a class="dropdown-item" href="#">Tài Khoản</a>
	            <a class="dropdown-item" href="login">Đăng xuất</a>
	          </div>
	     </li>
	     <%} else { %>
	     	<li class="nav-item cart"><a href="login" class="nav-link"  <% if(menuActive == "dangnhap"){%>style="color : #c49b63"<%}%> >Đăng nhập/đăng ký</a></li>
	     <%} %>
           <li class="nav-item cart">
            <label  for="openCart" class="nav-link" style="cursor: pointer;">
                <span class="icon icon-shopping_cart"></span>
              <span class="bag d-flex justify-content-center align-items-center">
                <small id="quantitySession"><%= cartSession.getCart().size() %></small>
              </span>
            </label>
          </li>
       </ul>
     </div>
  </div>
 </nav>
 
 <%@ include file="./cart.jsp" %>