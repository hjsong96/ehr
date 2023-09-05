package com.ehr.web.attend;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AttendController {

	@Autowired
	private AttendService attendService;
	
	@GetMapping("/attend")
	public String attend() {
		
		return "attend";
	}

	@PostMapping("/attend")
	public String attend(HttpServletRequest request) {
		
		
		return "";
	}
	
}
