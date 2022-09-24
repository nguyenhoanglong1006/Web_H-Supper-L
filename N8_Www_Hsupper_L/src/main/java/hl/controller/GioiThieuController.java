package hl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class GioiThieuController {
	
	
	@GetMapping("/gioithieu")
	public String showLienHe() {
		return "gioi-thieu";
	}

}
