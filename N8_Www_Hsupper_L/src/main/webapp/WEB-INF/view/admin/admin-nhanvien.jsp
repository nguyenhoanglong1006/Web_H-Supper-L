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

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div id="container" class="container-fluid">
        <div id="hearder" class="row">
            <div class="col-12">
                <div class="row bd-bottom ">
                    <div class="col-3 col-md-3 text-center div-logo">
                        
                            <img src="../../resources/assets/img/logo1.png" alt="logo" width="200">
                        
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
                             href="${pageContext.request.contextPath}/admin/nhanvien/">Nhân viên</a>

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

                    <div class="col-10 p-0">
					<div class=" ps-2 vpp-bg-light-dark ">
						<a href="#" class="vpp-link">Nhân viên</a>
					</div>

					<div class="container-fluid p-2">
						<div class="col-8 col-md-6 pt-3">
                          <div class="input-group">
                              <input type="text" class="form-control" placeholder="Nhập tên nhân viên cần tìm"> 
                              <button type="button" class="btn btn-dark fw-bold hvr-bounce-to-right text-white">Tìm
                                 <i class="fas fa-search"></i>
                              </button>
                              </div>
                        </div>

						

						<div class="row mt-2 p-2  m-0 hl-bd-1 hl-bd-radius">
							<div class="col-12 p-0">
								<div class="row m-0 d-flex justify-content-between">
									<h4 class="col-4 p-0">Danh sách nhân viên</h4>
									<button type="button"
										class=" col-2 btn hvr-shutter-out-horizontal hl-btn don-da-duyet"
										data-bs-toggle="modal" data-bs-target="#myModal">Thêm
									</button>
									<div class="modal fade " id="myModal">
										<div class="modal-dialog modal-lg ">
											<div class="modal-content hl-bd-1">

												<!-- Modal Header -->
												<div class="modal-header">
													<div class="w-100 d-flex justify-content-center ">
														<h4>Thông tin nhân viên</h4>
													</div>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal"></button>
												</div>

												<div class="modal-body">
													<c:url var="saveUrl" value="/admin/nhanvien/saveNV" />
													<form:form action="${saveUrl}" modelAttribute="nhanvien"
														method="POST" cssClass="needs-validation" name="myform">

														<div class="row m-0 ">
															<div class="col-6 pr-3 ps-3 pe-5 vpp-bd-right">
																<div>
																	<label for="id-admin-TenNV">Tên nhân viên:</label> <input
																		name="id" type="hidden" value="0"> <input
																		name="tenNV" type="text" id="id-admin-TenNV"
																		class="form-control  hl-bd-btn mt-1 mb-3"
																		placeholder="Nhập tên nhân viên" required>
																	<div class="invalid-feedback">Vui lòng điền tên
																		nhân viên. Tên nhân viên không có ký tự đặt biệt và số
																	</div>
																</div>
																<div>
																	<label for="id-admin-email">Email:</label> <input
																		name="email" type="email" id="id-admin-email"
																		class="form-control  hl-bd-btn mt-1 mb-3"
																		placeholder="Nhập email" required>
																	<div class="invalid-feedback">Vui lòng điền email
																	</div>
																</div>
																<label for="id-admin-chucVu">Chức vụ:</label> <select
																	name="chucVu" id="id-admin-chucVu"
																	class="form-control form-select hl-bd-btn mt-1 mb-3">
																	<option value="0">Nhân viên</option>
																	<option value="1">Quản lý</option>


																</select> <label for="id-admin-gioiTinh">Giới tính:</label> <select
																	name="gioiTinh" id="id-admin-gioiTinh"
																	class="form-control form-select hl-bd-btn mt-1 mb-3">
																	<option value="0">Nam</option>
																	<option value="1">Nữ</option>


																</select>
																<div>
																	<label for="id-admin-ngaySinh">Ngày sinh:</label> <input
																		name="ngaySinh" type="date" id="id-admin-ngaySinh"
																		class="form-control hl-bd-btn mt-1 mb-3" required>
																	<div class="invalid-feedback">Vui lòng chọn ngày
																		sinh. Từ 18 tuổi trở lên</div>
																</div>

																<div>
																	<label for="id-admin-SĐT">SĐT:</label> <input
																		name="sdt" type="text" id="id-admin-SĐT"
																		class="form-control  hl-bd-btn mt-1 mb-3" required>
																	<div class="invalid-feedback">Vui lòng nhập số
																		điện thoại. Số điện thoại gồm 10 ký tự số</div>
																</div>
																<div>
																	<label for="id-admin-diaChi">Địa chỉ:</label>
																	<textarea name="diaChi" class="form-control hl-bd-btn"
																		id="id-admin-diaChi" name="admin-diaChi"
																		placeholder="Địa chỉ" required></textarea>
																	<div class="invalid-feedback">Vui lòng điền địa
																		chỉ</div>
																</div>


															</div>
															<div class="col-6 pe-2 ps-5"">


																<div class="row m-0 mt-4 d-flex justify-content-center">
																	<div class="col-12 p-0 ">
																		<button type="submit"
																			class="btn hl-btn hvr-shutter-out-horizontal hl-btn don-da-duyet form-control"
																			id="btnluuthongtin">Lưu thông tin</button>
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

										<table class="table table-striped text-center" id="myTable">
											<thead>
												<tr>
													<th>Mã NV</th>
													<th>Tên nhân viên</th>
													<th>Email</th>
													<th>Chức vụ</th>
													<th>Giới tính</th>
													<th>Ngày sinh</th>
													<th>SĐT</th>
													<th>Địa chỉ</th>
													<th>Trạng thái</th>
													<th>Chức năng</th>



												</tr>
											</thead>
											<tbody>
												<c:forEach var="nhanvien" items="${dsNV }">
													<tr>
														<td>${nhanvien.id }</td>
														<td>${nhanvien.tenNV }</td>
														<td>${nhanvien.email }</td>
														<td>${nhanvien.chucVu }</td>
														<td>${nhanvien.gioiTinh }</td>
														<td>${nhanvien.ngaySinh }</td>
														<td class="">${nhanvien.sdt }</td>
														<td>${nhanvien.diaChi }</td>
														<td>${nhanvien.trangThai }</td>
														<td><c:url var="deleteLink"
																value="/admin/nhanvien/delete">
																<c:param name="nhanvienID" value="${nhanvien.id}" />
															</c:url> <c:url var="updateLink"
																value="/admin/nhanvien/showFormForUpdate">
																<c:param name="nhanvienID" value="${nhanvien.id}" />
															</c:url>
															<div class="row m-0 d-flex justify-content-center">

																<div class="col-4 p-0 me-1">
																	<button id="btnupdate" type="button"
																		class=" btn bg-white hl-bd-1 form-control hvr-grow hl-bd-color-red"
																		data-bs-toggle="modal" data-bs-target="#myModal"
																		title="Chi tiết sản phẩm">
																		<i class="fas fa-pencil-alt fs-5 hl-text-blue"></i>
																	</button>

																</div>
																<div class="col-4 p-0 me-1 ">
																	<security:authorize
																		access="hasAnyRole('ADMIN')">
																		<button
																			onclick=" if (!(confirm('Bạn muốn xóa nhân viên này?'))) return false; else window.location.href='${deleteLink}';"
																			type="button"
																			class="btn bg-white hl-bd-1 form-control hvr-grow hl-bd-color-red"
																			title="Chi tiết sản phẩm">
																			<i class="fas fa-times fs-5  vpp-text-red"></i>
																		</button>
																	</security:authorize>
																</div>
															</div></td>

													</tr>

												</c:forEach>

											</tbody>

										</table>



									</div>

								</div>





							</div>
						</div>


					</div>







					<div class="row m-0 p-2 mt-1 text-center hl-bg-light-dark">
						<p>
							Nhóm 8 - <span></span>
						</p>

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