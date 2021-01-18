<%@page import="Model.Book"%>
<%@page import="java.util.List"%>
<%@page import="Model.Category"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>
 <body>
<%@ include file="../navigation.jsp" %>
	
		<% Book bookDetails = (Book) request.getAttribute("bookDetails"); %>
	   <section class="ftco-section mt-5">
    	<div class="container">
    	<%if(bookDetails != null){ %>
    		<div class="row">
    			<div class="col-lg-6 mb-5 ftco-animate">
    				<a href="images/menu-2.jpg" class="image-popup"><img src="./upload/images/<%= bookDetails.getAvatar() %>" class="img-fluid" alt="Colorlib Template"></a>
    			</div>
    			<div class="col-lg-6 product-details pl-md-5 ftco-animate">
    				<h3><%= bookDetails.getNameBook() %></h3>
    				<p class="price"><span><%= bookDetails.getPrice() %> VND</span></p>
    				<p><%= bookDetails.getDescription() %></p>
						<div class="row mt-4">
							<div class="col-md-6">
								<div class="form-group d-flex">
		              <div class="select-wrap">
	                </div>
		            </div>
							</div>
							<div class="w-100"></div>
							<div class="input-group col-md-6 d-flex mb-3">
	          	</div>
          	</div>
          	<p>
          	<a href="#" data-id="<%= bookDetails.get_id() %>" class="btn-addToCart btn btn-primary py-3 px-5">Add to Cart</a>
          	</p>
    			</div>
    		</div>
    	<%} else { %>
    		<h1>Không tìm thấy sản phẩm</h1>
    	<%} %>
    	
    	</div>
    </section>
	
<%@ include file="../footer.jsp" %>