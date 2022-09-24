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
  <title>H-supper-L (Liên hệ)</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="./resources/css/garenal.css">
  <link rel="stylesheet" href="./resources/css/index.css">
  <link rel="stylesheet" href="./resources/css/chitietsanpham.css">
  <link rel="stylesheet" href="../assets/font/fontawesome-free-5.15.4/css/all.css">
  <link rel="stylesheet" href="../css/admin/admin-sanpham.css">
  <link rel="stylesheet" href="./resources/css/lib/hover.css">
  
  <script src="../js/index.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
  <div id="container" class="container-fluid">
    <div id="header" class="row">
      <div class="col-12">
        <div class="row  pt-1 bd-bottom bg-LT">
          <p class="col-6 mb-1 text-white">12 Nguyễn Văn Bảo,P.4, Gò Vấp, TP.Hồ Chí Minh</p>
          <div class="col-6 mb-0 d-flex flex-row-reverse">
            <a href="https://https://github.com/nguyenhoanglong1006" class="fab fa-github connect-logo text-white h4"></a>
          </div>
        </div>
        <div class="row p-3   d-flex align-items-center">
          <a href="#" class="col-2  text-center">
              <img src="./resources/assets/img/logo1.png" alt="logo" width="100">
          </a>
          <div class="col-6 d-flex justify-content-center h-75">
              <div class="input-group">
                  <input type="text" class="form-control" placeholder="Nhập tên sản phẩm cần tìm"> 
                  <button type="button" class="btn btn-dark fw-bold hvr-bounce-to-right text-white   ">Tìm
                    <i class="fas fa-search"></i>
                  </button>
                </div>
          </div>
          <div class="col-4  ">
              <div class="row">
                <div class="col-4 d-flex justify-content-end">
                  <button type="button" class="btn fs-1 ms-2"><i class="fas fa-user-alt text-black"></i></button>
                </div>
                <div class="col-3  ">
                  <a href="" class="nav-link text-link fw-bold hvr-underline-from-left">Đăng nhập</a>
                  <a href="" class="nav-link text-link fw-bold hvr-underline-from-left">Đăng kí</a>
                </div>
                <div class="col-5 d-flex justify-content-center p-0">
                  <a href="" id="gioHang" class="btn fs-1 "> 
                    <div class="">
                      <button type="button" class="btn btn-dark fs-5 text-white hvr-bounce-to-right ">Giỏ hàng
                          <i class="fas fa-shopping-cart text-white ">
                             <div class="so-Luong-GioHang">
                               <p id="soLuongGioHang" class="text-white">0</p>
                             </div> 
                          </i>
                      </button>
                   </div>
                  </a>
                </div>
              </div>
            </div>


      </div>
        <div class="row col bg-HL ">
          
          <nav class="navbar navbar-expand-sm ">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
              <i class="fas fa-bars text-LT"></i>
            </button>

            <div class="collapse navbar-collapse justify-content-center " id="collapsibleNavbar">
              <ul class="navbar-nav">
                <li class="nav-item ">
                  <a class="nav-link text-black fs-5 bd-link " href="../html/trangchu.html">Trang chủ</a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link text-black fs-5 bd-link" href="">Sản phẩm</a>
                  <div class="dropdown">
                    <div class="dropdown-menu bg-HL" >
                        <a class="dropdown-item hvr-bounce-to-right" href="">Vans</a>
                        <a class="dropdown-item hvr-bounce-to-right" href="">GUCCI</a>
                        <a class="dropdown-item hvr-bounce-to-right" href="">Adidas</a>
                        <a class="dropdown-item hvr-bounce-to-right" href="">Nike</a>
                    </div>
                </div>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-black fs-5 bd-link" href="../html/gioithieu.html">Giới thiệu</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link text-black fs-5 bd-link" href="../html/lienhe.html">Liên hệ</a>
                </li>
              </ul>
            </div>
          </nav>
        </div>

      </div>
    </div>
    <div class="container  pt-1">
    <div id="content" class=" p-5 ps-5 pe-5">
        <div class="row">
            <div class="col-6 p-5 pt-0">
                <div id="chiTietSP" class="carousel slide bd-img" data-bs-ride="carousel">


                    <div class="carousel-inner ">
                        <div class="carousel-item active ">
                            <img src="./resources/assets/img/vans/sp1.jpg" alt="img" class="d-block"
                                style="width:100%;height:350px">
                        </div>
                        <div class="carousel-item ">
                            <img src="./resources/assets/img/vans/sp2.png" alt="img" class="d-block"
                                style="width:100%;height:350px">
                        </div>
                       
                        
                    </div>



                    <button class="carousel-control-prev" type="button" data-bs-target="#chiTietSP"
                        data-bs-slide="prev">
                        <i class="fas fa-chevron-circle-left vpp-text-pink fs-1"></i>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#chiTietSP"
                        data-bs-slide="next">
                        <i class="fas fa-chevron-circle-right vpp-text-pink fs-1"></i>
                    </button>
                </div>
                <div class="row d-flex justify-content-center mt-2 ">

                    <img src="./resources/assets/img/vans/sp1.jpg" alt="img" style="width:24%"
                        data-bs-target="#chiTietSP" data-bs-slide-to="0" class="active bd-img ">
                    <img src="./resources/assets/img/vans/sp2.png" alt="img" style="width:24%"
                        data-bs-target="#chiTietSP" data-bs-slide-to="1" class="bd-img">
                   

                </div>

            </div>
            <div class="col-6">

                <h4>Giày Vans Old Skool Skate</h4>
                <h3 class="text-danger fw-bold mt-3"> 2.200.000</h3>
                <p class="text-justify ">THÔNG TIN SẢN PHẨM Thương hiệu Vans Xuất xứ thương hiệu Mỹ Sản xuất tại Việt Nam ...
                </p>
                <div class="col-3 ">
                    <h5>Số lượng:</h5>
                    <form action="#">
                        <div class="input-group ">
                            <button type="button" class=" btn btn-danger me-2 vpp-btn-sp ">
                                <i class="fas fa-minus"></i>
                            </button>
                            <input type="text" class="form-control text-center p-0" value="0">
                            <button type="button" class="btn btn-success ms-2 vpp-btn-sp ">
                                <i class="fas fa-plus"></i>
                            </button>
                        </div>

                    </form>

                </div>
                <br>
                <P class="text-justify fw-bold " >Thương hiệu: Giày Vans</P>
                <button type="button" class="btn col-4   mt-4 border-warning btn-danger">Mua ngay</button>
                <button type="button" class="btn col-4  btn-success mt-4">Thêm vào giỏ</button>
            </div>
        </div>
        <div class="row">
            <div class=" mt-4 text-center">
                <h4 class="text-center HL-text-dark">Mô tả</h4>
                <div class="d-flex justify-content-around mt-2 mb-2">
                    <span class="HL-line-pink"></span>
                </div>
                <div id="moTa" class="row mt-4 mb-5">
                    Là một dòng cao cấp của hãng Vans, Vans Vault Old Skool có những cải tiến về chất lượng, có độ êm hơn, 
                    phần đế chắc chắn và dày hơn so với những dòng khác. Xung quanh đế cũng không có viền đen thường thấy trên các mẫu giày Vans tạo cảm giác giúp người đi nhìn cao hơn.
                    <img src="./resources/assets/img/vans/sp1.jpg" alt="img" style="width:100% ;height: 750px" 
                    data-bs-target="#chiTietSP" data-bs-slide-to="1" class="bd-img">
                </div>

            </div>
        </div>
        <div class="row">
            <div class=" mt-4 text-center">
                <h4 class="text-center vpp-text-dark">Chi tiết sản phẩm</h4>
                <div class="d-flex justify-content-around mt-2 mb-2">
                    <span class="HL-line-pink"> </span>
                </div>
                <div id="chiTietSanPham" class="row mt-4 mb-5">
                    <form action="" class="justify-content-center">


                    </form>

                </div>

            </div>
        </div>
    </div>
      
    </div>
    </div>
    <div id="footer " class="row">


      <div class=" col-12 pt-3 pb-4 bd-bottom bg-LT">
        <div>
          <h1 class="text-LT h-200 fw-normal p-3 logo">L-super-H</h1>
        </div>
        <div class="row ">
          <div class="col-4 ps-5">
            <p class="fw-bold h5 mb-1 text-white ">Thông tin liên hệ</p>
            <a class=" text-white mb-1" href="#"><i class="fas fa-user-alt"></i> 12 Nguyễn Văn Bảo , Phường 4 , Gò Vấp ,
              TP HCM</a>
            <br>
            <a class=" mb-1 text-white" href="#"><i class="fas fa-phone"></i> 0915888868</a> <br>
            <a class=" mb-1 text-white" href="#"><i class="fas fa-comment-alt"></i> H_super_L@gmail.com</a>
          </div>
          <div class=" col-4 ps-5">
            <p class="fw-bold h5 mb-1 text-white ">Liên kết</p>
            <a class=" mb-1 text-white" href="#">Phụ kiện</a>
            <br>
            <a class=" mb-1 text-white" href="#">Liên hệ</a>
            <br>
            <a class=" mb-1 text-white" href="#">Giới thiệu</a>
          </div>
          <div class=" col-4 ps-5">
            <p class="fw-bold h5 mb-1 text-white"> Hỗ trợ</p>
            <a class=" mb-1 text-white" href="#">Hướng dẫn mua hàng</a>
            <br>
            <a class=" mb-1 text-white" href="#">Hướng dẫn thanh toán</a>
            <br>
            <a class=" mb-1 text-white" href="#">Chính sách bảo hành</a><br>
            <a class=" mb-1 text-white" href="#">Tư vấn khách hàng</a>
          </div>
        </div>
      </div>
    </div>



  
</body>

</html>