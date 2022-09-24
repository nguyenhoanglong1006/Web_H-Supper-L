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
  <link rel="stylesheet" href="../../resources/css/garenal.css">
    <link rel="stylesheet" href="../../resources/css/index.css">
<link rel="stylesheet"
	href="./assets/font/fontawesome-free-5.15.4/css/all.css">
<link rel="stylesheet" href="../../resources/css/dangki.css">
<link rel="stylesheet" href="../../resources/css/lib/hover.css">
<link rel="stylesheet" href="../../resources/css/admin/admin-sanpham.css">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div id="container" class="container-fluid">
        <div id="hearder" class="row">
            <div class="col-12">
                <div class="row bd-bottom ">
                    <div class="col-3 col-md-3 text-center div-logo">
                        
                            <img src="../../resources/assets/img/logo1.png" alt="logo" width="200">
                        
                      </div>
                      <div class="col-6">
                      
                      </div>
                      <div class="col-3  d-flex justify-content-center p-5">


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
                                href="${pageContext.request.contextPath}/admin">Tổng quan</a>
                        </li>
                        
                        <li class="nav-item  vpp-dropdown ">
                            <a class="nav-link text-white HL-link fs-5 hvr-underline-from-left "
                                href="${pageContext.request.contextPath}/admin-sanpham">Sản phẩm</a>

                        </li>
                        <li class="nav-item  vpp-dropdown ">
                            <a class="nav-link text-white HL-link fs-5 hvr-underline-from-left "
                             href="${pageContext.request.contextPath}/admin/nhanvien/">Nhân viên</a>

                        </li>
                        <li class="nav-item  vpp-dropdown ">
                            <a class="nav-link text-white HL-link fs-5 hvr-underline-from-left "
                             href="${pageContext.request.contextPath}/admin/khachhang/">Khách hàng</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white HL-link fs-5 hvr-underline-from-left"
                             href="${pageContext.request.contextPath}/">Website</a>
                        </li>

                    </ul>
                </div>

                    <div class="col-10 col-md-10">
                        <div class="mb-3 bd-bottom ps-2">
                            <i>
                               <a href="./trangchu.html" class="HL-link">Tổng quan </a>
                            </i>
                        </div>
                        <div class="col-8 col-md-6 pt-3">
                          <div class="input-group">
                              <input type="text" class="form-control" placeholder="Nhập tên nhân viên cần tìm"> 
                              <button type="button" class="btn btn-dark fw-bold hvr-bounce-to-right text-white">Tìm
                                 <i class="fas fa-search"></i>
                              </button>
                              </div>
                        </div>
                        <div class="row mt-2 p-2  m-0">
                          <div class="col-12 p-0">
                              <div class="row m-0 d-flex justify-content-between">
                                  <h4 class="col-4 p-0">Danh sách nhân viên</h4>
                                 
                                  <div class="modal fade " id="myModal">
                                      <div class="modal-dialog modal-lg ">
                                        <div class="modal-content ">
                                    
                                          <!-- Modal Header -->
                                          <div class="modal-header">
                                            <div class="w-100 d-flex justify-content-center ">
                                                <h4>Thông tin khách hàng</h4>
                                            </div>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                          </div>
                                          <div class="modal-body">
													<form:form action="capnhatkhachhang"
														modelAttribute="khachHang" method="POST" class="needs-validation">
														<form:input type="hidden" path="id" />
														<div class="row m-0 ">

															<div class="col-6 pr-3 ps-3 pe-5 vpp-bd-right">
																<label for="id-admin-TenKH" >Tên khách hàng: </label>
																<input type="text" id="id-admin-TenKH" name="tenKH"
																	class="form-control hl-bd-btn mt-1 mb-3"
																	placeholder="Nhập tên khách hàng" required />
																<div class="invalid-feedback">
                                                                        Tên khách hàng không có ký tự đặt biệt và số
                                                                    </div>

																<label for="id-admin-emailKH" >Email</label>
																<input type="text" id="id-admin-emailKH"
																	name="email" class="form-control  hl-bd-btn mt-1 mb-3"
																	placeholder="Nhập email khách hàng" required/>
																	<div class="invalid-feedback">
                                                                        Email có dạng abc@xyz
                                                                    </div>

																<label for="id-admin-gioiTinhKH">Giới tính</label>
																<select id="id-admin-gioiTinhKH"
																	name="gioiTinh"
																	class="form-control form-select hl-bd-btn mt-1 mb-3">
																	<option value="0">Nam</option>
																	<option value="1">Nữ</option>


																</select>

																<label for="id-admin-ngaySinhKH">Ngày sinh</label>
																<input type="date" id="id-admin-ngaySinhKH"
																	name="ngaySinh"
																	class="form-control hl-bd-btn mt-1 mb-3" 
																 required/>

																<label for="id-admin-ngayThamGia"
																	>Ngày tham gia</label>
																<input type="date" id="id-admin-ngayThamGia"
																	name="ngayThamGia"
																	class="form-control hl-bd-btn mt-1 mb-3"
																	 required/>

															</div>
															<div class="col-6 pe-2 ps-5">
																<label for="id-admin-SĐTKH">SĐT</label>
																<input type="text" id="id-admin-SĐTKH" name="sdt"
																	class="form-control  hl-bd-btn mt-1 mb-3"
																	placeholder="Số điện thoại" required/>
																	 <div class="invalid-feedback">
                                                                        Số điện thoại gồm 10 ký tự số
                                                                    </div>

																<label for="id-admin-diaChiKH">Địa chỉ</label>
																<textarea class="form-control vpp-bd-btn"
																	name="diaChi" id="id-admin-diaChiKH"
																 placeholder="Địa chỉ" required>
																</textarea>
																 <div class="invalid-feedback">
                                                                        Vui lòng điền địa chỉ chính xác
                                                                    </div>

																<div class="row m-0 mt-4 d-flex justify-content-center">
																	<div class="col-12 p-0 ">
																		<button type="submit"
																			class="btn hl-btn hvr-shutter-out-horizontal hl-btn don-da-duyet form-control">Lưu
																			thông tin</button>
																	</div>
																</div>
																<div class="row m-0 mt-4 d-flex justify-content-center">
																	<div class="col-12 p-0 ">
																		<button type="button"
																			class="btn hl-btn hvr-shutter-out-horizontal hl-btn  form-control"
																			data-bs-dismiss="modal">Huỷ</button>
																	</div>
																</div>

															</div>
														</div>
													</form:form>
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
                                                  <th>Tên Khách Hàng</th>
                                                  <th>Email</th>
                                                  <th>SĐT</th>
                                                  <th>Giới tính</th>
                                                  <th>Ngày Sinh</th>
                                                  <th>Địa chỉ </th>
                                                  <th>Chức Năng</th>


                                              </tr>
                                          </thead>
                                          <tbody>
                                             <c:forEach var="tempKH" items="${dsKhachHang}">
													<c:url var="updateLink" value="/khachhang/capnhatkhachhang">
														<c:param name="khachHangId" value="${tempKH.id}" />
													</c:url>

													<c:url var="deleteLink" value="/admin/khachhang/xoakhachhang">
														<c:param name="khachHangId" value="${tempKH.id}" />
													</c:url>
													<tr>
														<td>${tempKH.id }</td>
														<td>${tempKH.tenKH }</td>
														<td>${tempKH.email }</td>
														<td>${tempKH.sdt }</td>
														<td>${tempKH.gioiTinh }</td>
														<td>${tempKH.ngaySinh }</td>
														<td>${tempKH.diaChi }</td>

														<td>
															<div class="row m-0 d-flex justify-content-center">
																<div class="col-3 p-0 ms-1 me-1 ">
																	

																</div>
																<div class="col-3 p-0 me-4">
																	<button type="button" data-bs-toggle="modal"
																		data-bs-target="#myModal"
																		class="btn bg-white vpp-bd-1 form-control hvr-grow vpp-bd-color-blue"
																		title="Cập nhật khách hàng" id="btnupdate">
																		<i class="fas fa-pencil-alt fs-5 HL-bd-color-blue">Update</i>
																	</button>

																</div>

																


																<div class="col-3 p-0 me-2 ">
																<security:authorize access="hasRole('ADMIN')">
																	<button type="button"
																		class="btn bg-white vpp-bd-1 form-control hvr-grow vpp-bd-color-red"
																		title="Xóa khách hàng"
																		onclick=" if (!(confirm('Bạn có chắc muốn xóa khách hàng này không?'))) return false;
																		 window.location.href='${deleteLink}';">
																		<i class="fas fa-times fs-5  HL-bd-color-blue xuhuong">Xóa</i>
																	</button>
																</security:authorize>

																</div>
															</div>
														</td>

													</tr>

												</c:forEach>
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
   
  <script>

            $('#btnupdate ').click(function () {
                var id =$(this).closest('tr').find('td').eq(0).text();
                var ten =$(this).closest('tr').find('td').eq(1).text();
                var email =$(this).closest('tr').find('td').eq(2).text();
                var sdt =$(this).closest('tr').find('td').eq(3).text();
                var gioitinh =$(this).closest('tr').find('td').eq(4).text();
                var ngaysinh =$(this).closest('tr').find('td').eq(5).text();
                var diachi =$(this).closest('tr').find('td').eq(6).text();
                
                $('input[name="id"]').val(id);
                $('input[name="tenKH"]').val(ten);
                $('input[name="email"]').val(email);
                if(gioitinh=="Nam")
                	$('select[name="gioiTinh"]').val(0);
                else
                	$('select[name="gioiTinh"]').val(1);
                $('input[name="ngaySinh"]').val(ngaysinh);
                $('input[name="sdt"]').val(sdt);
                $('textarea[name="diaChi"]').val(diachi);
                        
            });
       
    </script>
</body>
</html>