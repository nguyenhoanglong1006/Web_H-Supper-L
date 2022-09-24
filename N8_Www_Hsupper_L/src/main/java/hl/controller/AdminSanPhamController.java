package hl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class AdminSanPhamController {
	@GetMapping("/admin-sanpham")
	public String showLienHe() {
		return "admin/admin-sanpham";
	}

}
