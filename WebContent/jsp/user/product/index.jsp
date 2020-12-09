<%@page import="java.util.List"%>
<%@page import="Model.Category"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>
  <body>
	<%@ include file="../navigation.jsp" %>
	<!-- END nav -->
	<%  List<Category> listCategory = (List<Category>)  request.getAttribute("listCategory"); %>
    <section class="ftco-menu my-5 pb-5">
    	<div class="container">
    		<div class="row d-md-flex">
				<div class="col-3 sidebar">
					<h4>PHÂN LOẠI</h4>
					<ul style="list-style: none; padding: 0;">
					<% if(listCategory.size() > 0){ %>
						<% for(int i = 0; i < listCategory.size(); i++) {%>
							<li>
								<a href="<%= listCategory.get(i).getSlug() %>"><%= listCategory.get(i).getName() %></a>
							</li> 
						<%} %>
					<%} else{ %>
						Không có chuyên mục
					<%} %>
					</ul>
				</div>
	    		<div class="col-9 ftco-animate">
		    		<div class="row">
		          <div class="col-md-12 nav-link-wrap mb-5">
		            <div class="nav ftco-animate nav-pills justify-content-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
		            	<a class="nav-link active" id="v-pills-0-tab" data-toggle="pill" href="#v-pills-0" role="tab" aria-controls="v-pills-0" aria-selected="true">Coffee</a>

		              <a class="nav-link" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="false">Main Dish</a>

		              <a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Drinks</a>

		              <a class="nav-link" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false">Desserts</a>
		            </div>
		          </div>
		          <div class="col-md-12 d-flex align-items-center">
		            
		            <div class="tab-content ftco-animate" id="v-pills-tabContent">

		              <div class="tab-pane fade show active" id="v-pills-0" role="tabpanel" aria-labelledby="v-pills-0-tab">
		              	<div class="row">
		              		<div class="col-md-4">
						        		<div class="menu-entry">
						    					<a href="#" class="img" style="background-image: url(images/menu-1.jpg);"></a>
						    					<div class="text text-center pt-4">
						    						<h3><a href="product-single.html">Coffee Capuccino</a></h3>
						    						<p>A small river named Duden flows by their place and supplies</p>
						    						<p class="price"><span>$5.90</span></p>
						    						<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to Cart</a></p>
						    					</div>
						    				</div>
							</div>
							<div class="col-md-4">
								<div class="menu-entry">
										<a href="#" class="img" style="background-image: url(images/menu-2.jpg);"></a>
										<div class="text text-center pt-4">
											<h3><a href="product-single.html">Coffee Capuccino</a></h3>
											<p>A small river named Duden flows by their place and supplies</p>
											<p class="price"><span>$5.90</span></p>
											<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to Cart</a></p>
										</div>
									</div>
							</div>
							<div class="col-md-4">
								<div class="menu-entry">
										<a href="#" class="img" style="background-image: url(images/menu-3.jpg);"></a>
										<div class="text text-center pt-4">
											<h3><a href="product-single.html">Coffee Capuccino</a></h3>
											<p>A small river named Duden flows by their place and supplies</p>
											<p class="price"><span>$5.90</span></p>
											<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to Cart</a></p>
										</div>
									</div>
							</div>
							<div class="col-md-4">
								<div class="menu-entry">
										<a href="#" class="img" style="background-image: url(images/menu-4.jpg);"></a>
										<div class="text text-center pt-4">
											<h3><a href="product-single.html">Coffee Capuccino</a></h3>
											<p>A small river named Duden flows by their place and supplies</p>
											<p class="price"><span>$5.90</span></p>
											<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to Cart</a></p>
										</div>
									</div>
							</div>
							<div class="col-md-4">
								<div class="menu-entry">
										<a href="#" class="img" style="background-image: url(images/menu-4.jpg);"></a>
										<div class="text text-center pt-4">
											<h3><a href="product-single.html">Coffee Capuccino</a></h3>
											<p>A small river named Duden flows by their place and supplies</p>
											<p class="price"><span>$5.90</span></p>
											<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to Cart</a></p>
										</div>
									</div>
							</div>
							<div class="col-md-4">
								<div class="menu-entry">
										<a href="#" class="img" style="background-image: url(images/menu-4.jpg);"></a>
										<div class="text text-center pt-4">
											<h3><a href="product-single.html">Coffee Capuccino</a></h3>
											<p>A small river named Duden flows by their place and supplies</p>
											<p class="price"><span>$5.90</span></p>
											<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to Cart</a></p>
										</div>
									</div>
							</div>
							<div class="col-md-4">
								<div class="menu-entry">
										<a href="#" class="img" style="background-image: url(images/menu-4.jpg);"></a>
										<div class="text text-center pt-4">
											<h3><a href="product-single.html">Coffee Capuccino</a></h3>
											<p>A small river named Duden flows by their place and supplies</p>
											<p class="price"><span>$5.90</span></p>
											<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to Cart</a></p>
										</div>
									</div>
							</div>
							<div class="col-md-4">
								<div class="menu-entry">
										<a href="#" class="img" style="background-image: url(images/menu-4.jpg);"></a>
										<div class="text text-center pt-4">
											<h3><a href="product-single.html">Coffee Capuccino</a></h3>
											<p>A small river named Duden flows by their place and supplies</p>
											<p class="price"><span>$5.90</span></p>
											<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to Cart</a></p>
										</div>
									</div>
							</div>
						  </div>
						  <div class="row mt-5">
							<div class="col text-center">
							  <div class="block-27">
								<ul>
								  <li><a href="#">&lt;</a></li>
								  <li class="active"><span>1</span></li>
								  <li><a href="#">2</a></li>
								  <li><a href="#">3</a></li>
								  <li><a href="#">4</a></li>
								  <li><a href="#">5</a></li>
								  <li><a href="#">&gt;</a></li>
								</ul>
							  </div>
							</div>
						  </div>
		              </div>

		              <div class="tab-pane fade" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-1-tab">
		                <div class="row">
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/dish-1.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Grilled Beef</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/dish-2.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Grilled Beef</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/dish-3.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Grilled Beef</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/dish-4.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Grilled Beef</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/dish-5.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Grilled Beef</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/dish-6.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Grilled Beef</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
						  </div>
						  <div class="row mt-5">
							<div class="col text-center">
							  <div class="block-27">
								<ul>
								  <li><a href="#">&lt;</a></li>
								  <li class="active"><span>1</span></li>
								  <li><a href="#">2</a></li>
								  <li><a href="#">3</a></li>
								  <li><a href="#">4</a></li>
								  <li><a href="#">5</a></li>
								  <li><a href="#">&gt;</a></li>
								</ul>
							  </div>
							</div>
						  </div>
		              </div>

		              <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-2-tab">
		                <div class="row">
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/drink-1.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Lemonade Juice</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/drink-2.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Pineapple Juice</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/drink-3.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Soda Drinks</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/drink-4.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Lemonade Juice</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/drink-5.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Pineapple Juice</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/drink-6.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Soda Drinks</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
						  </div>
						  <div class="row mt-5">
							<div class="col text-center">
							  <div class="block-27">
								<ul>
								  <li><a href="#">&lt;</a></li>
								  <li class="active"><span>1</span></li>
								  <li><a href="#">2</a></li>
								  <li><a href="#">3</a></li>
								  <li><a href="#">4</a></li>
								  <li><a href="#">&gt;</a></li>
								</ul>
							  </div>
							</div>
						  </div>
		              </div>

		              <div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-3-tab">
		                <div class="row">
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/dessert-1.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Hot Cake Honey</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/dessert-2.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Hot Cake Honey</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/dessert-3.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Hot Cake Honey</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/dessert-4.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Hot Cake Honey</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/dessert-5.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Hot Cake Honey</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
		              		<div class="col-md-4 text-center">
		              			<div class="menu-wrap">
		              				<a href="#" class="menu-img img mb-4" style="background-image: url(images/dessert-6.jpg);"></a>
		              				<div class="text">
		              					<h3><a href="product-single.html">Hot Cake Honey</a></h3>
		              					<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
		              					<p class="price"><span>$2.90</span></p>
		              					<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
		              				</div>
		              			</div>
		              		</div>
						  </div>
						  <div class="row mt-5">
							<div class="col text-center">
							  <div class="block-27">
								<ul>
								  <li><a href="#">&lt;</a></li>
								  <li class="active"><span>1</span></li>
								  <li><a href="#">2</a></li>
								  <li><a href="#">3</a></li>
								  <li><a href="#">&gt;</a></li>
								</ul>
							  </div>
							</div>
						  </div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
		    </div>
    	</div>
    </section>

<%@ include file="../footer.jsp" %>