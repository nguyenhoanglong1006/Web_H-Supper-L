package hl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hl.entity.SanPham;
import hl.service.SanPhamService;



@Controller
@RequestMapping("/chitietsanpham")
public class ChiTietSanPhamController {

	@Autowired
	private SanPhamService sanPhamService;
	
	@RequestMapping("/")
	public String getChiTietSanPham(Model theModel,@RequestParam("idSP") int id) {
		//Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		//String email = authentication.getName();
		//KhachHang khachHang = khachHangService.getKhachHangTheoEmail(email);
		//int soLuong =0;
		//GioHang gioHang = gioHangService.getGioHangTheoKhachHang(khachHang.getId());
		
		//soLuong = ctGioHangService.soLuongSanPham(gioHang.getId());
		
		
		SanPham sanPham=sanPhamService.getSanPhamTheoID(id);
		theModel.addAttribute("tempKhachHang", sanPham);
		//theModel.addAttribute("gioHang", gioHang);
		return "chitietsanpham";
	}
	
}
