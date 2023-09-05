package com.ehr.web.salary;

import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SalaryController {

	@Autowired
	private SalaryService salaryService;

	@GetMapping("/salary")
	public String salary(@RequestParam Map<String, Object> map, Model model) {

		Map<String, Object> elist = salaryService.elist(map);
		model.addAttribute("elist", elist);

		Map<String, Object> slist = salaryService.slist(map);
		model.addAttribute("slist", slist);

		return "/salary";
	}

	@PostMapping("/salary")
	public String searchSal(@RequestParam Map<String, Object> map, Model model) {

		// System.out.println(map);
		Map<String, Object> searchSal = salaryService.searchSal(map);
		model.addAttribute("elist", searchSal);

		Map<String, Object> searchSal2 = salaryService.searchSal2(map);
		model.addAttribute("slist", searchSal2);

		return "/salary";
	}

	@ResponseBody
	@PostMapping("/searchSal")
	public String searchSal(@RequestParam Map<String, Object> map) {

		System.out.println(map);
		Map<String, Object> searchSal = salaryService.searchSal(map);
		Map<String, Object> searchSal2 = salaryService.searchSal(map);

		JSONObject json = new JSONObject();
		json.put("elist", searchSal);
		json.put("slist", searchSal2);

		return json.toString();
	}

}