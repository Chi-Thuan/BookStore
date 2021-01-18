<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<input type="checkbox" id="open_popup_thongBao" hidden style="z-index: 1000000;position: fixed;" >
	<label for="open_popup_thongBao" class="overlay-popup"></label>
	<div class="wrap-popup_thongBao">
		<div class="popup_thongBao p-5">
			<h2 class="text-center">Bạn cần đăng nhập để thực hiện thao tác này!</h2>
			<div class="d-flex justify-content-center mt-5 about-author">
				<label for="open_popup_thongBao" class="btn btn-white btn-outline-white m-0">Tiếp tục xem</label>
				<a href="login" class="btn btn-primary btn-outline-primary ml-3">Đăng nhập ngay</a>
			</div>
		</div>
	</div>

     <input type="checkbox" id="openCart" hidden>
    <label for="openCart" class="overlay"></label>
    <div class="wrap-cart" >
      <div class="cart">
        <label for="openCart" class="close-cart">x</label>
        <h4>Giỏ hàng</h4>
        <div class="content-cart">
     
        <% if(cartSession.getCart().size() > 0) {%>
        	<% for(int i = 0; i < cartSession.getCart().size(); i ++ ) {%>
        	   <!-- start card -->
        		  <div class="cart-item">
		            <div class="avatar-cart">
		              <img src="./upload/images/<%= cartSession.getCart().get(i).getAvatar() %>" alt="">
		            </div>
		            <div class="cart-item-content">
		              <div class="name"><%= cartSession.getCart().get(i).getNameBook() %> <p class="price-cart"><%= cartSession.getCart().get(i).getPrice() %> VND</p> </div>
		              <div class="quantity">
		                <span class="btnQuantity sub"><a href="#" data-type="removeOne" data-id="<%= cartSession.getCart().get(i).get_id() %>" class="remove-one">-</a></span>
		                <span class="content"><%= cartSession.getCart().get(i).getQuantity() %></span>
		                <span class="btnQuantity plus"> <a href="#" data-id="<%= cartSession.getCart().get(i).get_id() %>" class="btn-addToCart">+</a></span>
		                             
		              </div>
		              <div class="remove" >
		                 <a href="#" style="width : 100%;height : 100%; display: flex; justify-content:center; aglin-items: center" data-type="remove" data-id="<%= cartSession.getCart().get(i).get_id() %>" class="btn-remove">x</a>
		              </div>
		            </div>
		          </div>
		       <!-- end card -->
        	<%} %>
        <%}%>
        </div>
        <div class="btnThanhToan">
          Thanh Toán
        </div>
      </div>
    </div>
    