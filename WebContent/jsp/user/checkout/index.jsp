<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>
<body>
	<%@ include file="../navigation.jsp" %>
<!-- END nav -->

<% if(cartSession.getCart().size() > 0) {%>
    <section class="ftco-section ftco-cart">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="cart-list">
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
						        <th>&nbsp;</th>
						        <th>&nbsp;</th>
						        <th>Tên sách</th>
						        <th>Giá</th>
						        <th>Số lượng</th>
						        <th>Thành tiền</th>
						      </tr>
						    </thead>
						    <tbody>
						    <% for(int i = 0; i < cartSession.getCart().size(); i ++ ) {%>
						      <tr class="text-center">
						        <td class="product-remove">
						        	<a href="#" style="width : 100%;height : 100%; display: flex; justify-content:center; aglin-items: center" data-type="remove" data-id="<%= cartSession.getCart().get(i).get_id() %>" class="btn-remove">x</a>
						        </td>
						        
						        <td class="image-prod"><div class="img" style="background-image:url(./upload/images/<%= cartSession.getCart().get(i).getAvatar() %>);"></div></td>
						        
						        <td class="product-name">
						        	<h3><%= cartSession.getCart().get(i).getNameBook() %></h3>
						        </td>
						        
						        <td class="price"><%= cartSession.getCart().get(i).getPrice() %> VND</td>
						        
						        <td class="quantity">
						                <span class="btnQuantity sub"><a href="#" data-type="removeOne" data-id="<%= cartSession.getCart().get(i).get_id() %>" class="remove-one">-</a></span>
						                <span class="content"><%= cartSession.getCart().get(i).getQuantity() %></span>
						                <span class="btnQuantity plus"> <a href="#" data-id="<%= cartSession.getCart().get(i).get_id() %>" class="btn-addToCart">+</a></span>
					          </td>
						        
						        <td class="total">$4.90</td>
						      </tr>
        					<%} %>
						    </tbody>
						  </table>
					  </div>
    			</div>
    		</div>
    		
    		<div class="row justify-content-end">
    			<div class="col col-lg-3 col-md-6 mt-5 cart-wrap ftco-animate">
    				<div class="cart-total mb-3">
    					<h3>Cart Totals</h3>
    					<p class="d-flex">
    						<span>Subtotal</span>
    						<span>$20.60</span>
    					</p>
    					<p class="d-flex">
    						<span>Delivery</span>
    						<span>$0.00</span>
    					</p>
    					<p class="d-flex">
    						<span>Discount</span>
    						<span>$3.00</span>
    					</p>
    					<hr>
    					<p class="d-flex total-price">
    						<span>Total</span>
    						<span>$17.60</span>
    					</p>
    				</div>
    				<p class="text-center"><a href="checkout.html" class="btn btn-primary py-3 px-4">Proceed to Checkout</a></p>
    			</div>
    		</div>
			</div>
		</section>
      <%}else{%>
      	 <section class="ftco-section ftco-cart container"><h2>Không có sản phẩm</h2></section>
      <%}%>
<%@ include file="../footer.jsp" %>