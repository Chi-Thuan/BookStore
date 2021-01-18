<%@page import="Model.Category"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./components/head.jsp" %>
<body>
  <div id="app">
    <div class="main-wrapper">
<%@ include file="./components/navigation.jsp" %>
<% List<Category> listCategory = (List<Category>) request.getAttribute("listCategory"); %>
 <div class="main-content">
        <section class="section">
          <h1 class="section-header">
            <div>Thêm sách mới</div>
          </h1>

          <div class="row">
            <div class="col-12">
                <form action="">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="form-group d-flex justify-content-between col-12" >
                                    <h6 class="m-0 col-3">Tên sách</h6>
                                    <input name="nameBook" type="text" placeholder="Nhập tên sách" class="form-control p-2">
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group d-flex  justify-content-between col-12" >
                                    <h6 class="m-0 col-3">Slug</h6>
                                    <input name="slug" type="text" placeholder="Nhập slug sách" class="form-control p-2">
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group d-flex justify-content-between col-12" >
                                    <h6 class="m-0 col-3">Mô tả</h6>
                                    <textarea name="description" placeholder="Nhập mô tả sách" class="col-9 form-control" rows="4"></textarea>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group d-flex justify-content-between col-12" >
                                    <h6 class="m-0 col-3">Hình đại diện</h6>
                                    <textarea name="content" placeholder="Nhập nội dung sách" class="col-9 form-control" rows="4"></textarea>
                                </div>
                            </div>

                            <div class="row">
                                <div class="form-group d-flex justify-content-between col-12" >
                                    <h6 class="m-0 col-3">Chuyên mục</h6>
                                    <select name="category" class="form-control">
                                    	<% if(listCategory != null)  {%>
                                    		<% for(int i = 0; i < listCategory.size(); i ++ ) {%>
                                    			<option value="<%= listCategory.get(i).get_id()  %>"><%= listCategory.get(i).getName() %></option>
                                    		<%} %>
                                    	<%} %>
                                    </select>
                                   <!--  <span class="btn btn-primary btn-sm col-1 d-flex justify-content-center align-items-center ml-2" data-toggle="modal" data-target="#exampleModalCenter">Thêm</span>  -->
                                </div>
                            </div>

                            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                              <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                  <form action="">
                                    <div class="modal-header d-flex justify-content-center">
                                      <h4 class="modal-title" id="exampleModalLongTitle">Thêm Chuyên Mục</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="form-group d-flex  align-items-center justify-content-between col-12" >
                                          <h6 class="m-0 col-3">Tên</h6>
                                          <input name="new-name-category" type="text" class="form-control p-2">
                                        </div>

                                        <div class="form-group d-flex align-items-center justify-content-between col-12" >
                                          <h6 class="m-0 col-3">Slug</h6>
                                          <input name="new-slug-category" type="text"  class="form-control p-2">
                                      </div>
                                    </div>
                                    <div class="modal-footer">
                                      <button type="button" class="btn btn-danger"  data-toggle="modal" data-target="#exampleModalCenter">Close</button>
                                      <input type="submit" class="btn btn-primary" value="Thêm"></input>
                                    </div>
                                  </form>
                                </div>
                              </div>
                            </div>

                            <div class="row">
                              <div class="form-group d-flex  justify-content-between col-12" >
                                  <h6 class="m-0 col-3">Giá</h6>
                                  <input name="price" type="number" min="1000" placeholder="Nhập giá sách" class="form-control p-2">
                              </div>
                          </div>

                          <div class="row">
                            <div class="form-group d-flex  justify-content-between col-12" >
                                <h6 class="m-0 col-3">Nhà Xuất bản</h6>
	                               <select name="nxb" class="form-control">
	                                    	<% if(listCategory != null)  {%>
	                                    		<% for(int i = 0; i < listCategory.size(); i ++ ) {%>
	                                    			<option value="<%= listCategory.get(i).get_id()  %>"><%= listCategory.get(i).getName() %></option>
	                                    		<%} %>
	                                    	<%} %>
                                    </select>
                            </div>
                        </div>

                        <div class="row">
                          <div class="form-group d-flex  justify-content-between col-12" >
                              <h6 class="m-0 col-3">Số lượng</h6>
                              <input name="quantity" type="number" min="1" placeholder="Nhập số lượng sách" class="form-control p-2">
                          </div>
                      </div>

                        </div>
                        <div class="card-footer text-right d-flex justify-content-end">
                            <input type="submit" class="btn btn-primary btn-md mr-2" value="Đăng Bài" >
                            <span class="btn btn-danger btn-md">Hủy</span>
                        </div>
                      </div>
                </form>
             
            </div>
          </div>
        </section>
      </div>
<%@ include file="./components/footer.jsp" %> 