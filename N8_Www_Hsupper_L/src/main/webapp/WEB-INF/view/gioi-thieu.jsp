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
  <title>H-supper-L(Giới thiệu)</title>
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
    <div class="container  pt-3">
    <div id="content" class="row ">
        <div class="row">
            <div class="col-6 p-5">
              <div class="d-flex justify-content-start w-100">
                <!-- Carousel -->
                <div id="slide" class="carousel slide d-flex" data-bs-ride="carousel">
    
                  <!-- Indicators/dots -->
                  <div class="carousel-indicators">
                    <button type="button" data-bs-target="#slide" data-bs-slide-to="0" class="active"></button>
                    <button type="button" data-bs-target="#slide" data-bs-slide-to="1"></button>
                    <button type="button" data-bs-target="#slide" data-bs-slide-to="2"></button>
                  </div>
    
                  <!-- The slideshow/carousel -->
                  <div class="carousel-inner " style="height: 60vh; max-width: 900px;">
                    <div class="carousel-item active">
                      <img src="./resources/assets/img/Vans.png" alt="1" class="d-block"
                        style="width:100%; height: 60vh;">
                      <div class="carousel-caption">
    
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img src="./resources/assets/img/gucci.jpg" alt="2" class="d-block"
                        style="width:100%;height: 60vh;">
                      <div class="carousel-caption">
    
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img src="./resources/assets/img/nike.jpg" alt="3" class="d-block"
                        style="width:100%;height: 60vh;">
                      <div class="carousel-caption">
    
                      </div>
                    </div>
                  </div>
    
                  <!-- Left and right controls/icons -->
                  <button class="carousel-control-prev" type="button" data-bs-target="#slide" data-bs-slide="prev">
                    <i class="fas fa-angle-left text-LT fs-1"></i>
                  </button>
                  <button class="carousel-control-next " type="button" data-bs-target="#slide" data-bs-slide="next">
                    <i class="fas fa-angle-right text-LT fs-1"></i>
                  </button>
                </div>
              </div>
            </div>
            <div class="col-6  p-5">
                <h1>Lịch sử phát triển</h1>
                <p class="text-justify ">Năm 1921, Guccio Gucci mở một công ty sản xuất đồ da và một cửa hàng nhỏ ở quê nhà Florence, chuyên bán vali và vali. 
                    Với nhiều năm kinh nghiệm làm việc tại khách sạn Savoy ở London, anh đam mê những sản phẩm tinh tế và có tính thẩm mỹ cao của giới quý tộc Anh,
                     và đã giới thiệu sự tinh tế này tại Ý thông qua một sản phẩm da do những người thợ thủ công thiết kế và sản xuất. 
                     Kỹ thuật thủ công tinh tế và khéo léo của những người thợ thủ công vùng Tuscan.
                     <br>
                     Chỉ trong vài năm, thương hiệu sản phẩm của Gucci đã gặt hái được nhiều thành công, thu hút được nhiều khách hàng khó tính. Các sản phẩm của Gucci 
                     gia nhập thị trường bao gồm túi xách, vali, găng tay, giày dép và thắt lưng dần trở 
                     thành thần tượng trong ngành thời trang, được đánh giá cao về tính thẩm mỹ và sự sáng tạo.
                     <br>
                     Vào những năm 1950, dải ruy băng thương hiệu của Gucci được lấy cảm hứng từ yên ngựa (ngựa) và được thể hiện bằng các sọc xanh lục – đỏ – xanh lục. Nó tiếp tục được coi là một thành công và âm thanh lớn được coi là sự nhận biết phổ biến nhất của sản phẩm. các dấu hiệu. Với việc mở các cửa hàng ở Milan và New York, Gucci bắt đầu thiết lập hình ảnh toàn cầu của mình như một biểu tượng của các sản phẩm sang trọng và hiện đại. Guccio Gucci qua đời vào năm 1953, và các con trai của ông là Aldo, Vasco, Ugo và Rodolfo tiếp bước cha mình.
                     <br>
                     Vào những năm 1960, Gucci đã giới thiệu nhiều sản phẩm mới, đây được coi là bước đột phá vào thời điểm đó. Những sản phẩm này đã trở thành những thiết kế nổi tiếng chịu được thử thách của thời gian. Trong những năm tiếp theo, thương hiệu tiếp tục mở rộng ra ngoài Ý và thiết lập các thị trường mục tiêu mới ở châu Á, theo mong muốn của con trai cả của Guccio Gucci, Aldo Gucci. Các cửa hàng ở Tokyo và Hong Kong đã ra đời vào thời điểm này.
      
              </p>
    
            </div>
          </div>
    
          
        </div>
        <div class="row">
          <div class="col-12">
    
            <div class="text-center text-LT mb-4">
              <h1>Thành viên</h1>
            </div>
            <div class="row d-flex justify-content-around ">
             
                <div class="col-3  p-3 d-flex justify-content-around xuhuong">
                    <div class="card pb-2 HL-bd-hover-pink HL-bd-btn " style="width:80%; height: 22vw;">
                        <div class="img-sp">
                            <img class=" HL-bd-radius-top"
                                src="./resources/assets/img/user.png" alt="Card image"
                                style="width:100%; height: 15vw;">
                        </div>
                        <div class="card-body p-0">
                            <a href="#" class="card-title HL-link d-flex justify-content-center">
                                <h5>Nguyễn Phạm Hoàng Long</h5>
                            </a>
                            <p class="card-text d-flex justify-content-center fw-bold">Chức vụ : Quản lý</p>
                            <a href="#" class="btn HL-btn HL-bd-btn hvr-shutter-out-horizontal d-flex justify-content-center">Xem chi
                                tiết</a>
                        </div>
                    </div>
                </div>
    
                <div class="col-3  p-3 d-flex justify-content-around xuhuong">
                    <div class="card pb-2 HL-bd-hover-pink HL-bd-btn " style="width:80%; height: 22vw;">
                        <div class="img-sp">
                            <img class=" HL-bd-radius-top"
                                src="./resources/assets/img/user.png" alt="Card image"
                                style="width:100%; height: 15vw;">
                        </div>
                        <div class="card-body p-0">
                            <a href="#" class="card-title HL-link d-flex justify-content-center">
                                <h5>Nguyễn Phạm Hoàng Long</h5>
                            </a>
                            <p class="card-text d-flex justify-content-center fw-bold">Chức vụ : Nhân viên</p>
                            <a href="#" class="btn HL-btn HL-bd-btn hvr-shutter-out-horizontal d-flex justify-content-center">Xem chi
                                tiết</a>
                        </div>
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