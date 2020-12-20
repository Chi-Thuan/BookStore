<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
		                <span class="btnQuantity sub">-</span>
		                <span class="content"><%= cartSession.getCart().get(i).getQuantity() %></span>
		                <span class="btnQuantity plus">+</span>
		              </div>
		              <div class="remove" >
		                x
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
    