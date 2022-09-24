package hl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import hl.entity.SanPham;
import hl.service.SanPhamService;



@Controller

public class TrangChuController {
	
	

	@Autowired
	private SanPhamService sanPhamService;
	

	
	
	@GetMapping("/")
    public String showHomePage(Model theModel) {
		
		List<SanPham> sanPhams = sanPhamService.getTatCaSanPham();
		theModel.addAttribute("dsSanPham", sanPhams);
		
        return "index";
    }
	
}
