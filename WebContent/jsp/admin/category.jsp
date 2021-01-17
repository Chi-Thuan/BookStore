<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./components/head.jsp" %>
<body>
  <div id="app">
    <div class="main-wrapper">
<%@ include file="./components/navigation.jsp" %>

   <div class="main-content">
        <section class="section">
          <h1 class="section-header">
            <div>Quản Lý Thể Loại</div>
          </h1>
          <div class="row">
            <div class="col-lg-12 col-md-6 col-12">
              <div class="card card-sm-3">
                <div class="card-icon bg-primary">
                  <i class="ion ion-person"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>Tổng Chuyên Mục</h4>
                  </div>
                  <div class="card-body">
                    10
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
                  <h4>Chuyên Mục</h4>
                </div>
                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table table-striped">
                      <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Tên Chuyên Mục</th>
                        <th class="text-center">Tổng Bài Viết</th>
                        <th class="text-center">Thao tác</th>
                      </tr>

                      <tr>
                        <td style="width : 15% ;"  class="text-center">5d3f0d1b715928028b0e154a</td>
                        <td style="width : 40% ;" class="text-center">
                            Tìm Bạn Bốn Phương
                            <div class="accordion-body collapse" id="5d3f0d1b715928028b0e154a" data-parent="#accordion">
                               <form action="" class="d-flex flex-column align-items-center mt-2">
                                    <div class="row m-0 d-flex justify-content-between">
                                        <div class="form-group col-6 m-0 pl-0 pr-1 text-center" >
                                            <label for="" class="m-0  text-info">Tên Chuyên Mục</label>
                                            <input id="new-nameCategory" type="text" value="Tìm Bạn Bốn Phương" class="form-control p-2" name="new-nameCategory">
                                        </div>
                                        <div class="form-group col-6 m-0 p-0 text-center" style="width: 100%;">
                                            <label for="" class="m-0 text-info">SLug</label>
                                            <input id="new-slugCategory"  style="width: 100%;" type="text" value="tim-ban-bon-phuong" class="form-control p-2" name="new-slugCategory">
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <input type="submit" class="btn btn-success btn-sm" value="Xong">
                                        <span class="btn btn-danger btn-sm ml-1" data-toggle="collapse" data-target="#5d3f0d1b715928028b0e154a">Hủy</span>
                                    </div>
                               </form>
                            </div>
                        </td>
                        <td  class="text-center" style="width : 80px ;">
                            100
                        </td>
                        <td  class="text-center" style="width : 100px ;">
                            <div class="btn btn-primary btn-action accordion-header" data-toggle="collapse" data-target="#5d3f0d1b715928028b0e154a">
                                <i class="ion ion-edit"></i>
                            </div>
                            
                          <a class="btn btn-danger btn-action" data-toggle="tooltip" title="Delete"><i class="ion ion-trash-b"></i></a>
                        </td>
                      </tr>

                      <tr>
                        <td style="width : 15% ;"  class="text-center">5d3f0d1b715928028b0e154b</td>
                        <td style="width : 40% ;" class="text-center">
                            Tìm Bạn Bốn Phương
                            <div class="accordion-body collapse" id="5d3f0d1b715928028b0e154b" data-parent="#accordion">
                               <form action="" class="d-flex flex-column align-items-center mt-2">
                                    <div class="row m-0 d-flex justify-content-between">
                                        <div class="form-group col-6 m-0 pl-0 pr-1 text-center" >
                                            <label for="" class="m-0  text-info">Tên Chuyên Mục</label>
                                            <input id="new-nameCategory" type="text" value="Tìm Bạn Bốn Phương" class="form-control p-2" name="new-nameCategory">
                                        </div>
                                        <div class="form-group col-6 m-0 p-0 text-center" style="width: 100%;">
                                            <label for="" class="m-0 text-info">SLug</label>
                                            <input id="new-slugCategory"  style="width: 100%;" type="text" value="tim-ban-bon-phuong" class="form-control p-2" name="new-slugCategory">
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <input type="submit" class="btn btn-success btn-sm" value="Xong">
                                        <span class="btn btn-danger btn-sm ml-1" data-toggle="collapse" data-target="#5d3f0d1b715928028b0e154b">Hủy</span>
                                    </div>
                               </form>
                            </div>
                        </td>
                        <td  class="text-center" style="width : 80px ;">
                            100
                        </td>
                        <td  class="text-center" style="width : 100px ;">
                            <div class="btn btn-primary btn-action accordion-header" data-toggle="collapse" data-target="#5d3f0d1b715928028b0e154b">
                                <i class="ion ion-edit"></i>
                            </div>
                            
                          <a class="btn btn-danger btn-action" data-toggle="tooltip" title="Delete"><i class="ion ion-trash-b"></i></a>
                        </td>
                      </tr>

                      <tr>
                        <td style="width : 15% ;"  class="text-center">5d3f0d1b715928028b0e154c</td>
                        <td style="width : 40% ;" class="text-center">
                            Tìm Bạn Bốn Phương
                            <div class="accordion-body collapse" id="5d3f0d1b715928028b0e154c" data-parent="#accordion">
                               <form action="" class="d-flex flex-column align-items-center mt-2">
                                    <div class="row m-0 d-flex justify-content-between">
                                        <div class="form-group col-6 m-0 pl-0 pr-1 text-center" >
                                            <label for="" class="m-0  text-info">Tên Chuyên Mục</label>
                                            <input id="new-nameCategory" type="text" value="Tìm Bạn Bốn Phương" class="form-control p-2" name="new-nameCategory">
                                        </div>
                                        <div class="form-group col-6 m-0 p-0 text-center" style="width: 100%;">
                                            <label for="" class="m-0 text-info">SLug</label>
                                            <input id="new-slugCategory"  style="width: 100%;" type="text" value="tim-ban-bon-phuong" class="form-control p-2" name="new-slugCategory">
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <input type="submit" class="btn btn-success btn-sm" value="Xong">
                                        <span class="btn btn-danger btn-sm ml-1" data-toggle="collapse" data-target="#5d3f0d1b715928028b0e154c">Hủy</span>
                                    </div>
                               </form>
                            </div>
                        </td>
                        <td  class="text-center" style="width : 80px ;">
                            100
                        </td>
                        <td  class="text-center" style="width : 100px ;">
                            <div class="btn btn-primary btn-action accordion-header" data-toggle="collapse" data-target="#5d3f0d1b715928028b0e154c">
                                <i class="ion ion-edit"></i>
                            </div>
                            
                          <a class="btn btn-danger btn-action" data-toggle="tooltip" title="Delete"><i class="ion ion-trash-b"></i></a>
                        </td>
                      </tr>

                      <tr>
                        <td style="width : 15% ;"  class="text-center">5d3f0d1b715928028b0e154d</td>
                        <td style="width : 40% ;" class="text-center">
                            Tìm Bạn Bốn Phương
                            <div class="accordion-body collapse" id="5d3f0d1b715928028b0e154d" data-parent="#accordion">
                               <form action="" class="d-flex flex-column align-items-center mt-2">
                                    <div class="row m-0 d-flex justify-content-between">
                                        <div class="form-group col-6 m-0 pl-0 pr-1 text-center" >
                                            <label for="" class="m-0  text-info">Tên Chuyên Mục</label>
                                            <input id="new-nameCategory" type="text" value="Tìm Bạn Bốn Phương" class="form-control p-2" name="new-nameCategory">
                                        </div>
                                        <div class="form-group col-6 m-0 p-0 text-center" style="width: 100%;">
                                            <label for="" class="m-0 text-info">SLug</label>
                                            <input id="new-slugCategory"  style="width: 100%;" type="text" value="tim-ban-bon-phuong" class="form-control p-2" name="new-slugCategory">
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <input type="submit" class="btn btn-success btn-sm" value="Xong">
                                        <span class="btn btn-danger btn-sm ml-1" data-toggle="collapse" data-target="#5d3f0d1b715928028b0e154d">Hủy</span>
                                    </div>
                               </form>
                            </div>
                        </td>
                        <td  class="text-center" style="width : 80px ;">
                            100
                        </td>
                        <td  class="text-center" style="width : 100px ;">
                            <div class="btn btn-primary btn-action accordion-header" data-toggle="collapse" data-target="#5d3f0d1b715928028b0e154d">
                                <i class="ion ion-edit"></i>
                            </div>
                            
                          <a class="btn btn-danger btn-action" data-toggle="tooltip" title="Delete"><i class="ion ion-trash-b"></i></a>
                        </td>
                      </tr>

                      <tr>
                        <td style="width : 15% ;"  class="text-center">5d3f0d1b715928028b0e154e</td>
                        <td style="width : 40% ;" class="text-center">
                            Tìm Bạn Bốn Phương
                            <div class="accordion-body collapse" id="5d3f0d1b715928028b0e154e" data-parent="#accordion">
                               <form action="" class="d-flex flex-column align-items-center mt-2">
                                    <div class="row m-0 d-flex justify-content-between">
                                        <div class="form-group col-6 m-0 pl-0 pr-1 text-center" >
                                            <label for="" class="m-0  text-info">Tên Chuyên Mục</label>
                                            <input id="new-nameCategory" type="text" value="Tìm Bạn Bốn Phương" class="form-control p-2" name="new-nameCategory">
                                        </div>
                                        <div class="form-group col-6 m-0 p-0 text-center" style="width: 100%;">
                                            <label for="" class="m-0 text-info">SLug</label>
                                            <input id="new-slugCategory"  style="width: 100%;" type="text" value="tim-ban-bon-phuong" class="form-control p-2" name="new-slugCategory">
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <input type="submit" class="btn btn-success btn-sm" value="Xong">
                                        <span class="btn btn-danger btn-sm ml-1" data-toggle="collapse" data-target="#5d3f0d1b715928028b0e154e">Hủy</span>
                                    </div>
                               </form>
                            </div>
                        </td>
                        <td  class="text-center" style="width : 80px ;">
                            100
                        </td>
                        <td  class="text-center" style="width : 100px ;">
                            <div class="btn btn-primary btn-action accordion-header" data-toggle="collapse" data-target="#5d3f0d1b715928028b0e154e">
                                <i class="ion ion-edit"></i>
                            </div>
                            
                          <a class="btn btn-danger btn-action" data-toggle="tooltip" title="Delete"><i class="ion ion-trash-b"></i></a>
                        </td>
                      </tr>
                    
                    </table>
                  </div>
                </div>

              </div>
            </div>
          </div>
        </section>
      </div>

<%@ include file="./components/footer.jsp" %> 