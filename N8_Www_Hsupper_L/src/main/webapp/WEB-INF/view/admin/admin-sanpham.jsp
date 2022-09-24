<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>H-supper-L (Đăng nhập)</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="./resources/css/garenal.css">
<link rel="stylesheet" href="./resources/css/index.css">
<link rel="stylesheet"
	href="./assets/font/fontawesome-free-5.15.4/css/all.css">
<link rel="stylesheet" href="./resources/css/dangki.css">
<link rel="stylesheet" href="./resources/css/lib/hover.css">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
    <div id="container" class="container-fluid">
        <div id="hearder" class="row">
            <div class="col-12">
                <div class="row bd-bottom ">
                    <div class="col-3 col-md-3 text-center div-logo">
                        
                            <img src="./resources/assets/img/logo1.png" alt="logo" width="200">
                        
                      </div>
                </div>
            </div>
        </div>
        <div id="content" class="row">
            <div class="col-12">
                <div class="row ">
                  <div class="col-2 ps-5 bg-LT  ">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link text-white HL-link fs-5 hvr-underline-from-left "
                                href="#">Tổng quan</a>
                        </li>
                        <li class="nav-item  vpp-dropdown ">
                            <a class="nav-link text-white HL-link fs-5 hvr-underline-from-left  "
                             href="#">Đơn hàng</a>

                        </li>
                        <li class="nav-item  vpp-dropdown ">
                            <a class="nav-link text-white HL-link fs-5 hvr-underline-from-left "
                                href="./san-pham.html">Sản phẩm</a>

                        </li>
                        <li class="nav-item  vpp-dropdown ">
                            <a class="nav-link text-white HL-link fs-5 hvr-underline-from-left "
                             href="#">Nhân viên</a>

                        </li>
                        <li class="nav-item  vpp-dropdown ">
                            <a class="nav-link text-white HL-link fs-5 hvr-underline-from-left "
                             href="#">Khách hàng</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white HL-link fs-5 hvr-underline-from-left"
                             href="">Website</a>
                        </li>

                    </ul>
                </div>

                    <div class="col-10 col-md-10">
                        <div class="mb-3 bd-bottom ps-2">
                            <i>
                               <a href="./trangchu.html" class="HL-link">Trang chủ </a>
                            </i>
                        </div>
                        <div class="col-8 col-md-6 pt-3">
                          <div class="input-group">
                              <input type="text" class="form-control" placeholder="Nhập tên sản phẩm cần tìm"> 
                              <button type="button" class="btn btn-dark fw-bold hvr-bounce-to-right text-white">Tìm
                                 <i class="fas fa-search"></i>
                              </button>
                              </div>
                        </div>
                        <div class="row mt-2 p-2  m-0">
                          <div class="col-12 p-0">
                              <div class="row m-0 d-flex justify-content-between">
                                  <h4 class="col-4 p-0">Danh sách sản phẩm</h4>
                                  <button type="button" class=" col-2 btn don-da-duyet hvr-shutter-out-horizontal" data-bs-toggle="modal" data-bs-target="#myModal">Thêm sản phẩm</button>
                                  <div class="modal fade " id="myModal">
                                      <div class="modal-dialog modal-lg ">
                                        <div class="modal-content ">
                                    
                                          <!-- Modal Header -->
                                          <div class="modal-header">
                                            <div class="w-100 d-flex justify-content-center ">
                                                <h4>Thông tin sản phẩm</h4>
                                            </div>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                              </div>

                              <div class="row m-0 mt-4">
                                  <div class="col-12 p-0">

                                      <table class="table table-striped text-center">
                                          <thead>
                                              <tr>
                                                  <th>STT</th>
                                                  <th>Tên sản phẩm</th>
                                                  <th>Loại</th>
                                                  <th>Đã bán</th>
                                                  <th>Số lượng tồn</th>
                                                  <th>Chức năng</th>


                                              </tr>
                                          </thead>
                                          <tbody>
                                              <tr>
                                                  <td>1</td>
                                                  <td>Sản phẩm 1</td>
                                                  <td>Dày GUCCI</td>
                                                  <td>2450</td>
                                                  <td class="">1200</td>
                                                  <td>
                                                      <div class="row m-0 d-flex justify-content-center">
                                                          <div class="col-2 p-0 ms-1 me-1 ">
                                                              <button type="button" class="btn bg-white form-control HL-bd-color-spink xuhuong" title="Chi tiết sản phẩm"><i class="fas fa-info fs-5 HL-text-dark "></i></button>                                                            

                                                          </div>
                                                          <div class="col-2 p-0 me-1">
                                                              <button type="button" class="btn bg-white form-control  HL-bd-color-blue xuhuong" title="Chi tiết sản phẩm"><i class="fas fa-pencil-alt fs-5 HL-text-blue"></i></button>                                                            

                                                          </div>
                                                          <div class="col-2 p-0 me-1 ">
                                                              <button type="button" class="btn bg-white form-control  HL-bd-color-red xuhuong" title="Chi tiết sản phẩm"><i class="fas fa-times fs-5  HL-text-red"></i></button>                                                            

                                                          </div>
                                                      </div>
                                                  </td>

                                              </tr>

                                              <tr>
                                                  <td>1</td>
                                                  <td>Sản phẩm 2</td>
                                                  <td>Giày GUCCI</td>
                                                  <td>2450</td>
                                                  <td class="">1200</td>
                                                  <td>
                                                      <div class="row m-0 d-flex justify-content-center">
                                                          <div class="col-2 p-0  ms-1 me-1 ">
                                                              <button type="button" class="btn bg-white   form-control HL-bd-color-spink xuhuong " title="Chi tiết sản phẩm"><i class="fas fa-info fs-5  vpp-text-pink "></i></button>                                                            

                                                          </div>
                                                          <div class="col-2 p-0 me-1">
                                                              <button type="button" class="btn bg-white form-control  HL-bd-color-blue xuhuong" title="Chi tiết sản phẩm"><i class="fas fa-pencil-alt fs-5 vpp-text-blue"></i></button>                                                            

                                                          </div>
                                                          <div class="col-2 p-0 me-1 ">
                                                              <button type="button" class="btn bg-white form-control  HL-bd-color-red xuhuong" title="Chi tiết sản phẩm"><i class="fas fa-times fs-5  vpp-text-red"></i></button>                                                            

                                                          </div>
                                                      </div>
                                                  </td>

                                              </tr>
                                              <tr>
                                                <td>1</td>
                                                <td>Sản phẩm 2</td>
                                                <td>Giày GUCCI</td>
                                                <td>2450</td>
                                                <td class="">1200</td>
                                                <td>
                                                    <div class="row m-0 d-flex justify-content-center">
                                                        <div class="col-2 p-0  ms-1 me-1 ">
                                                            <button type="button" class="btn bg-white   form-control HL-bd-color-spink xuhuong" title="Chi tiết sản phẩm"><i class="fas fa-info fs-5  vpp-text-pink "></i></button>                                                            

                                                        </div>
                                                        <div class="col-2 p-0 me-1">
                                                            <button type="button" class="btn bg-white form-control  HL-bd-color-blue xuhuong" title="Chi tiết sản phẩm"><i class="fas fa-pencil-alt fs-5 vpp-text-blue"></i></button>                                                            

                                                        </div>
                                                        <div class="col-2 p-0 me-1 ">
                                                            <button type="button" class="btn bg-white form-control  HL-bd-color-red xuhuong" title="Chi tiết sản phẩm"><i class="fas fa-times fs-5  vpp-text-red"></i></button>                                                            

                                                        </div>
                                                    </div>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>Sản phẩm 2</td>
                                                <td>Giày GUCCI</td>
                                                <td>2450</td>
                                                <td class="">1200</td>
                                                <td>
                                                    <div class="row m-0 d-flex justify-content-center">
                                                        <div class="col-2 p-0  ms-1 me-1 ">
                                                            <button type="button" class="btn bg-white   form-control HL-bd-color-spink xuhuong" title="Chi tiết sản phẩm"><i class="fas fa-info fs-5  vpp-text-pink "></i></button>                                                            

                                                        </div>
                                                        <div class="col-2 p-0 me-1">
                                                            <button type="button" class="btn bg-white form-control  HL-bd-color-blue xuhuong" title="Chi tiết sản phẩm"><i class="fas fa-pencil-alt fs-5 vpp-text-blue"></i></button>                                                            

                                                        </div>
                                                        <div class="col-2 p-0 me-1 ">
                                                            <button type="button" class="btn bg-white form-control  HL-bd-color-red xuhuong" title="Chi tiết sản phẩm"><i class="fas fa-times fs-5  vpp-text-red"></i></button>                                                            

                                                        </div>
                                                    </div>
                                                </td>

                                            </tr>

                                          </tbody>

                                      </table>



                                  </div>

                              </div>
                              




                          </div>
                      </div>
                        
                    </div>
                    
    
                    <div id="sanPham" class="col-10 col-md-9 d-flex flex-wrap ">
                       </div>
                    
                
                </div>
            </div>
        </div>
    </div>
   
  
</body>
</html>