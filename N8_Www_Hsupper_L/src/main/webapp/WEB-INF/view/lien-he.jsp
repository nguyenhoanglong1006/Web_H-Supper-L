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
					<p class="col-6 mb-1 text-white">12 Nguyễn Văn Bảo,P.4, Gò Vấp,
						TP.Hồ Chí Minh</p>
					<div class="col-6 mb-0 d-flex flex-row-reverse">
						<a href="https://github.com/nguyenhoanglong1006"
							class="fab fa-github connect-logo text-white h4"></a>
					</div>
				</div>
				<div class="row p-3   d-flex align-items-center">
					<a href="#" class="col-2  text-center"> <img
						src="./resources/assets/img/logo1.png" alt="logo" width="100">
					</a>
					<div class="col-6 d-flex justify-content-center h-75">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Nhập tên sản phẩm cần tìm">
							<button type="button"
								class="btn btn-dark fw-bold hvr-bounce-to-right text-white   ">
								Tìm <i class="fas fa-search"></i>
							</button>
						</div>
					</div>
					<div class="col-4  ">
						<div class="row">
							<div class="col-4 d-flex justify-content-end">
								<button type="button" class="btn fs-1 ms-2">
									<i class="fas fa-user-alt text-black"></i>
								</button>
							</div>
							<div class="col-3  p-3">


								<c:choose>
									<c:when
										test="${pageContext.request.userPrincipal.name != null}">


										<form:form action="${pageContext.request.contextPath}/logout"
											method="POST">
											<input type="submit" class="btn  btn-danger"
												value="Đăng xuất">
										</form:form>
									</c:when>
									<c:otherwise>
										<a href="${pageContext.request.contextPath}/login"
											class="nav-link text-link fw-bold hvr-underline-from-left">Đăng
											nhập</a>
										<br>
										<a href="${pageContext.request.contextPath}/dangky/"
											class="nav-link text-link fw-bold hvr-underline-from-left">
											Đăng ký</a>


									</c:otherwise>
								</c:choose>


							</div>
							<div class="col-5 d-flex justify-content-center p-0">
								<a href="" id="gioHang" class="btn fs-2 ">
									<div class="">
										<button type="button"
											class="btn btn-dark fs-5 text-white hvr-bounce-to-right ">
											Giỏ hàng <i class="fas fa-shopping-cart text-white ">
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
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
							<i class="fas fa-bars text-LT"></i>
						</button>

						<div class="collapse navbar-collapse justify-content-center "
							id="collapsibleNavbar">
							<ul class="navbar-nav">
								<li class="nav-item "><a
									class="nav-link text-black fs-5 bd-link "
									href="${pageContext.request.contextPath}/">Trang chủ</a></li>
								<li class="nav-item "><a
									class="nav-link text-black fs-5 bd-link"
									href="${pageContext.request.contextPath}/sanpham/">Sản phẩm</a>
									<div class="dropdown">
										<div class="dropdown-menu bg-HL">
											<a class="dropdown-item hvr-bounce-to-right" href="">Vans</a>
											<a class="dropdown-item hvr-bounce-to-right" href="">GUCCI</a>
											<a class="dropdown-item hvr-bounce-to-right" href="">Adidas</a>
											<a class="dropdown-item hvr-bounce-to-right" href="">Nike</a>
										</div>
									</div></li>
								<li class="nav-item"><a
									class="nav-link text-black fs-5 bd-link"
									href="${pageContext.request.contextPath}/gioithieu">Giới
										thiệu</a></li>
								<li class="nav-item"><a
									class="nav-link text-black fs-5 bd-link"
									href="${pageContext.request.contextPath}/lienhe">Liên hệ</a></li>
								<security:authorize access="hasAnyRole('EMPLOYEE','ADMIN')">
									<li class="nav-item"><a
										class="nav-link text-black fs-5 bd-link"
										href="${pageContext.request.contextPath}/admin/khachhang/">Quản
											lý</a></li>

								</security:authorize>
							</ul>
						</div>
					</nav>
				</div>

			</div>
		</div>
    <div class="container  pt-1">
    <div id="content" class="row d-flex justify-content-center p-2">
        <div class="slider row m=0">
            <div class="col-12">
                <div class="carousel-item active vpp-bd-btn">
                    <a href="https://www.google.com/maps/place/12+Nguy%E1%BB%85n+V%C4%83n+B%E1%BA%A3o,+Ph%C6%B0%E1%BB%9Dng+4,+H%E1%BB%93+Ch%C3%AD+Minh,+Th%C3%A0nh+ph%E1%BB%91+H%E1%BB%93+Ch%C3%AD+Minh,+Vietnam/@10.8222053,106.6853107,17z/data=!4m13!1m7!3m6!1s0x317528e5496d03cf:0xa5b8e7395ec636b9!2zMTIgTmd1eeG7hW4gVsSDbiBC4bqjbywgUGjGsOG7nW5nIDQsIEjhu5MgQ2jDrSBNaW5oLCBUaMOgbmggcGjhu5EgSOG7kyBDaMOtIE1pbmgsIFZpZXRuYW0!3b1!8m2!3d10.8222053!4d106.6874994!3m4!1s0x317528e5496d03cf:0xa5b8e7395ec636b9!8m2!3d10.8222053!4d106.6874994https://www.google.com/maps/place/12+Nguy%E1%BB%85n+V%C4%83n+B%E1%BA%A3o,+Ph%C6%B0%E1%BB%9Dng+4,+H%E1%BB%93+Ch%C3%AD+Minh,+Th%C3%A0nh+ph%E1%BB%91+H%E1%BB%93+Ch%C3%AD+Minh,+Vietnam/@10.8222053,106.6853107,17z/data=!3m1!4b1!4m5!3m4!1s0x317528e5496d03cf:0xa5b8e7395ec636b9!8m2!3d10.8222053!4d106.6874994">
                    <img src="./resources/assets/img/ggmap.png" alt="imgmap" class="d-block w-100" style="height: 60vh;">
                    </a>
                </div>
            </div>
            <div class="row p-3 ps-5">
                
            </div>
        </div>
        <div class="row p-3 ps-5">
            <div class="col-4">
                <div class=" HL-text-dark">
                    <p class="fw-bold" style="text-align: center;">Địa chỉ</p>
                    <p style="text-align: center;"><i class="fas fa-location-arrow me-2"></i>Địa chỉ: 12 Nguyễn Văn Bảo, P.4, Gò
                        Vấp, TP. HCM</p>
                </div>
            </div>
            <div class="col-4">
                <div class=" HL-text-dark">
                    <p class="fw-bold" style="text-align: center;">Số điện thoại</p>
                    <p style="text-align: center;"><i class="fas fa-phone me-2"></i>099999999</p>

                </div>
            </div>
            <div class="col-4">
                <div class=" HL-text-dark">
                    <p class="fw-bold" style="text-align: center;">Email</p>
                    <p style="text-align: center;"><i class="fas fa-mail-bulk me-2"></i>H_super_L@gmail.com</p>

                </div>
            </div>
        </div>
        <div class="row p-0 ps-3">
           
            <h3 class="fw-bold" style="text-align: center;">Giải đáp thắc mắc</h3>
            <div class="row p-3 ps-5">
                <div class="col-2">
                </div>
               
                <div class="col-4 d-flex justify-content-center h-75 ">
                    <div class="input-group w-100 HL-bd-btn ">
                        <input type="text" class="form-control HL-bd-radius " placeholder="Họ và tên">
                    </div>
                </div>
                <div class="col-4 d-flex justify-content-center h-75">
                    <div class="input-group w-100 HL-bd-btn ">
                        <input type="text" class="form-control HL-bd-radius " placeholder="Email">
                    </div>
                </div>
            </div>
            
            
        </div>

        <div class="row p-4 ps-5">
            <div class="col-2">
            </div>
           
            <div class="col-4 d-flex justify-content-center h-75">
                <div class="input-group w-100 HL-bd-btn ">
                    <input type="text" class="form-control HL-bd-radius " placeholder="Số điện thoại">
                </div>
            </div>
            <div class="col-4 d-flex justify-content-center h-75">
                <div class="input-group w-100 HL-bd-btn ">
                    <input type="text" class="form-control HL-bd-radius " placeholder="Địa chỉ">
                </div>
            </div>
        </div>

        <div class="row p-3 ps-5">
            <div class="col-2">
            </div>
            <div class="col-8 d-flex justify-content-center">
                <div class="input-group w-100 HL-bd-btn" style="height: 20vh;">
                   <textarea  class="form-control" placeholder="Ghi chú..."></textarea>
                </div>
            </div>
        </div>

        <div class="row p-3 ps-5">
            <div class="col-5">
            </div>
        <div class="col-2 d-flex justify-content-around">
            <button type="button" class="btn HL-bd-btn  hvr-grow hvr-shutter-out-horizontal form-control">
                Gửi ngay
            </button>
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