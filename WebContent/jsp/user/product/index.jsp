<%@page import="Model.Book"%>
<%@page import="java.util.List"%>
<%@page import="Model.Category"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>
  <body class="page-product">
	<%@ include file="../navigation.jsp" %>
	<!-- END nav -->
	<%  List<Category> listCategory = (List<Category>)  request.getAttribute("listCategory"); %>
	<%  List<Book> listAllBook = (List<Book>)  request.getAttribute("listAllBook"); %>
	<% String typepage = (String) request.getAttribute("typepage"); %>
	<% String totalPagination = (String) request.getAttribute("totalPagination"); %>
    <section class="ftco-menu my-5 pb-5">
    	<div class="container">
    		<div class="row d-md-flex">
				<div class="col-3 sidebar">
					<h4>PHÂN LOẠI</h4>
					<ul style="list-style: none; padding: 0;">
						<li>
							<a href="product">Tất cả</a>
						</li> 
					<% if(listCategory.size() > 0){ %>
						<% for(int i = 0; i < listCategory.size(); i++) {%>
							<li>
								<a href="product?category=<%= listCategory.get(i).getSlug() %>"><%= listCategory.get(i).getName() %></a>
							</li> 
						<%} %>
					<%} else{ %>
						Không có chuyên mục
					<%} %>
					</ul>
				</div>
	    		<div class="col-9 ftco-animate">
		    		<div class="row">
				          <div class="col-md-12 d-flex align-items-center">
				              	<div class="row">
				              	
				              		<div  class="row" id="wrap-render-product">
					              		<% if(listAllBook.size() > 0){ %>
											<% for(int i = 0; i < listAllBook.size(); i++) {%>
												<div class="col-md-4">
									        		<div class="menu-entry">
									    					<a href="product?id=<%= listAllBook.get(i).get_id() %>" class="img" style="background-image: url(./upload/images/<%= listAllBook.get(i).getAvatar()%>); background-size: 190px 190px " ></a>
									    					<div class="text text-center pt-4">
									    						<h3><a href="product-single.html"><%= listAllBook.get(i).getNameBook()%></a></h3>
									    						<p class="des-book"><%= listAllBook.get(i).getDescription()%></p>
									    						<p class="price"><span><%= listAllBook.get(i).getPrice()%> VND</span></p>
									    						<p><a href="cart.html" data-id="<%= listAllBook.get(i).get_id() %>" class="btn-addToCart btn btn-primary btn-outline-primary">Add to Cart</a></p>
									    					</div>
									    				</div>
												</div>
											<%} %>
										<%} else{ %>
											Không có sản phẩm
										<%} %>
				              		</div>
				              		
								  <!-- pagination -->
								  <% if(totalPagination != null) { %>
								  <% int total_page = Integer.parseInt(totalPagination); %>
									   <div class="row mt-5" style="margin : 0 auto">
											<div class="col text-center">
											  <div class="block-27">
												<ul id="wrap-pagination">
													<% for(int i = 0; i < total_page; i ++ ){ %>
														<% if(i == 0){ %>
															<li class="li_item active"><a href="#" data-indexcurrent="0" class="btn-load-more"  data-typepage="<%= typepage  %>" >1</a></li>
														<%}else{%>
														 	<li class="li_item"><a href="#" data-indexcurrent="<%= i*6 %>" class="btn-load-more"  data-typepage="<%= typepage  %>" ><%= i +1 %></a></li>
														<%}%>
													<%} %>
												</ul>
											  </div>
											</div>
										  </div>
								  <% } %>
								 <!--  end pagination  -->
				              </div>
		        	</div>
		      </div>
		    </div>
    	</div>
    </section>

<%@ include file="../footer.jsp" %>