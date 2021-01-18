<%@page import="Model.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="./components/head.jsp" %>

<body>
  <div id="app">
    <div class="main-wrapper">
      
<%@ include file="./components/navigation.jsp" %>
<!-- - -->
<% List<Book> listAllBook = (List<Book>) request.getAttribute("listAllBook"); %>
      <div class="main-content">
        <section class="section">
          <h1 class="section-header">
            <div>Quản lý sách</div>
          </h1>
          <div class="row">
            <div class="col-lg-12 col-md-12 col-12">
              <div class="card card-sm-3">
                <div class="card-icon bg-primary">
                  <i class="ion ion-ios-paper-outline"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>Tổng số lượng sách</h4>
                  </div>
                  <div class="card-body">
                    <%= listAllBook.size() %>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-header">
                  <div class="float-right">
                    <form>
                      <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search">
                        <div class="input-group-btn">
                          <button class="btn btn-secondary"><i class="ion ion-search"></i></button>
                        </div>
                      </div>
                    </form>
                  </div>
                  <h4>Bài Viết</h4>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table table-striped">
                      <tr>
                        <th class="text-center">
                          <div class="custom-checkbox custom-control">
                            <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad" class="custom-control-input" id="checkbox-all">
                            <label for="checkbox-all" class="custom-control-label"></label>
                          </div>
                        </th>
                        <th class="text-center">Tên Sách</th>
                        <th class="text-center">Mô tả</th>
                        <th class="text-center">Thể loại</th>
                        <th class="text-center">Giá</th>
                        <th class="text-center">Còn lại</th>
                        <th class="text-center">Thao tác</th>
                      </tr>

                      <!-- row 1-->
                      <% for(int i = 0; i <listAllBook.size() ; i ++ ) {%>
	                      <tr>
	                        <td style="width: 10px" class="text-center">
	                          <div class="custom-checkbox custom-control">
	                            <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input" id="checkbox-1">
	                            <label for="checkbox-1" class="custom-control-label"></label>
	                          </div>
	                        </td>
	                        <td style="width : 15% ;"><%= listAllBook.get(i).getNameBook() %></td>
	                        <td style="display: -webkit-box;
							    -webkit-box-orient: vertical;
							    /* width: 30%; */
							    -webkit-line-clamp: 4;
							    overflow: hidden;
							    line-height: 36px;"><%= listAllBook.get(i).getDescription() %></td>
	                        <td  class="text-center" style="width : 80px ;">
	                         <%= listAllBook.get(i).getNameCategory() %>
	                        </td>
	                        <td  class="text-center" style="width : 70px ;  "><%= listAllBook.get(i).getPrice()%> VND</td>
	                        <td  class="text-center" style="width : 90px;">
	                         	<%= listAllBook.get(i).getQuantity()%>
	                        </td>
	                        <td  class="text-center" style="width : 200px ;">
	                          <a href="adminBook?typepage=updateBook" class="btn btn-primary btn-action" data-toggle="tooltip" title="Edit"><i class="ion ion-edit"></i></a>
	                          <a class="btn btn-danger btn-action" data-toggle="tooltip" title="Delete"><i class="ion ion-trash-b"></i></a>
	                          <a class="btn btn-danger btn-action" data-toggle="tooltip" title="View"><i class="ion ion-eye"></i></a>
	                        </td>
	                      </tr>
                      <%} %>
                    </table>
                  </div>
                </div>

                <div class="card-footer text-right d-flex justify-content-between">
                  <button class="btn btn-danger btn-sm">Xóa</button>
                  <nav class="d-inline-block">
                    <ul class="pagination mb-0">
                      <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1"><i class="ion ion-chevron-left"></i></a>
                      </li>
                      <li class="page-item active"><a class="page-link" href="#">1 <span class="sr-only">(current)</span></a></li>
                      <li class="page-item">
                        <a class="page-link" href="#">2</a>
                      </li>
                      <li class="page-item"><a class="page-link" href="#">3</a></li>
                      <li class="page-item">
                        <a class="page-link" href="#"><i class="ion ion-chevron-right"></i></a>
                      </li>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      
<%@ include file="./components/footer.jsp" %> 