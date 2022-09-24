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
    <title>H-Supper-L(admin-tongquan)</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" href="./resources/css/garenal.css">
    <link rel="stylesheet" href="./resources/css/index.css">
    <link rel="stylesheet" href="./resources/css/lib/hover.css">
    <link rel="stylesheet" href="./resources/css/admin/admin.css">
    <link rel="stylesheet" href="./resources/css/admin/admin-sanpham.css">
    <link rel="stylesheet" href="../assets/font/fontawesome-free-5.15.4/css/all.css">
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div id="container" class="container-fluid">
        <div id="hearder" class="row">
            <div class="col-12">
                <div class="row bd-bottom ">
                    <div class="col-3 col-md-3 text-center div-logo">
                        
                            <img src="./assets/img/LOGO/logo1.png" alt="logo" width="200">
                        
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
                        <div class=" ps-2  ">
                            <a href="#" class="HL-link">Tổng quan</a>
                        </div>
                        <div class="row d-flex justify-content-between">
                                    <div class="col-12" style=" height: 15vh;">
                                        <div class="row p-2 m-0 ms-2 HL-bd-btn h-100">
                                            <div class=" col-4 d-flex flex-column justify-content-between">
                                                <p>Mã nhân viên: <span>NV001</span></p>
                                                <p>Họ tên: <span>Nguyễn Phạm Haongf Long</span></p>
                                                <p>Giới tính: <span>Nam</span></p>
                                            </div>
                                            <div class=" col-4 d-flex flex-column justify-content-between">
                                                <p>Ngày sinh: <span>10/06/2001</span></p>
                                                <p>Sđt: <span>0987654321</span></p>
                                                <p>Chức vụ: <span>Nhân viên</span></p>
                                            </div>
                                            <div class=" col-4 d-flex flex-column justify-content-between">
                                                <p>Email: <span>abc@gmail.com</span></p>
                                                <p>Địa chỉ: <span>12 Nguyễn Văn bảo,P4, Gò Vấp, TP.HCM</span></p>
    
                                            </div>
    
    
                                        </div>
    
                                    </div>
                        </div>
                        <div class="row m-0 p-3 d-flex justify-content-between">
                            <div class="col-3 HL-bd-btn don-cho-duyet">
                                <div class="row">
                                    <div class="col-4  p-0 btn text-center d-flex flex-column justify-content-center h-100">
                                        <a href="#" class="d-flex align-items-center justify-content-center  p-2 m-1 mb-2 "style="height: 5vw;width: 5vw">
                                            <i class="fas fa-info text-LT" style="font-size: 2vw;"></i>
                                        </a>
                                    </div>
                                    <div class="col-8">
                                        <p>Đơn hàng chờ duyệt</p>
                                        <h2>5</h2>
                                        <a href="#" class="HL-link ">Xem chi tiết</a>
                                    </div>
                                </div>

                            </div>
                            <div class="col-4 HL-bd-btn p-2 don-da-duyet">
                                <div class="row m-0 ">
    
                                    <div
                                        class=" col-4  p-0 btn text-center d-flex flex-column justify-content-center h-100">
                                        <a href="#"
                                            class=" d-flex align-items-center justify-content-center  p-2 m-1 mb-2 "
                                            style="height: 5vw;width: 5vw">
                                            <i class="fas fa-check text-LT " style="font-size: 2vw;"></i>
                                        </a>
    
    
                                    </div>
                                    <div class="col-8">
                                        <p>Đơn hàng đã duyệt</p>
                                        <h2>5</h2>
                                        <a href="#" class="HL-link ">Xem chi tiết</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 HL-bd-btn don-da-ban">
                                <div class="row">
                                    <div class="col-4  p-0 btn text-center d-flex flex-column justify-content-center h-100">
                                        <a href="#" class="d-flex align-items-center justify-content-center  p-2 m-1 mb-2 "style="height: 5vw;width: 5vw">
                                            <i class="fas fa-shopping-cart text-LT" style="font-size: 2vw;"></i>
                                        </a>
                                    </div>
                                    <div class="col-8">
                                        <p>Đơn đã bán</p>
                                        <h2>5</h2>
                                        <a href="#" class="HL-link ">Xem chi tiết</a>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <h3 class="text-center m-4 mb-5">Sản phẩm bán chạy trong tháng</h3>
                         <!-- Carousel -->
                    <div id="demo" class="carousel slide" data-bs-ride="carousel">

                       

                        <!-- The slideshow/carousel -->
                        <div class="carousel-inner ps-5 pe-5">
                            <div class="carousel-item active">
                                <div class="d-flex justify-content-around text-center">
                                    <div class="col-3 pt-3 p-3 d-flex justify-content-around xuhuong">
                                        <div class="card pb-2 HL-bd-hover-pink HL-bd-btn " style="width:80%;">
                                            <div class="img-sp">
                                                <img class=" HL-bd-radius-top"
                                                    src="./assets/img/gucci/sp1.webp" alt="Card image"
                                                    style="width:100%; height: 9vw;">
                                            </div>
                                            <div class="card-body p-0">
                                                <a href="#" class="card-title HL-link">
                                                    <h5>Giày GUCCI</h5>
                                                </a>
                                                <p class="card-text text-danger fs-5 fw-bold">1,000,000đ</p>
                                                <a href="#" class="btn HL-btn HL-bd-btn hvr-shutter-out-horizontal">Xem chi
                                                    tiết</a>
                                            </div>
                                        </div>
                                    </div>
    
                                    <div class="col-3 pt-3 p-3 d-flex justify-content-around xuhuong">
                                        <div class="card pb-2 HL-bd-hover-pink HL-bd-btn " style="width:80%;">
                                            <div class="img-sp">
                                                <img class=" HL-bd-radius-top"
                                                    src="../assets/img/gucci/sp1.webp" alt="Card image"
                                                    style="width:100%; height: 9vw;">
                                            </div>
                                            <div class="card-body p-0">
                                                <a href="#" class="card-title HL-link">
                                                    <h5>Giày GUCCI</h5>
                                                </a>
                                                <p class="card-text text-danger fs-5 fw-bold">1,000,000đ</p>
                                                <a href="#" class="btn HL-btn HL-bd-btn hvr-shutter-out-horizontal">Xem chi
                                                    tiết</a>
                                            </div>
                                        </div>
                                    </div>
    
                                    <div class="col-3 pt-3 p-3 d-flex justify-content-around xuhuong">
                                        <div class="card pb-2 HL-bd-hover-pink HL-bd-btn " style="width:80%;">
                                            <div class="img-sp">
                                                <img class=" HL-bd-radius-top"
                                                    src="../assets/img/gucci/sp1.webp" alt="Card image"
                                                    style="width:100%; height: 9vw;">
                                            </div>
                                            <div class="card-body p-0">
                                                <a href="#" class="card-title HL-link">
                                                    <h5>Giày GUCCI</h5>
                                                </a>
                                                <p class="card-text text-danger fs-5 fw-bold">1,000,000đ</p>
                                                <a href="#" class="btn HL-btn HL-bd-btn hvr-shutter-out-horizontal">Xem chi
                                                    tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 pt-3 p-3 d-flex justify-content-around xuhuong">
                                        <div class="card pb-2 HL-bd-hover-pink HL-bd-btn " style="width:80%;">
                                            <div class="img-sp">
                                                <img class=" HL-bd-radius-top"
                                                    src="../assets/img/gucci/sp1.webp" alt="Card image"
                                                    style="width:100%; height: 9vw;">
                                            </div>
                                            <div class="card-body p-0">
                                                <a href="#" class="card-title HL-link">
                                                    <h5>Giày GUCCI</h5>
                                                </a>
                                                <p class="card-text text-danger fs-5 fw-bold">1,000,000đ</p>
                                                <a href="#" class="btn HL-btn HL-bd-btn hvr-shutter-out-horizontal">Xem chi
                                                    tiết</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="carousel-item ">
                                <div class="d-flex justify-content-around text-center">
                                    <div class="col-3 pt-3 p-3 d-flex justify-content-around xuhuong">
                                        <div class="card pb-2 HL-bd-hover-pink HL-bd-btn " style="width:80%;">
                                            <div class="img-sp">
                                                <img class=" HL-bd-radius-top"
                                                    src="../assets/img/gucci/sp1.webp" alt="Card image"
                                                    style="width:100%; height: 9vw;">
                                            </div>
                                            <div class="card-body p-0">
                                                <a href="#" class="card-title HL-link">
                                                    <h5>Giày GUCCI</h5>
                                                </a>
                                                <p class="card-text text-danger fs-5 fw-bold">1,000,000đ</p>
                                                <a href="#" class="btn HL-btn HL-bd-btn hvr-shutter-out-horizontal">Xem chi
                                                    tiết</a>
                                            </div>
                                        </div>
                                    </div>
    
                                    <div class="col-3 pt-3 p-3 d-flex justify-content-around xuhuong">
                                        <div class="card pb-2 HL-bd-hover-pink HL-bd-btn " style="width:80%;">
                                            <div class="img-sp">
                                                <img class=" HL-bd-radius-top"
                                                    src="../assets/img/gucci/sp1.webp" alt="Card image"
                                                    style="width:100%; height: 9vw;">
                                            </div>
                                            <div class="card-body p-0">
                                                <a href="#" class="card-title HL-link">
                                                    <h5>Giày GUCCI</h5>
                                                </a>
                                                <p class="card-text text-danger fs-5 fw-bold">1,000,000đ</p>
                                                <a href="#" class="btn HL-btn HL-bd-btn hvr-shutter-out-horizontal">Xem chi
                                                    tiết</a>
                                            </div>
                                        </div>
                                    </div>
    
                                    <div class="col-3 pt-3 p-3 d-flex justify-content-around xuhuong">
                                        <div class="card pb-2 HL-bd-hover-pink HL-bd-btn " style="width:80%;">
                                            <div class="img-sp">
                                                <img class=" HL-bd-radius-top"
                                                    src="../assets/img/gucci/sp1.webp" alt="Card image"
                                                    style="width:100%; height: 9vw;">
                                            </div>
                                            <div class="card-body p-0">
                                                <a href="#" class="card-title HL-link">
                                                    <h5>Giày GUCCI</h5>
                                                </a>
                                                <p class="card-text text-danger fs-5 fw-bold">1,000,000đ</p>
                                                <a href="#" class="btn HL-btn HL-bd-btn hvr-shutter-out-horizontal">Xem chi
                                                    tiết</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 pt-3 p-3 d-flex justify-content-around xuhuong">
                                        <div class="card pb-2 HL-bd-hover-pink HL-bd-btn " style="width:80%;">
                                            <div class="img-sp">
                                                <img class=" HL-bd-radius-top"
                                                    src="../assets/img/gucci/sp1.webp" alt="Card image"
                                                    style="width:100%; height: 9vw;">
                                            </div>
                                            <div class="card-body p-0">
                                                <a href="#" class="card-title HL-link">
                                                    <h5>Giày GUCCI</h5>
                                                </a>
                                                <p class="card-text text-danger fs-5 fw-bold">1,000,000đ</p>
                                                <a href="#" class="btn HL-btn HL-bd-btn hvr-shutter-out-horizontal">Xem chi
                                                    tiết</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            
                            
                        </div>

                        <!-- Left and right controls/icons -->
                        <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev" style="width: 5vw;">
                            
                            <i class="fas fa-chevron-circle-left fs-1"></i>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next" style="width: 5vw;">
                            <i class="fas fa-chevron-circle-right fs-1"></i>
                        </button>


                    </div>
                    </div>
                    
                
                </div>
            </div>
        </div>
    </div>
   
  
</body>
</html>