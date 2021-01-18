<%@page import="Model.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<body>
	<%@ include file="../navigation.jsp" %>
    <!-- END nav -->

    <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image: url(./assets/images/bg_3.jpg); background-size: cover;">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-8 col-sm-12 text-center ftco-animate">
            	<span class="subheading">Welcome</span>
              <h1 class="mb-4">Sách <br> Kho báu tri thức nhân loại</h1>
              <p class="mb-4 mb-md-5">Một vài người nói họ chỉ sổng một lần trong đời <br> Đó là vì họ đã không đọc sách</p>
              <p><a href="shop.html" class="btn btn-primary p-3 px-xl-4 py-xl-3">Mua Ngay</a> <a href="#bookHot" class="btn btn-white btn-outline-white p-3 px-xl-4 py-xl-3">Sách Bán Chạy</a></p>
            </div>

          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url(./assets/images/bg_2.jpg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-8 col-sm-12 text-center ftco-animate">
            	<span class="subheading">Welcome</span>
              <h1 class="mb-4">Sách <br> Kho báu tri thức nhân loại</h1>
              <p class="mb-4 mb-md-5">Đọc sách có thể không GIÀU <br> Nhưng không đọc chắc chắn NGHÈO</p>
              <p><a href="shop.html" class="btn btn-primary p-3 px-xl-4 py-xl-3">Mua Ngay</a> <a href="#bookHot" class="btn btn-white btn-outline-white p-3 px-xl-4 py-xl-3">Sách Bán Chạy</a></p>
            </div>

          </div>
        </div>
      </div>

      <div class="slider-item" style="background-image: url(./assets/images/bg_1.jpg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

            <div class="col-md-8 col-sm-12 text-center ftco-animate">
            	<span class="subheading">Welcome</span>
              <h1 class="mb-4">Sách <br> Kho báu tri thức nhân loại</h1>
              <p class="mb-4 mb-md-5">Dùng tri thức để biết hạnh phúc với những gì mình đang có.</p>
              <p><a href="shop.html" class="btn btn-primary p-3 px-xl-4 py-xl-3">Mua Ngay</a> <a href="#bookHot" class="btn btn-white btn-outline-white p-3 px-xl-4 py-xl-3">Sách Bán Chạy</a></p>
            </div>

          </div>
        </div>
      </div>
    </section>

    <section class="ftco-intro">
    	<div class="container-wrap">
    		<div class="wrap d-md-flex align-items-xl-end">
	    		<div class="info">
	    			<div class="row no-gutters">
	    				<div class="col-md-4 d-flex ftco-animate">
	    					<div class="icon"><span class="icon-phone"></span></div>
	    					<div class="text">
	    						<h3>000 (123) 456 7890</h3>
	    						<p>Hỗ trợ tư vấn miễn phí</p>
	    					</div>
	    				</div>
	    				<div class="col-md-4 d-flex ftco-animate">
	    					<div class="icon"><span class="icon-my_location"></span></div>
	    					<div class="text">
	    						<h3>198 West 21th Street</h3>
	    						<p>	203 Fake St. Mountain View, San Francisco, California, USA</p>
	    					</div>
	    				</div>
	    				<div class="col-md-4 d-flex ftco-animate">
	    					<div class="icon"><span class="icon-clock-o"></span></div>
	    					<div class="text">
	    						<h3>Mở cửa từ thứ 2 - thứ 6</h3>
	    						<p>8:00am - 9:00pm</p>
	    					</div>
	    				</div>
	    			</div>
	    		</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-about d-md-flex">
    	<div class="one-half img" style="background-image: url(./assets/images/about.jpg);"></div>
    	<div class="one-half ftco-animate">
    		<div class="overlap">
	        <div class="heading-section ftco-animate ">
				<span class="subheading">Không Gia Đình</span>
				<br>
				<br>
	        </div>
	        <div>
				  <p>Trong cuộc đời của mỗi người, hẳn có lẽ đã trải qua ít nhất một lần vấp ngã và rồi quay đầu lại thấy có cha, có mẹ, có gia đình đứng phía sau dang rộng vòng tay đón ta trở về, sưởi ấm tâm hồn ta bằng tình yêu thương. Mỗi lần như vậy, ta lại càng thêm trân quý hơn tình thân, gia đình. Vì ngoài kia còn biết bao số phận nghiệt ngã, phải bơ vơ lạc lõng và điển hình là câu chuyện về cậu bé Rêmi trong tập tiểu thuyết "Không gia đình" của nhà văn Hector Malot.</p>
				  <p><a href="product" class="btn btn-primary btn-outline-primary px-4 py-3">Xem Thêm</a></p>
  			</div>
  			</div>
    	</div>
    </section>

    <section class="ftco-section ftco-services">
    	<div class="container">
    		<div class="row">
          <div class="col-md-6 ftco-animate">
            <div class="media d-block text-center block-6 services">
              <div class="icon d-flex justify-content-center align-items-center mb-5">
              	<span class="flaticon-choices"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Giao diện dễ sử dụng</h3>
                <p>Thiết kế đơn giản, sang trọng, phù hợp với mọi đối tượng sử dụng</p>
              </div>
            </div>      
          </div>
          <div class="col-md-6 ftco-animate">
            <div class="media d-block text-center block-6 services">
              <div class="icon d-flex justify-content-center align-items-center mb-5">
              	<span class="flaticon-delivery-truck"></span>
              </div>
              <div class="media-body">
                <h3 class="heading">Giao hàng miễn phí</h3>
                <p>Miễn phí giao hàng trong phạm vi TPHCM.</p>
              </div>
            </div>      
          </div>
        </div>
    	</div>
    </section>


    <section class="ftco-section"  id="bookHot">
    	<div class="container">
    		<div class="row justify-content-center mb-3 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
          	<span class="subheading">Sách Mới</span><br>
          </div>
        </div>
        <div class="row">
        
       <% List<Book> listHotBook = (List<Book>)request.getAttribute("listHotBoook"); %>
        <% if(listHotBook.size() != 0){ %>
        	<% for(int i = 0; i < listHotBook.size() ;i ++ ) {%>
        		<div class="col-md-3 bookItem">
	        		<div class="menu-entry">
						<a href="product?id=<%= listHotBook.get(i).get_id() %>" class="img" style="background-image: url(./upload/images/<%= listHotBook.get(i).getAvatar()%>); background-size: 190px 190px "></a>
						<div class="text text-center pt-4">
							<h3><a href="product?id=<%= listHotBook.get(i).get_id() %>"><%= listHotBook.get(i).getNameBook()%></a></h3>
							<p class="des-book"><%= listHotBook.get(i).getDescription() %></p>
							<p class="price"><span><%= listHotBook.get(i).getPrice()%> VND</span></p>
							<p><a href="#" data-id="<%= listHotBook.get(i).get_id() %>" class="btn-addToCart btn btn-primary btn-outline-primary">Add to Cart</a></p>
						</div>	
					</div>
	        	</div>
        	<%} %>
        <%}%>
        </div>
    	</div>
    </section>



<%@ include file="../footer.jsp" %>